library(tidyverse)
library(fixest)
library(randomForest)
library(grf)
library(patchwork)
# devtools::install_github("araastat/reprtree")
library(reprtree)

# ------------------------------------------------------------------------------
# Primer
# ------------------------------------------------------------------------------

# NLSY -------------------------------------------------------------------------

nlsy <- read_csv("https://github.com/Mixtape-Sessions/Heterogeneous-Effects/raw/main/Labs/data/nlsy97.csv")

# Drop rows with missing values
nlsy <- na.omit(nlsy)

# OLS Regression
feols(
  annualearnings ~ 1 + i(privatecollege, ref = 0),
  data = nlsy,
  vcov = "HC1"
)

# OLS Regression with controls
feols(
  annualearnings ~ 1 + i(privatecollege, ref = 0) + i(dadcollege) + i(momcollege) + asvab,
  data = nlsy,
  vcov = "HC1"
)


# Prediction Primer ------------------------------------------------------------

# National JPTA Study
jtpahet <- read_csv("https://github.com/Mixtape-Sessions/Heterogeneous-Effects/raw/main/Labs/data/jtpahet.csv")

jtpahet$foundjob <- factor(
  jtpahet$foundjob, levels = c(0, 1),
  labels = c("Did not find a job", "Did find a job")
)

# Raw data
ggplot() +
  geom_point(
    aes(
      x = educ, y = priorearn, 
      shape = foundjob, color = foundjob
    ),
    data = jtpahet,
    size = 2
  ) +
  theme_minimal(base_size = 16)

## Estimate and Plot Single Tree -----------------------------------------------

# Decision tree with `ntree = 1`
rf = randomForest::randomForest(
    foundjob ~ educ + priorearn,
    data = jtpahet, 
    ntree = 5
  )

# Plot 2d Separator
# https://stackoverflow.com/questions/74879060/how-to-make-decision-boundary-plots-from-randomforest-in-r
grid <- expand.grid(
  educ = 7:18,
  priorearn = seq(0, 60000, length.out = 10000)
)
grid = as_tibble(grid)

# `predict.all = TRUE` predicts each tree seperately
predictions = predict(rf, grid, predict.all = TRUE)

# First tree
grid$foundjob_hat_tree1 <- predictions$individual[, 1]

# 2d separator plot
ggplot(grid) + 
  geom_raster(
    aes(x = educ, y = priorearn, fill = foundjob_hat_tree1),
    alpha = 0.5
  ) +
  geom_point(
    aes(
      x = educ, y = priorearn, 
      shape = foundjob, color = foundjob
    ),
    data = jtpahet,
    size = 2
  ) +
  theme_minimal(base_size = 16)


## Plot random forest ----------------------------------------------------------

forest_plot <- NULL

# Each Tree
for (i in 1:5) {
  grid$foundjob_hat <- predictions$individual[, 1]

  # 2d separator plot
  sep_plot <- ggplot(grid) + 
    geom_raster(
      aes(x = educ, y = priorearn, fill = foundjob_hat),
      alpha = 0.5,
      show.legend = FALSE
    ) +
    geom_point(
      aes(
        x = educ, y = priorearn, 
        shape = foundjob, color = foundjob
      ),
      data = jtpahet,
      size = 2,
      show.legend = FALSE
    ) +
    labs(title = "Random Forest", x = NULL, y = NULL) +
    theme_minimal(base_size = 16)

  if(is.null(forest_plot)) {
    forest_plot <- sep_plot
  } else {
    forest_plot = forest_plot + sep_plot
  }
}

# Overall Forest 
grid$foundjob_hat <- predictions$aggregate

# 2d separator plot
sep_plot <- ggplot(grid) + 
  geom_raster(
    aes(x = educ, y = priorearn, fill = foundjob_hat),
    alpha = 0.5,
    show.legend = FALSE
  ) +
  geom_point(
    aes(
      x = educ, y = priorearn, 
      shape = foundjob, color = foundjob
    ),
    data = jtpahet,
    size = 2,
    show.legend = FALSE
  ) +
  labs(title = "Random Forest", x = NULL, y = NULL) +
  theme_minimal(base_size = 16)

forest_plot = forest_plot + sep_plot

forest_plot + plot_layout(nrow = 3, ncol = 2)

## Using more features and hold out testing set --------------------------------

# Hold out 25% of the data for testing
train_idx = runif(nrow(jtpahet)) <= 0.5

# Could pass `ytest` and `xtest` arguments
forest = randomForest::randomForest(
  foundjob ~ educ + priorearn + age + female + nonwhite + married,
  data = jtpahet[train_idx == TRUE, ],
  ntree = 500
)

predictions = predict(forest, newdata = jtpahet[train_idx == FALSE, ])
actual = jtpahet[train_idx == FALSE, ]$foundjob

table(actual, predictions)




# ------------------------------------------------------------------------------
# Using Machine Learning to Predict Heterogeneous Treatment Effects 
# ------------------------------------------------------------------------------

# Random Causal Forest: Simulated Example --------------------------------------

# define parameters
n = 1000        # sample size
p = 0.5         # probability of seeing the ad
beta0 = 0    
beta1 = 0.2     # effect of age
beta2 = -0.025  # difference in average spending between males and females who don't see the ad ()
beta3 = 0       # effect of treatment among females
beta4 = 0.05    # differential effect of treatment among males compared to females
sigeps = 0.02   # residual variance of outcome

# generate some fake data
age = sample(18:60, n, replace = TRUE)
male = sample(0:1, n, replace = TRUE)
d = (runif(n) < p)
epsilon = rnorm(n, 0, sigeps)
lny = beta0 + beta1 * age + beta2 * male + beta3 * d + beta4 * d * male + epsilon

# assemble as dataframe
fakedata = tibble(
  lny = lny,
  d = d,
  age = age,
  male = male
)
x0 = fakedata[fakedata$d == 0, c("age", "male")]
x1 = fakedata[fakedata$d == 1, c("age", "male")]
y0 = fakedata[fakedata$d == 0, "lny"]
y1 = fakedata[fakedata$d == 1, "lny"]

# Causal Forest
tau_forest <- causal_forest(
  X = as.matrix(fakedata[, c("age", "male")]), 
  Y = fakedata$lny, 
  W = fakedata$d
)

fakedata$tau_hat = predict(tau_forest)$predictions

fakedata |> 
  group_by(male) |>
  summarize(
    tau_hat = mean(tau_hat)
  )

tau_hat_summ = fakedata |> 
  group_by(male, age) |>
  summarize(
    tau_hat = mean(tau_hat)
  ) |>
  mutate(
    male_label = ifelse(male == 0, "Female", "Male")
  )

ggplot(tau_hat_summ) + 
  geom_point(
    aes(x = age, y = tau_hat, color = male_label)
  ) + 
  labs(x = "Age", y = "Estimated Treatment Effect", color = NULL) +
  theme_minimal(base_size = 16)

# Random Causal Forest: Predict the effects of job training --------------------

# National JPTA Study
jtpahet <- read_csv("https://github.com/Mixtape-Sessions/Heterogeneous-Effects/raw/main/Labs/data/jtpahet.csv")
jtpahet$foundjob = as.numeric(jtpahet$foundjob)
jtpahet$z = as.numeric(jtpahet$z)

# Regression to get average effect
(est = feols(foundjob ~ i(z, ref = 0), data = jtpahet, vcov = "HC1"))
ate = coef(est)["z::1"]

# Causal Forest
X <- as.matrix(
  jtpahet[, c("age", "priorearn", "educ", "female", "nonwhite", "married")]
)
tau_forest <- causal_forest(
  X = X, 
  Y = jtpahet$foundjob, 
  W = jtpahet$z
)

tau_hat_oob <- predict(tau_forest)
hist(tau_hat_oob$predictions, main = "Estimated Treatment effects")
abline(v = ate, col = "red", lwd = 2)

jtpahet$tau_hat_oob <- tau_hat_oob$predictions

# Prior Earnings x Education Heatmap
grid = expand.grid(
  educ = 7:18,
  priorearn = seq(0, 60000, by = 5000)
)
grid = as_tibble(grid)

# Effects for married, nonwhite females of average age:
grid$age = mean(jtpahet$age)
grid$female = 1
grid$nonwhite = 1
grid$married = 1

grid$te_est = predict(tau_forest, newdata = grid)$predictions

ggplot(grid) + 
  geom_rect(
    aes(
      xmin = educ - 0.25,
      xmax = educ + 0.25,
      ymin = priorearn - 2000, 
      ymax = priorearn + 2000,
      fill = te_est
    )
  ) +
  labs(title = "Random Forest", x = NULL, y = NULL, fill = "Estimated Treatment Effect") +
  scale_fill_viridis_c(option = "C") + 
  theme_minimal(base_size = 16)




