file handle pcdat/name='mixtape.dat' /lrecl=538.
data list file pcdat free /
  R0000100 (F4)
  R0536300 (F2)
  R0536401 (F2)
  R0536402 (F4)
  R1204500 (F6)
  R1235800 (F2)
  R1250600 (F2)
  R1302400 (F2)
  R1302500 (F2)
  R1482600 (F2)
  R1770300 (F2)
  R1770400 (F2)
  R1770500 (F2)
  R1770600 (F2)
  R2609100 (F2)
  R2609200 (F2)
  R2609300 (F2)
  R2609400 (F2)
  R2609500 (F2)
  R3069900 (F2)
  R3070000 (F2)
  R3070100 (F2)
  R3939900 (F2)
  R3940000 (F2)
  R3940100 (F2)
  R3940200 (F2)
  R3940300 (F2)
  R4355300 (F2)
  R4355400 (F2)
  R4355500 (F2)
  R5535400 (F2)
  R5535500 (F2)
  R5535600 (F2)
  R5535700 (F2)
  R6030500 (F2)
  R6030600 (F2)
  R6030700 (F2)
  R6030800 (F2)
  R6030900 (F2)
  R6031000 (F2)
  R7295900 (F2)
  R7296000 (F2)
  R7296100 (F2)
  R7296200 (F2)
  R7296300 (F2)
  R7296400 (F2)
  R9829600 (F6)
  S0443300 (F2)
  S0443400 (F2)
  S0443500 (F2)
  S0443600 (F2)
  S1618800 (F2)
  S1618900 (F2)
  S1619000 (F2)
  S1619100 (F2)
  S1999000 (F2)
  S1999100 (F2)
  S1999200 (F2)
  S1999300 (F2)
  S1999400 (F2)
  S2471900 (F2)
  S2472000 (F2)
  S2472100 (F2)
  S3799000 (F2)
  S3799100 (F2)
  S3799200 (F2)
  S3799300 (F2)
  S4213100 (F3)
  S4213200 (F2)
  S4213300 (F2)
  S5399000 (F2)
  S5399100 (F2)
  S5399200 (F2)
  S5399300 (F2)
  S5805500 (F2)
  S5805600 (F2)
  S5805700 (F2)
  S7499000 (F2)
  S7499100 (F2)
  S7499200 (F2)
  S7499300 (F2)
  S7499400 (F2)
  S7894000 (F2)
  S7894100 (F2)
  S7894200 (F2)
  S7894300 (F2)
  S7894400 (F2)
  S9999000 (F2)
  S9999100 (F2)
  S9999200 (F2)
  S9999300 (F2)
  S9999400 (F2)
  T0307500 (F2)
  T0307600 (F2)
  T0307700 (F2)
  T1999000 (F2)
  T1999100 (F2)
  T1999200 (F2)
  T1999300 (F2)
  T1999400 (F2)
  T1999500 (F2)
  T1999600 (F2)
  T1999700 (F2)
  T2323800 (F3)
  T2323900 (F2)
  T2324000 (F2)
  T3850300 (F2)
  T3850400 (F2)
  T3850500 (F2)
  T4939000 (F2)
  T4939100 (F2)
  T4939200 (F2)
  T5200100 (F2)
  T5200200 (F2)
  T5200300 (F2)
  T5200400 (F2)
  T5200500 (F2)
  T5474900 (F2)
  T5475000 (F2)
  T5475100 (F2)
  T6650100 (F2)
  T6650200 (F2)
  T6650300 (F2)
  T6650400 (F2)
  T6887400 (F2)
  T6887500 (F2)
  T8122100 (F2)
  T8122200 (F2)
  T8122300 (F2)
  T8122400 (F2)
  T8382300 (F2)
  T8382400 (F2)
  T8382500 (F2)
  U0000200 (F2)
  U0000300 (F2)
  U0000400 (F2)
  U0000500 (F2)
  U0248900 (F2)
  U0249000 (F2)
  U0956900 (F6)
  U0957000 (F2)
  U1836800 (F2)
  U1836900 (F2)
  U1837000 (F2)
  U1837100 (F2)
  U1837200 (F2)
  U1837300 (F2)
  U2166200 (F2)
  U2166300 (F2)
  U2166400 (F2)
  U2166500 (F2)
  U2857200 (F6)
  U2857300 (F2)
  U3436300 (F2)
  U3436400 (F2)
  U3436500 (F2)
  U3436600 (F2)
  U3436700 (F2)
  U3572600 (F2)
  U3658200 (F2)
  U3658300 (F2)
  U3658400 (F2)
  U3658500 (F2)
  U4282300 (F6)
  U4282400 (F2)
  Z9033700 (F2)
  Z9033900 (F2)
  Z9034100 (F2)
  Z9083800 (F2)
  Z9083900 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  R0000100  "PUBID - YTH ID CODE 1997"
  R0536300  "KEY!SEX (SYMBOL) 1997"
  R0536401  "KEY!BDATE M/Y (SYMBOL) 1997"
  R0536402  "KEY!BDATE M/Y (SYMBOL) 1997"
  R1204500  "CV_INCOME_GROSS_YR 1997"
  R1235800  "CV_SAMPLE_TYPE 1997"
  R1250600  "CV_COLLEGE_TYPE L1 1997"
  R1302400  "CV_HGC_BIO_DAD 1997"
  R1302500  "CV_HGC_BIO_MOM 1997"
  R1482600  "KEY!RACE_ETHNICITY (SYMBOL) 1997"
  R1770300  "DIPLOMA/DEGREE RCVD? L1 1998"
  R1770400  "DIPLOMA/DEGREE RCVD? L2 1998"
  R1770500  "DIPLOMA/DEGREE RCVD? L3 1998"
  R1770600  "DIPLOMA/DEGREE RCVD? L4 1998"
  R2609100  "CV_COLLEGE_TYPE L1 1998"
  R2609200  "CV_COLLEGE_TYPE L2 1998"
  R2609300  "CV_COLLEGE_TYPE L3 1998"
  R2609400  "CV_COLLEGE_TYPE L4 1998"
  R2609500  "CV_COLLEGE_TYPE L5 1998"
  R3069900  "DIPLOMA/DEGREE RCVD? L1 1999"
  R3070000  "DIPLOMA/DEGREE RCVD? L2 1999"
  R3070100  "DIPLOMA/DEGREE RCVD? L3 1999"
  R3939900  "CV_COLLEGE_TYPE L1 1999"
  R3940000  "CV_COLLEGE_TYPE L2 1999"
  R3940100  "CV_COLLEGE_TYPE L3 1999"
  R3940200  "CV_COLLEGE_TYPE L4 1999"
  R3940300  "CV_COLLEGE_TYPE L5 1999"
  R4355300  "DIPLOMA/DEGREE RCVD? L1 2000"
  R4355400  "DIPLOMA/DEGREE RCVD? L2 2000"
  R4355500  "DIPLOMA/DEGREE RCVD? L3 2000"
  R5535400  "CV_COLLEGE_TYPE L1 2000"
  R5535500  "CV_COLLEGE_TYPE L2 2000"
  R5535600  "CV_COLLEGE_TYPE L3 2000"
  R5535700  "CV_COLLEGE_TYPE L4 2000"
  R6030500  "DIPLOMA/DEGREE RCVD? L1 2001"
  R6030600  "DIPLOMA/DEGREE RCVD? L2 2001"
  R6030700  "DIPLOMA/DEGREE RCVD? L3 2001"
  R6030800  "DIPLOMA/DEGREE RCVD? L4 2001"
  R6030900  "DIPLOMA/DEGREE RCVD? L5 2001"
  R6031000  "DIPLOMA/DEGREE RCVD? L6 2001"
  R7295900  "CV_COLLEGE_TYPE L1 2001"
  R7296000  "CV_COLLEGE_TYPE L2 2001"
  R7296100  "CV_COLLEGE_TYPE L3 2001"
  R7296200  "CV_COLLEGE_TYPE L4 2001"
  R7296300  "CV_COLLEGE_TYPE L5 2001"
  R7296400  "CV_COLLEGE_TYPE L6 2001"
  R9829600  "ASVAB_MATH_VERBAL_SCORE_PCT 1999"
  S0443300  "DIPLOMA/DEGREE RCVD? L1 2002"
  S0443400  "DIPLOMA/DEGREE RCVD? L2 2002"
  S0443500  "DIPLOMA/DEGREE RCVD? L3 2002"
  S0443600  "DIPLOMA/DEGREE RCVD? L5 2002"
  S1618800  "CV_COLLEGE_TYPE L1 2002"
  S1618900  "CV_COLLEGE_TYPE L2 2002"
  S1619000  "CV_COLLEGE_TYPE L3 2002"
  S1619100  "CV_COLLEGE_TYPE L4 2002"
  S1999000  "CV_COLLEGE_TYPE L1 2003"
  S1999100  "CV_COLLEGE_TYPE L2 2003"
  S1999200  "CV_COLLEGE_TYPE L3 2003"
  S1999300  "CV_COLLEGE_TYPE L4 2003"
  S1999400  "CV_COLLEGE_TYPE L5 2003"
  S2471900  "DIPLOMA/DEGREE RCVD? L1 2003"
  S2472000  "DIPLOMA/DEGREE RCVD? L2 2003"
  S2472100  "DIPLOMA/DEGREE RCVD? L3 2003"
  S3799000  "CV_COLLEGE_TYPE L1 2004"
  S3799100  "CV_COLLEGE_TYPE L2 2004"
  S3799200  "CV_COLLEGE_TYPE L3 2004"
  S3799300  "CV_COLLEGE_TYPE L4 2004"
  S4213100  "DIPLOMA/DEGREE RCVD? L1 2004"
  S4213200  "DIPLOMA/DEGREE RCVD? L2 2004"
  S4213300  "DIPLOMA/DEGREE RCVD? L3 2004"
  S5399000  "CV_COLLEGE_TYPE L1 2005"
  S5399100  "CV_COLLEGE_TYPE L2 2005"
  S5399200  "CV_COLLEGE_TYPE L3 2005"
  S5399300  "CV_COLLEGE_TYPE L4 2005"
  S5805500  "DIPLOMA/DEGREE RCVD? L1 2005"
  S5805600  "DIPLOMA/DEGREE RCVD? L2 2005"
  S5805700  "DIPLOMA/DEGREE RCVD? L3 2005"
  S7499000  "CV_COLLEGE_TYPE L1 2006"
  S7499100  "CV_COLLEGE_TYPE L2 2006"
  S7499200  "CV_COLLEGE_TYPE L3 2006"
  S7499300  "CV_COLLEGE_TYPE L4 2006"
  S7499400  "CV_COLLEGE_TYPE L5 2006"
  S7894000  "DIPLOMA/DEGREE RCVD? L1 2006"
  S7894100  "DIPLOMA/DEGREE RCVD? L2 2006"
  S7894200  "DIPLOMA/DEGREE RCVD? L3 2006"
  S7894300  "DIPLOMA/DEGREE RCVD? L4 2006"
  S7894400  "DIPLOMA/DEGREE RCVD? L5 2006"
  S9999000  "CV_COLLEGE_TYPE L1 2007"
  S9999100  "CV_COLLEGE_TYPE L2 2007"
  S9999200  "CV_COLLEGE_TYPE L3 2007"
  S9999300  "CV_COLLEGE_TYPE L4 2007"
  S9999400  "CV_COLLEGE_TYPE L5 2007"
  T0307500  "DIPLOMA/DEGREE RCVD? L1 2007"
  T0307600  "DIPLOMA/DEGREE RCVD? L2 2007"
  T0307700  "DIPLOMA/DEGREE RCVD? L3 2007"
  T1999000  "CV_COLLEGE_TYPE L1 2008"
  T1999100  "CV_COLLEGE_TYPE L2 2008"
  T1999200  "CV_COLLEGE_TYPE L3 2008"
  T1999300  "CV_COLLEGE_TYPE L4 2008"
  T1999400  "CV_COLLEGE_TYPE L5 2008"
  T1999500  "CV_COLLEGE_TYPE L6 2008"
  T1999600  "CV_COLLEGE_TYPE L7 2008"
  T1999700  "CV_COLLEGE_TYPE L8 2008"
  T2323800  "DIPLOMA/DEGREE RCVD? L1 2008"
  T2323900  "DIPLOMA/DEGREE RCVD? L2 2008"
  T2324000  "DIPLOMA/DEGREE RCVD? L3 2008"
  T3850300  "DIPLOMA/DEGREE RCVD? L1 2009"
  T3850400  "DIPLOMA/DEGREE RCVD? L2 2009"
  T3850500  "DIPLOMA/DEGREE RCVD? L3 2009"
  T4939000  "CV_COLLEGE_TYPE L1 2009"
  T4939100  "CV_COLLEGE_TYPE L2 2009"
  T4939200  "CV_COLLEGE_TYPE L3 2009"
  T5200100  "CV_COLLEGE_TYPE L1 2010"
  T5200200  "CV_COLLEGE_TYPE L2 2010"
  T5200300  "CV_COLLEGE_TYPE L3 2010"
  T5200400  "CV_COLLEGE_TYPE L4 2010"
  T5200500  "CV_COLLEGE_TYPE L5 2010"
  T5474900  "DIPLOMA/DEGREE RCVD? L1 2010"
  T5475000  "DIPLOMA/DEGREE RCVD? L2 2010"
  T5475100  "DIPLOMA/DEGREE RCVD? L3 2010"
  T6650100  "CV_COLLEGE_TYPE L1 2011"
  T6650200  "CV_COLLEGE_TYPE L2 2011"
  T6650300  "CV_COLLEGE_TYPE L3 2011"
  T6650400  "CV_COLLEGE_TYPE L4 2011"
  T6887400  "DIPLOMA/DEGREE RCVD? L1 2011"
  T6887500  "DIPLOMA/DEGREE RCVD? L2 2011"
  T8122100  "CV_COLLEGE_TYPE L1 2013"
  T8122200  "CV_COLLEGE_TYPE L2 2013"
  T8122300  "CV_COLLEGE_TYPE L3 2013"
  T8122400  "CV_COLLEGE_TYPE L4 2013"
  T8382300  "DIPLOMA/DEGREE RCVD? L1 2013"
  T8382400  "DIPLOMA/DEGREE RCVD? L2 2013"
  T8382500  "DIPLOMA/DEGREE RCVD? L3 2013"
  U0000200  "CV_COLLEGE_TYPE L1 2015"
  U0000300  "CV_COLLEGE_TYPE L2 2015"
  U0000400  "CV_COLLEGE_TYPE L3 2015"
  U0000500  "CV_COLLEGE_TYPE L4 2015"
  U0248900  "DIPLOMA/DEGREE RCVD? L1 2015"
  U0249000  "DIPLOMA/DEGREE RCVD? L2 2015"
  U0956900  "TTL INC WAGES, SALARY PAST YR 2015"
  U0957000  "EST INC WAGES, TIPS PAST YR 2015"
  U1836800  "CV_COLLEGE_TYPE L1 2017"
  U1836900  "CV_COLLEGE_TYPE L2 2017"
  U1837000  "CV_COLLEGE_TYPE L3 2017"
  U1837100  "CV_COLLEGE_TYPE L4 2017"
  U1837200  "CV_COLLEGE_TYPE L5 2017"
  U1837300  "CV_COLLEGE_TYPE L6 2017"
  U2166200  "DIPLOMA/DEGREE RCVD? L1 2017"
  U2166300  "DIPLOMA/DEGREE RCVD? L2 2017"
  U2166400  "DIPLOMA/DEGREE RCVD? L3 2017"
  U2166500  "DIPLOMA/DEGREE RCVD? L4 2017"
  U2857200  "TTL INC WAGES, SALARY PAST YR 2017"
  U2857300  "EST INC WAGES, TIPS PAST YR 2017"
  U3436300  "CV_COLLEGE_TYPE L1 2019"
  U3436400  "CV_COLLEGE_TYPE L2 2019"
  U3436500  "CV_COLLEGE_TYPE L3 2019"
  U3436600  "CV_COLLEGE_TYPE L4 2019"
  U3436700  "CV_COLLEGE_TYPE L5 2019"
  U3572600  "WHAT IS CURR HGC? 2019"
  U3658200  "DIPLOMA/DEGREE RCVD? L1 2019"
  U3658300  "DIPLOMA/DEGREE RCVD? L2 2019"
  U3658400  "DIPLOMA/DEGREE RCVD? L3 2019"
  U3658500  "DIPLOMA/DEGREE RCVD? L4 2019"
  U4282300  "TTL INC WAGES, SALARY PAST YR 2019"
  U4282400  "EST INC WAGES, TIPS PAST YR 2019"
  Z9033700  "CVC_SAT_MATH_SCORE_2007"
  Z9033900  "CVC_SAT_VERBAL_SCORE_2007"
  Z9034100  "CVC_ACT_SCORE_2007"
  Z9083800  "CVC_HGC_EVER"
  Z9083900  "CVC_HIGHEST_DEGREE_EVER"
.

* Recode continuous values. 
* recode 
 R0000100 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    / 
 R1204500 
    (-999999 thru -3000 eq -999999)
    (-2999 thru -2000 eq -2999)
    (-1999 thru -1000 eq -1999)
    (-999 thru -1 eq -999)
    (0 thru 0 eq 0)
    (1 thru 1000 eq 1)
    (1001 thru 2000 eq 1001)
    (2001 thru 3000 eq 2001)
    (3001 thru 5000 eq 3001)
    (5001 thru 10000 eq 5001)
    (10001 thru 20000 eq 10001)
    (20001 thru 30000 eq 20001)
    (30001 thru 40000 eq 30001)
    (40001 thru 50000 eq 40001)
    (50001 thru 65000 eq 50001)
    (65001 thru 80000 eq 65001)
    (80001 thru 100000 eq 80001)
    (100001 thru 150000 eq 100001)
    (150001 thru 200000 eq 150001)
    (200001 thru 999999 eq 200001)
    / 
 R9829600 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 19999 eq 1000)
    (20000 thru 39999 eq 20000)
    (40000 thru 59999 eq 40000)
    (60000 thru 79999 eq 60000)
    (80000 thru 100000 eq 80000)
    / 
 U0956900 
    (0 thru 0 eq 0)
    (1 thru 999 eq 1)
    (1000 thru 1999 eq 1000)
    (2000 thru 2999 eq 2000)
    (3000 thru 3999 eq 3000)
    (4000 thru 4999 eq 4000)
    (5000 thru 5999 eq 5000)
    (6000 thru 6999 eq 6000)
    (7000 thru 7999 eq 7000)
    (8000 thru 8999 eq 8000)
    (9000 thru 9999 eq 9000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 49999 eq 25000)
    (50000 thru 99999999 eq 50000)
    / 
 U2857200 
    (0 thru 0 eq 0)
    (1 thru 4999 eq 1)
    (5000 thru 9999 eq 5000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 29999 eq 25000)
    (30000 thru 39999 eq 30000)
    (40000 thru 49999 eq 40000)
    (50000 thru 59999 eq 50000)
    (60000 thru 69999 eq 60000)
    (70000 thru 79999 eq 70000)
    (80000 thru 89999 eq 80000)
    (90000 thru 99999 eq 90000)
    (100000 thru 149999 eq 100000)
    (150000 thru 99999999 eq 150000)
    / 
 U4282300 
    (0 thru 0 eq 0)
    (1 thru 4999 eq 1)
    (5000 thru 9999 eq 5000)
    (10000 thru 14999 eq 10000)
    (15000 thru 19999 eq 15000)
    (20000 thru 24999 eq 20000)
    (25000 thru 29999 eq 25000)
    (30000 thru 39999 eq 30000)
    (40000 thru 49999 eq 40000)
    (50000 thru 59999 eq 50000)
    (60000 thru 69999 eq 60000)
    (70000 thru 79999 eq 70000)
    (80000 thru 89999 eq 80000)
    (90000 thru 99999 eq 90000)
    (100000 thru 149999 eq 100000)
    (150000 thru 99999999 eq 150000)
.

* value labels
 R0000100
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    /
 R0536300
    1 "Male"
    2 "Female"
    0 "No Information"
    /
 R0536401
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R1204500
    -999999 "-999999 TO -3000: < -2999"
    -2999 "-2999 TO -2000"
    -1999 "-1999 TO -1000"
    -999 "-999 TO -1"
    0 "0"
    1 "1 TO 1000"
    1001 "1001 TO 2000"
    2001 "2001 TO 3000"
    3001 "3001 TO 5000"
    5001 "5001 TO 10000"
    10001 "10001 TO 20000"
    20001 "20001 TO 30000"
    30001 "30001 TO 40000"
    40001 "40001 TO 50000"
    50001 "50001 TO 65000"
    65001 "65001 TO 80000"
    80001 "80001 TO 100000"
    100001 "100001 TO 150000"
    150001 "150001 TO 200000"
    200001 "200001 TO 999999: 200001+"
    /
 R1235800
    1 "Cross-sectional"
    0 "Oversample"
    /
 R1250600
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R1302400
    0 "NONE"
    1 "1ST GRADE"
    2 "2ND GRADE"
    3 "3RD GRADE"
    4 "4TH GRADE"
    5 "5TH GRADE"
    6 "6TH GRADE"
    7 "7TH GRADE"
    8 "8TH GRADE"
    9 "9TH GRADE"
    10 "10TH GRADE"
    11 "11TH GRADE"
    12 "12TH GRADE"
    13 "1ST YEAR COLLEGE"
    14 "2ND YEAR COLLEGE"
    15 "3RD YEAR COLLEGE"
    16 "4TH YEAR COLLEGE"
    17 "5TH YEAR COLLEGE"
    18 "6TH YEAR COLLEGE"
    19 "7TH YEAR COLLEGE"
    20 "8TH YEAR COLLEGE OR MORE"
    95 "UNGRADED"
    /
 R1302500
    0 "NONE"
    1 "1ST GRADE"
    2 "2ND GRADE"
    3 "3RD GRADE"
    4 "4TH GRADE"
    5 "5TH GRADE"
    6 "6TH GRADE"
    7 "7TH GRADE"
    8 "8TH GRADE"
    9 "9TH GRADE"
    10 "10TH GRADE"
    11 "11TH GRADE"
    12 "12TH GRADE"
    13 "1ST YEAR COLLEGE"
    14 "2ND YEAR COLLEGE"
    15 "3RD YEAR COLLEGE"
    16 "4TH YEAR COLLEGE"
    17 "5TH YEAR COLLEGE"
    18 "6TH YEAR COLLEGE"
    19 "7TH YEAR COLLEGE"
    20 "8TH YEAR COLLEGE OR MORE"
    95 "UNGRADED"
    /
 R1482600
    1 "Black"
    2 "Hispanic"
    3 "Mixed Race (Non-Hispanic)"
    4 "Non-Black / Non-Hispanic"
    /
 R1770300
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    /
 R1770400
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    /
 R1770500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    /
 R1770600
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    /
 R2609100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R2609200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R2609300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R2609400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R2609500
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R3069900
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    /
 R3070000
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    /
 R3070100
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    /
 R3939900
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R3940000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R3940100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R3940200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R3940300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R4355300
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 R4355400
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 R4355500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 R5535400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R5535500
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R5535600
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R5535700
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R6030500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 R6030600
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 R6030700
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 R6030800
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 R6030900
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 R6031000
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 R7295900
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R7296000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R7296100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R7296200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R7296300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R7296400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 R9829600
    0 "0"
    1 "1 TO 999: .001-.999"
    1000 "1000 TO 19999: 1.000-19.999"
    20000 "20000 TO 39999: 20.000-39.999"
    40000 "40000 TO 59999: 40.000-59.999"
    60000 "60000 TO 79999: 60.000-79.999"
    80000 "80000 TO 100000: 80.000-100.000"
    /
 S0443300
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "OTHER - RECODED TO GED"
    995 "SUPERVISOR REVIEW"
    999 "UNCODABLE"
    /
 S0443400
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "OTHER - RECODED TO GED"
    995 "SUPERVISOR REVIEW"
    999 "UNCODABLE"
    /
 S0443500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "OTHER - RECODED TO GED"
    995 "SUPERVISOR REVIEW"
    999 "UNCODABLE"
    /
 S0443600
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "OTHER - RECODED TO GED"
    995 "SUPERVISOR REVIEW"
    999 "UNCODABLE"
    /
 S1618800
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S1618900
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S1619000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S1619100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S1999000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S1999100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S1999200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S1999300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S1999400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S2471900
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 S2472000
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 S2472100
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 S3799000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S3799100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S3799200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S3799300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S4213100
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 S4213200
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 S4213300
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 S5399000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S5399100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S5399200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S5399300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S5805500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 S5805600
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 S5805700
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 S7499000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S7499100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S7499200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S7499300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S7499400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S7894000
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 S7894100
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 S7894200
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 S7894300
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 S7894400
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 S9999000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S9999100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S9999200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S9999300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 S9999400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T0307500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T0307600
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T0307700
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T1999000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T1999100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T1999200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T1999300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T1999400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T1999500
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T1999600
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T1999700
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T2323800
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T2323900
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T2324000
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T3850300
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T3850400
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T3850500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T4939000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T4939100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T4939200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T5200100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T5200200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T5200300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T5200400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T5200500
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T5474900
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T5475000
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T5475100
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T6650100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T6650200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T6650300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T6650400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T6887400
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T6887500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or  unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODABLE"
    /
 T8122100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T8122200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T8122300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T8122400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 T8382300
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "Added in - GED"
    10 "OTHER - RECODED TO No degree received"
    999 "UNCODABLE"
    /
 T8382400
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "Added in - GED"
    10 "OTHER - RECODED TO No degree received"
    999 "UNCODABLE"
    /
 T8382500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "Added in - GED"
    10 "OTHER - RECODED TO No degree received"
    999 "UNCODABLE"
    /
 U0000200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U0000300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U0000400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U0000500
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U0248900
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 U0249000
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 U0956900
    0 "0"
    1 "1 TO 999"
    1000 "1000 TO 1999"
    2000 "2000 TO 2999"
    3000 "3000 TO 3999"
    4000 "4000 TO 4999"
    5000 "5000 TO 5999"
    6000 "6000 TO 6999"
    7000 "7000 TO 7999"
    8000 "8000 TO 8999"
    9000 "9000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 49999"
    50000 "50000 TO 99999999: 50000+"
    /
 U0957000
    1 "A. $1 - $5,000"
    2 "B. $5,001 - $10,000"
    3 "C. $10,001 - $25,000"
    4 "D. $25,001 - $50,000"
    5 "E. $50,001 - $100,000"
    6 "F. $100,001 - $250,000"
    7 "G. More than $250,000"
    /
 U1836800
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U1836900
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U1837000
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U1837100
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U1837200
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U1837300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U2166200
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 U2166300
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 U2166400
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 U2166500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "GED"
    999 "UNCODEABLE"
    /
 U2857200
    0 "0"
    1 "1 TO 4999"
    5000 "5000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 29999"
    30000 "30000 TO 39999"
    40000 "40000 TO 49999"
    50000 "50000 TO 59999"
    60000 "60000 TO 69999"
    70000 "70000 TO 79999"
    80000 "80000 TO 89999"
    90000 "90000 TO 99999"
    100000 "100000 TO 149999"
    150000 "150000 TO 99999999: 150000+"
    /
 U2857300
    1 "A. $1 - $5,000"
    2 "B. $5,001 - $10,000"
    3 "C. $10,001 - $25,000"
    4 "D. $25,001 - $50,000"
    5 "E. $50,001 - $100,000"
    6 "F. $100,001 - $250,000"
    7 "G. More than $250,000"
    /
 U3436300
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U3436400
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U3436500
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U3436600
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U3436700
    1 "Public institution"
    2 "Private not-for-profit institution"
    3 "Private for-profit institution"
    /
 U3572600
    0 "NONE"
    1 "1ST GRADE"
    2 "2ND GRADE"
    3 "3RD GRADE"
    4 "4TH GRADE"
    5 "5TH GRADE"
    6 "6TH GRADE"
    7 "7TH GRADE"
    8 "8TH GRADE"
    9 "9TH GRADE"
    10 "10TH GRADE"
    11 "11TH GRADE"
    12 "12TH GRADE"
    13 "1ST YEAR COLLEGE"
    14 "2ND YEAR COLLEGE"
    15 "3RD YEAR COLLEGE"
    16 "4TH YEAR COLLEGE"
    17 "5TH YEAR COLLEGE"
    18 "6TH YEAR COLLEGE"
    19 "7TH YEAR COLLEGE"
    20 "8TH YEAR COLLEGE OR MORE"
    93 "PRE-KINDERGARTEN"
    94 "KINDERGARTEN"
    95 "UNGRADED"
    /
 U3658200
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "Added in - GED"
    10 "Other- Recoded to No degree received"
    999 "UNCODABLE"
    /
 U3658300
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "Added in - GED"
    10 "Other- Recoded to No degree received"
    999 "UNCODABLE"
    /
 U3658400
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "Added in - GED"
    10 "Other- Recoded to No degree received"
    999 "UNCODABLE"
    /
 U3658500
    1 "Associate/Junior College or two-year associate degree (AA)"
    2 "Vocational or technical certificate"
    3 "Bachelor's degree (BA, BS or unspecified)"
    4 "Master's degree (MA, MBA, MS, MSW)"
    5 "Doctoral Degree (PhD)"
    6 "Professional Degree (MD, LLD, DDS, JD)"
    7 "No degree received"
    8 "OTHER (SPECIFY)"
    9 "Added in - GED"
    10 "Other- Recoded to No degree received"
    999 "UNCODABLE"
    /
 U4282300
    0 "0"
    1 "1 TO 4999"
    5000 "5000 TO 9999"
    10000 "10000 TO 14999"
    15000 "15000 TO 19999"
    20000 "20000 TO 24999"
    25000 "25000 TO 29999"
    30000 "30000 TO 39999"
    40000 "40000 TO 49999"
    50000 "50000 TO 59999"
    60000 "60000 TO 69999"
    70000 "70000 TO 79999"
    80000 "80000 TO 89999"
    90000 "90000 TO 99999"
    100000 "100000 TO 149999"
    150000 "150000 TO 99999999: 150000+"
    /
 U4282400
    1 "A. $1 - $5,000"
    2 "B. $5,001 - $10,000"
    3 "C. $10,001 - $25,000"
    4 "D. $25,001 - $50,000"
    5 "E. $50,001 - $100,000"
    6 "F. $100,001 - $250,000"
    7 "G. More than $250,000"
    /
 Z9033700
    1 "200 - 300"
    2 "301 - 400"
    3 "401 - 500"
    4 "501 - 600"
    5 "601 - 700"
    6 "701 - 800"
    0 "Have not yet received the scores"
    /
 Z9033900
    1 "200 - 300"
    2 "301 - 400"
    3 "401 - 500"
    4 "501 - 600"
    5 "601 - 700"
    6 "701 - 800"
    0 "Have not yet received the scores"
    /
 Z9034100
    1 "0 - 6"
    2 "7 - 12"
    3 "13 - 18"
    4 "19 - 24"
    5 "25 - 30"
    6 "31 - 36"
    0 "Have not yet received the scores"
    /
 Z9083800
    0 "None"
    1 "1st grade"
    2 "2nd grade"
    3 "3rd grade"
    4 "4th grade"
    5 "5th grade"
    6 "6th grade"
    7 "7th grade"
    8 "8th grade"
    9 "9th grade"
    10 "10th grade"
    11 "11th grade"
    12 "12th grade"
    13 "1st year college"
    14 "2nd year college"
    15 "3rd year college"
    16 "4th year college"
    17 "5th year college"
    18 "6th year college"
    19 "7th year college"
    20 "8th year college or more"
    95 "Ungraded"
    /
 Z9083900
    0 "None"
    1 "GED"
    2 "High school diploma (Regular 12 year program)"
    3 "Associate/Junior college (AA)"
    4 "Bachelor's degree (BA, BS)"
    5 "Master's degree (MA, MS)"
    6 "PhD"
    7 "Professional degree (DDS, JD, MD)"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (R0000100 = PUBID_1997) 
  (R0536300 = KEY_SEX_1997)   /* KEY!SEX */
  (R0536401 = KEY_BDATE_M_1997)   /* KEY!BDATE_M */
  (R0536402 = KEY_BDATE_Y_1997)   /* KEY!BDATE_Y */
  (R1204500 = CV_INCOME_GROSS_YR_1997) 
  (R1235800 = CV_SAMPLE_TYPE_1997) 
  (R1250600 = CV_COLLEGE_TYPE_01_1997)   /* CV_COLLEGE_TYPE.01 */
  (R1302400 = CV_HGC_BIO_DAD_1997) 
  (R1302500 = CV_HGC_BIO_MOM_1997) 
  (R1482600 = KEY_RACE_ETHNICITY_1997)   /* KEY!RACE_ETHNICITY */
  (R1770300 = YSCH_23450_01_1998)   /* YSCH-23450.01 */
  (R1770400 = YSCH_23450_02_1998)   /* YSCH-23450.02 */
  (R1770500 = YSCH_23450_03_1998)   /* YSCH-23450.03 */
  (R1770600 = YSCH_23450_04_1998)   /* YSCH-23450.04 */
  (R2609100 = CV_COLLEGE_TYPE_01_1998)   /* CV_COLLEGE_TYPE.01 */
  (R2609200 = CV_COLLEGE_TYPE_02_1998)   /* CV_COLLEGE_TYPE.02 */
  (R2609300 = CV_COLLEGE_TYPE_03_1998)   /* CV_COLLEGE_TYPE.03 */
  (R2609400 = CV_COLLEGE_TYPE_04_1998)   /* CV_COLLEGE_TYPE.04 */
  (R2609500 = CV_COLLEGE_TYPE_05_1998)   /* CV_COLLEGE_TYPE.05 */
  (R3069900 = YSCH_23450_01_1999)   /* YSCH-23450.01 */
  (R3070000 = YSCH_23450_02_1999)   /* YSCH-23450.02 */
  (R3070100 = YSCH_23450_03_1999)   /* YSCH-23450.03 */
  (R3939900 = CV_COLLEGE_TYPE_01_1999)   /* CV_COLLEGE_TYPE.01 */
  (R3940000 = CV_COLLEGE_TYPE_02_1999)   /* CV_COLLEGE_TYPE.02 */
  (R3940100 = CV_COLLEGE_TYPE_03_1999)   /* CV_COLLEGE_TYPE.03 */
  (R3940200 = CV_COLLEGE_TYPE_04_1999)   /* CV_COLLEGE_TYPE.04 */
  (R3940300 = CV_COLLEGE_TYPE_05_1999)   /* CV_COLLEGE_TYPE.05 */
  (R4355300 = YSCH_23450_01_2000)   /* YSCH-23450.01 */
  (R4355400 = YSCH_23450_02_2000)   /* YSCH-23450.02 */
  (R4355500 = YSCH_23450_03_2000)   /* YSCH-23450.03 */
  (R5535400 = CV_COLLEGE_TYPE_01_2000)   /* CV_COLLEGE_TYPE.01 */
  (R5535500 = CV_COLLEGE_TYPE_02_2000)   /* CV_COLLEGE_TYPE.02 */
  (R5535600 = CV_COLLEGE_TYPE_03_2000)   /* CV_COLLEGE_TYPE.03 */
  (R5535700 = CV_COLLEGE_TYPE_04_2000)   /* CV_COLLEGE_TYPE.04 */
  (R6030500 = YSCH_23450_01_2001)   /* YSCH-23450.01 */
  (R6030600 = YSCH_23450_02_2001)   /* YSCH-23450.02 */
  (R6030700 = YSCH_23450_03_2001)   /* YSCH-23450.03 */
  (R6030800 = YSCH_23450_04_2001)   /* YSCH-23450.04 */
  (R6030900 = YSCH_23450_05_2001)   /* YSCH-23450.05 */
  (R6031000 = YSCH_23450_06_2001)   /* YSCH-23450.06 */
  (R7295900 = CV_COLLEGE_TYPE_01_2001)   /* CV_COLLEGE_TYPE.01 */
  (R7296000 = CV_COLLEGE_TYPE_02_2001)   /* CV_COLLEGE_TYPE.02 */
  (R7296100 = CV_COLLEGE_TYPE_03_2001)   /* CV_COLLEGE_TYPE.03 */
  (R7296200 = CV_COLLEGE_TYPE_04_2001)   /* CV_COLLEGE_TYPE.04 */
  (R7296300 = CV_COLLEGE_TYPE_05_2001)   /* CV_COLLEGE_TYPE.05 */
  (R7296400 = CV_COLLEGE_TYPE_06_2001)   /* CV_COLLEGE_TYPE.06 */
  (R9829600 = ASVAB_MATH_VERBAL_SCORE_PCT_1999) 
  (S0443300 = YSCH_23450_01_2002)   /* YSCH-23450.01 */
  (S0443400 = YSCH_23450_02_2002)   /* YSCH-23450.02 */
  (S0443500 = YSCH_23450_03_2002)   /* YSCH-23450.03 */
  (S0443600 = YSCH_23450_05_2002)   /* YSCH-23450.05 */
  (S1618800 = CV_COLLEGE_TYPE_01_2002)   /* CV_COLLEGE_TYPE.01 */
  (S1618900 = CV_COLLEGE_TYPE_02_2002)   /* CV_COLLEGE_TYPE.02 */
  (S1619000 = CV_COLLEGE_TYPE_03_2002)   /* CV_COLLEGE_TYPE.03 */
  (S1619100 = CV_COLLEGE_TYPE_04_2002)   /* CV_COLLEGE_TYPE.04 */
  (S1999000 = CV_COLLEGE_TYPE_01_2003)   /* CV_COLLEGE_TYPE.01 */
  (S1999100 = CV_COLLEGE_TYPE_02_2003)   /* CV_COLLEGE_TYPE.02 */
  (S1999200 = CV_COLLEGE_TYPE_03_2003)   /* CV_COLLEGE_TYPE.03 */
  (S1999300 = CV_COLLEGE_TYPE_04_2003)   /* CV_COLLEGE_TYPE.04 */
  (S1999400 = CV_COLLEGE_TYPE_05_2003)   /* CV_COLLEGE_TYPE.05 */
  (S2471900 = YSCH_23450_01_2003)   /* YSCH-23450.01 */
  (S2472000 = YSCH_23450_02_2003)   /* YSCH-23450.02 */
  (S2472100 = YSCH_23450_03_2003)   /* YSCH-23450.03 */
  (S3799000 = CV_COLLEGE_TYPE_01_2004)   /* CV_COLLEGE_TYPE.01 */
  (S3799100 = CV_COLLEGE_TYPE_02_2004)   /* CV_COLLEGE_TYPE.02 */
  (S3799200 = CV_COLLEGE_TYPE_03_2004)   /* CV_COLLEGE_TYPE.03 */
  (S3799300 = CV_COLLEGE_TYPE_04_2004)   /* CV_COLLEGE_TYPE.04 */
  (S4213100 = YSCH_23450_01_2004)   /* YSCH-23450.01 */
  (S4213200 = YSCH_23450_02_2004)   /* YSCH-23450.02 */
  (S4213300 = YSCH_23450_03_2004)   /* YSCH-23450.03 */
  (S5399000 = CV_COLLEGE_TYPE_01_2005)   /* CV_COLLEGE_TYPE.01 */
  (S5399100 = CV_COLLEGE_TYPE_02_2005)   /* CV_COLLEGE_TYPE.02 */
  (S5399200 = CV_COLLEGE_TYPE_03_2005)   /* CV_COLLEGE_TYPE.03 */
  (S5399300 = CV_COLLEGE_TYPE_04_2005)   /* CV_COLLEGE_TYPE.04 */
  (S5805500 = YSCH_23450_01_2005)   /* YSCH-23450.01 */
  (S5805600 = YSCH_23450_02_2005)   /* YSCH-23450.02 */
  (S5805700 = YSCH_23450_03_2005)   /* YSCH-23450.03 */
  (S7499000 = CV_COLLEGE_TYPE_01_2006)   /* CV_COLLEGE_TYPE.01 */
  (S7499100 = CV_COLLEGE_TYPE_02_2006)   /* CV_COLLEGE_TYPE.02 */
  (S7499200 = CV_COLLEGE_TYPE_03_2006)   /* CV_COLLEGE_TYPE.03 */
  (S7499300 = CV_COLLEGE_TYPE_04_2006)   /* CV_COLLEGE_TYPE.04 */
  (S7499400 = CV_COLLEGE_TYPE_05_2006)   /* CV_COLLEGE_TYPE.05 */
  (S7894000 = YSCH_23450_01_2006)   /* YSCH-23450.01 */
  (S7894100 = YSCH_23450_02_2006)   /* YSCH-23450.02 */
  (S7894200 = YSCH_23450_03_2006)   /* YSCH-23450.03 */
  (S7894300 = YSCH_23450_04_2006)   /* YSCH-23450.04 */
  (S7894400 = YSCH_23450_05_2006)   /* YSCH-23450.05 */
  (S9999000 = CV_COLLEGE_TYPE_01_2007)   /* CV_COLLEGE_TYPE.01 */
  (S9999100 = CV_COLLEGE_TYPE_02_2007)   /* CV_COLLEGE_TYPE.02 */
  (S9999200 = CV_COLLEGE_TYPE_03_2007)   /* CV_COLLEGE_TYPE.03 */
  (S9999300 = CV_COLLEGE_TYPE_04_2007)   /* CV_COLLEGE_TYPE.04 */
  (S9999400 = CV_COLLEGE_TYPE_05_2007)   /* CV_COLLEGE_TYPE.05 */
  (T0307500 = YSCH_23450_01_2007)   /* YSCH-23450.01 */
  (T0307600 = YSCH_23450_02_2007)   /* YSCH-23450.02 */
  (T0307700 = YSCH_23450_03_2007)   /* YSCH-23450.03 */
  (T1999000 = CV_COLLEGE_TYPE_01_2008)   /* CV_COLLEGE_TYPE.01 */
  (T1999100 = CV_COLLEGE_TYPE_02_2008)   /* CV_COLLEGE_TYPE.02 */
  (T1999200 = CV_COLLEGE_TYPE_03_2008)   /* CV_COLLEGE_TYPE.03 */
  (T1999300 = CV_COLLEGE_TYPE_04_2008)   /* CV_COLLEGE_TYPE.04 */
  (T1999400 = CV_COLLEGE_TYPE_05_2008)   /* CV_COLLEGE_TYPE.05 */
  (T1999500 = CV_COLLEGE_TYPE_06_2008)   /* CV_COLLEGE_TYPE.06 */
  (T1999600 = CV_COLLEGE_TYPE_07_2008)   /* CV_COLLEGE_TYPE.07 */
  (T1999700 = CV_COLLEGE_TYPE_08_2008)   /* CV_COLLEGE_TYPE.08 */
  (T2323800 = YSCH_23450_01_2008)   /* YSCH-23450.01 */
  (T2323900 = YSCH_23450_02_2008)   /* YSCH-23450.02 */
  (T2324000 = YSCH_23450_03_2008)   /* YSCH-23450.03 */
  (T3850300 = YSCH_23450_01_2009)   /* YSCH-23450.01 */
  (T3850400 = YSCH_23450_02_2009)   /* YSCH-23450.02 */
  (T3850500 = YSCH_23450_03_2009)   /* YSCH-23450.03 */
  (T4939000 = CV_COLLEGE_TYPE_01_2009)   /* CV_COLLEGE_TYPE.01 */
  (T4939100 = CV_COLLEGE_TYPE_02_2009)   /* CV_COLLEGE_TYPE.02 */
  (T4939200 = CV_COLLEGE_TYPE_03_2009)   /* CV_COLLEGE_TYPE.03 */
  (T5200100 = CV_COLLEGE_TYPE_01_2010)   /* CV_COLLEGE_TYPE.01 */
  (T5200200 = CV_COLLEGE_TYPE_02_2010)   /* CV_COLLEGE_TYPE.02 */
  (T5200300 = CV_COLLEGE_TYPE_03_2010)   /* CV_COLLEGE_TYPE.03 */
  (T5200400 = CV_COLLEGE_TYPE_04_2010)   /* CV_COLLEGE_TYPE.04 */
  (T5200500 = CV_COLLEGE_TYPE_05_2010)   /* CV_COLLEGE_TYPE.05 */
  (T5474900 = YSCH_23450_01_2010)   /* YSCH-23450.01 */
  (T5475000 = YSCH_23450_02_2010)   /* YSCH-23450.02 */
  (T5475100 = YSCH_23450_03_2010)   /* YSCH-23450.03 */
  (T6650100 = CV_COLLEGE_TYPE_01_2011)   /* CV_COLLEGE_TYPE.01 */
  (T6650200 = CV_COLLEGE_TYPE_02_2011)   /* CV_COLLEGE_TYPE.02 */
  (T6650300 = CV_COLLEGE_TYPE_03_2011)   /* CV_COLLEGE_TYPE.03 */
  (T6650400 = CV_COLLEGE_TYPE_04_2011)   /* CV_COLLEGE_TYPE.04 */
  (T6887400 = YSCH_23450_01_2011)   /* YSCH-23450.01 */
  (T6887500 = YSCH_23450_02_2011)   /* YSCH-23450.02 */
  (T8122100 = CV_COLLEGE_TYPE_01_2013)   /* CV_COLLEGE_TYPE.01 */
  (T8122200 = CV_COLLEGE_TYPE_02_2013)   /* CV_COLLEGE_TYPE.02 */
  (T8122300 = CV_COLLEGE_TYPE_03_2013)   /* CV_COLLEGE_TYPE.03 */
  (T8122400 = CV_COLLEGE_TYPE_04_2013)   /* CV_COLLEGE_TYPE.04 */
  (T8382300 = YSCH_23450_01_2013)   /* YSCH-23450.01 */
  (T8382400 = YSCH_23450_02_2013)   /* YSCH-23450.02 */
  (T8382500 = YSCH_23450_03_2013)   /* YSCH-23450.03 */
  (U0000200 = CV_COLLEGE_TYPE_01_2015)   /* CV_COLLEGE_TYPE.01 */
  (U0000300 = CV_COLLEGE_TYPE_02_2015)   /* CV_COLLEGE_TYPE.02 */
  (U0000400 = CV_COLLEGE_TYPE_03_2015)   /* CV_COLLEGE_TYPE.03 */
  (U0000500 = CV_COLLEGE_TYPE_04_2015)   /* CV_COLLEGE_TYPE.04 */
  (U0248900 = YSCH_23450_01_2015)   /* YSCH-23450.01 */
  (U0249000 = YSCH_23450_02_2015)   /* YSCH-23450.02 */
  (U0956900 = YINC_1700_2015)   /* YINC-1700 */
  (U0957000 = YINC_1800_2015)   /* YINC-1800 */
  (U1836800 = CV_COLLEGE_TYPE_01_2017)   /* CV_COLLEGE_TYPE.01 */
  (U1836900 = CV_COLLEGE_TYPE_02_2017)   /* CV_COLLEGE_TYPE.02 */
  (U1837000 = CV_COLLEGE_TYPE_03_2017)   /* CV_COLLEGE_TYPE.03 */
  (U1837100 = CV_COLLEGE_TYPE_04_2017)   /* CV_COLLEGE_TYPE.04 */
  (U1837200 = CV_COLLEGE_TYPE_05_2017)   /* CV_COLLEGE_TYPE.05 */
  (U1837300 = CV_COLLEGE_TYPE_06_2017)   /* CV_COLLEGE_TYPE.06 */
  (U2166200 = YSCH_23450_01_2017)   /* YSCH-23450.01 */
  (U2166300 = YSCH_23450_02_2017)   /* YSCH-23450.02 */
  (U2166400 = YSCH_23450_03_2017)   /* YSCH-23450.03 */
  (U2166500 = YSCH_23450_04_2017)   /* YSCH-23450.04 */
  (U2857200 = YINC_1700_2017)   /* YINC-1700 */
  (U2857300 = YINC_1800_2017)   /* YINC-1800 */
  (U3436300 = CV_COLLEGE_TYPE_01_2019)   /* CV_COLLEGE_TYPE.01 */
  (U3436400 = CV_COLLEGE_TYPE_02_2019)   /* CV_COLLEGE_TYPE.02 */
  (U3436500 = CV_COLLEGE_TYPE_03_2019)   /* CV_COLLEGE_TYPE.03 */
  (U3436600 = CV_COLLEGE_TYPE_04_2019)   /* CV_COLLEGE_TYPE.04 */
  (U3436700 = CV_COLLEGE_TYPE_05_2019)   /* CV_COLLEGE_TYPE.05 */
  (U3572600 = YSCH_3112_2019)   /* YSCH-3112 */
  (U3658200 = YSCH_23450_01_2019)   /* YSCH-23450.01 */
  (U3658300 = YSCH_23450_02_2019)   /* YSCH-23450.02 */
  (U3658400 = YSCH_23450_03_2019)   /* YSCH-23450.03 */
  (U3658500 = YSCH_23450_04_2019)   /* YSCH-23450.04 */
  (U4282300 = YINC_1700_2019)   /* YINC-1700 */
  (U4282400 = YINC_1800_2019)   /* YINC-1800 */
  (Z9033700 = CVC_SAT_MATH_SCORE_2007_XRND) 
  (Z9033900 = CVC_SAT_VERBAL_SCORE_2007_XRND) 
  (Z9034100 = CVC_ACT_SCORE_2007_XRND) 
  (Z9083800 = CVC_HGC_EVER_XRND) 
  (Z9083900 = CVC_HIGHEST_DEGREE_EVER_XRND) 
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=R0000100, 
  R0536300, 
  R0536401, 
  R0536402, 
  R1204500, 
  R1235800, 
  R1250600, 
  R1302400, 
  R1302500, 
  R1482600, 
  R1770300, 
  R1770400, 
  R1770500, 
  R1770600, 
  R2609100, 
  R2609200, 
  R2609300, 
  R2609400, 
  R2609500, 
  R3069900, 
  R3070000, 
  R3070100, 
  R3939900, 
  R3940000, 
  R3940100, 
  R3940200, 
  R3940300, 
  R4355300, 
  R4355400, 
  R4355500, 
  R5535400, 
  R5535500, 
  R5535600, 
  R5535700, 
  R6030500, 
  R6030600, 
  R6030700, 
  R6030800, 
  R6030900, 
  R6031000, 
  R7295900, 
  R7296000, 
  R7296100, 
  R7296200, 
  R7296300, 
  R7296400, 
  R9829600, 
  S0443300, 
  S0443400, 
  S0443500, 
  S0443600, 
  S1618800, 
  S1618900, 
  S1619000, 
  S1619100, 
  S1999000, 
  S1999100, 
  S1999200, 
  S1999300, 
  S1999400, 
  S2471900, 
  S2472000, 
  S2472100, 
  S3799000, 
  S3799100, 
  S3799200, 
  S3799300, 
  S4213100, 
  S4213200, 
  S4213300, 
  S5399000, 
  S5399100, 
  S5399200, 
  S5399300, 
  S5805500, 
  S5805600, 
  S5805700, 
  S7499000, 
  S7499100, 
  S7499200, 
  S7499300, 
  S7499400, 
  S7894000, 
  S7894100, 
  S7894200, 
  S7894300, 
  S7894400, 
  S9999000, 
  S9999100, 
  S9999200, 
  S9999300, 
  S9999400, 
  T0307500, 
  T0307600, 
  T0307700, 
  T1999000, 
  T1999100, 
  T1999200, 
  T1999300, 
  T1999400, 
  T1999500, 
  T1999600, 
  T1999700, 
  T2323800, 
  T2323900, 
  T2324000, 
  T3850300, 
  T3850400, 
  T3850500, 
  T4939000, 
  T4939100, 
  T4939200, 
  T5200100, 
  T5200200, 
  T5200300, 
  T5200400, 
  T5200500, 
  T5474900, 
  T5475000, 
  T5475100, 
  T6650100, 
  T6650200, 
  T6650300, 
  T6650400, 
  T6887400, 
  T6887500, 
  T8122100, 
  T8122200, 
  T8122300, 
  T8122400, 
  T8382300, 
  T8382400, 
  T8382500, 
  U0000200, 
  U0000300, 
  U0000400, 
  U0000500, 
  U0248900, 
  U0249000, 
  U0956900, 
  U0957000, 
  U1836800, 
  U1836900, 
  U1837000, 
  U1837100, 
  U1837200, 
  U1837300, 
  U2166200, 
  U2166300, 
  U2166400, 
  U2166500, 
  U2857200, 
  U2857300, 
  U3436300, 
  U3436400, 
  U3436500, 
  U3436600, 
  U3436700, 
  U3572600, 
  U3658200, 
  U3658300, 
  U3658400, 
  U3658500, 
  U4282300, 
  U4282400, 
  Z9033700, 
  Z9033900, 
  Z9034100, 
  Z9083800, 
  Z9083900.

*--- Tabulations using qname variables.
*freq var=PUBID_1997, 
  KEY_SEX_1997, 
  KEY_BDATE_M_1997, 
  KEY_BDATE_Y_1997, 
  CV_INCOME_GROSS_YR_1997, 
  CV_SAMPLE_TYPE_1997, 
  CV_COLLEGE_TYPE_01_1997, 
  CV_HGC_BIO_DAD_1997, 
  CV_HGC_BIO_MOM_1997, 
  KEY_RACE_ETHNICITY_1997, 
  YSCH_23450_01_1998, 
  YSCH_23450_02_1998, 
  YSCH_23450_03_1998, 
  YSCH_23450_04_1998, 
  CV_COLLEGE_TYPE_01_1998, 
  CV_COLLEGE_TYPE_02_1998, 
  CV_COLLEGE_TYPE_03_1998, 
  CV_COLLEGE_TYPE_04_1998, 
  CV_COLLEGE_TYPE_05_1998, 
  YSCH_23450_01_1999, 
  YSCH_23450_02_1999, 
  YSCH_23450_03_1999, 
  CV_COLLEGE_TYPE_01_1999, 
  CV_COLLEGE_TYPE_02_1999, 
  CV_COLLEGE_TYPE_03_1999, 
  CV_COLLEGE_TYPE_04_1999, 
  CV_COLLEGE_TYPE_05_1999, 
  YSCH_23450_01_2000, 
  YSCH_23450_02_2000, 
  YSCH_23450_03_2000, 
  CV_COLLEGE_TYPE_01_2000, 
  CV_COLLEGE_TYPE_02_2000, 
  CV_COLLEGE_TYPE_03_2000, 
  CV_COLLEGE_TYPE_04_2000, 
  YSCH_23450_01_2001, 
  YSCH_23450_02_2001, 
  YSCH_23450_03_2001, 
  YSCH_23450_04_2001, 
  YSCH_23450_05_2001, 
  YSCH_23450_06_2001, 
  CV_COLLEGE_TYPE_01_2001, 
  CV_COLLEGE_TYPE_02_2001, 
  CV_COLLEGE_TYPE_03_2001, 
  CV_COLLEGE_TYPE_04_2001, 
  CV_COLLEGE_TYPE_05_2001, 
  CV_COLLEGE_TYPE_06_2001, 
  ASVAB_MATH_VERBAL_SCORE_PCT_1999, 
  YSCH_23450_01_2002, 
  YSCH_23450_02_2002, 
  YSCH_23450_03_2002, 
  YSCH_23450_05_2002, 
  CV_COLLEGE_TYPE_01_2002, 
  CV_COLLEGE_TYPE_02_2002, 
  CV_COLLEGE_TYPE_03_2002, 
  CV_COLLEGE_TYPE_04_2002, 
  CV_COLLEGE_TYPE_01_2003, 
  CV_COLLEGE_TYPE_02_2003, 
  CV_COLLEGE_TYPE_03_2003, 
  CV_COLLEGE_TYPE_04_2003, 
  CV_COLLEGE_TYPE_05_2003, 
  YSCH_23450_01_2003, 
  YSCH_23450_02_2003, 
  YSCH_23450_03_2003, 
  CV_COLLEGE_TYPE_01_2004, 
  CV_COLLEGE_TYPE_02_2004, 
  CV_COLLEGE_TYPE_03_2004, 
  CV_COLLEGE_TYPE_04_2004, 
  YSCH_23450_01_2004, 
  YSCH_23450_02_2004, 
  YSCH_23450_03_2004, 
  CV_COLLEGE_TYPE_01_2005, 
  CV_COLLEGE_TYPE_02_2005, 
  CV_COLLEGE_TYPE_03_2005, 
  CV_COLLEGE_TYPE_04_2005, 
  YSCH_23450_01_2005, 
  YSCH_23450_02_2005, 
  YSCH_23450_03_2005, 
  CV_COLLEGE_TYPE_01_2006, 
  CV_COLLEGE_TYPE_02_2006, 
  CV_COLLEGE_TYPE_03_2006, 
  CV_COLLEGE_TYPE_04_2006, 
  CV_COLLEGE_TYPE_05_2006, 
  YSCH_23450_01_2006, 
  YSCH_23450_02_2006, 
  YSCH_23450_03_2006, 
  YSCH_23450_04_2006, 
  YSCH_23450_05_2006, 
  CV_COLLEGE_TYPE_01_2007, 
  CV_COLLEGE_TYPE_02_2007, 
  CV_COLLEGE_TYPE_03_2007, 
  CV_COLLEGE_TYPE_04_2007, 
  CV_COLLEGE_TYPE_05_2007, 
  YSCH_23450_01_2007, 
  YSCH_23450_02_2007, 
  YSCH_23450_03_2007, 
  CV_COLLEGE_TYPE_01_2008, 
  CV_COLLEGE_TYPE_02_2008, 
  CV_COLLEGE_TYPE_03_2008, 
  CV_COLLEGE_TYPE_04_2008, 
  CV_COLLEGE_TYPE_05_2008, 
  CV_COLLEGE_TYPE_06_2008, 
  CV_COLLEGE_TYPE_07_2008, 
  CV_COLLEGE_TYPE_08_2008, 
  YSCH_23450_01_2008, 
  YSCH_23450_02_2008, 
  YSCH_23450_03_2008, 
  YSCH_23450_01_2009, 
  YSCH_23450_02_2009, 
  YSCH_23450_03_2009, 
  CV_COLLEGE_TYPE_01_2009, 
  CV_COLLEGE_TYPE_02_2009, 
  CV_COLLEGE_TYPE_03_2009, 
  CV_COLLEGE_TYPE_01_2010, 
  CV_COLLEGE_TYPE_02_2010, 
  CV_COLLEGE_TYPE_03_2010, 
  CV_COLLEGE_TYPE_04_2010, 
  CV_COLLEGE_TYPE_05_2010, 
  YSCH_23450_01_2010, 
  YSCH_23450_02_2010, 
  YSCH_23450_03_2010, 
  CV_COLLEGE_TYPE_01_2011, 
  CV_COLLEGE_TYPE_02_2011, 
  CV_COLLEGE_TYPE_03_2011, 
  CV_COLLEGE_TYPE_04_2011, 
  YSCH_23450_01_2011, 
  YSCH_23450_02_2011, 
  CV_COLLEGE_TYPE_01_2013, 
  CV_COLLEGE_TYPE_02_2013, 
  CV_COLLEGE_TYPE_03_2013, 
  CV_COLLEGE_TYPE_04_2013, 
  YSCH_23450_01_2013, 
  YSCH_23450_02_2013, 
  YSCH_23450_03_2013, 
  CV_COLLEGE_TYPE_01_2015, 
  CV_COLLEGE_TYPE_02_2015, 
  CV_COLLEGE_TYPE_03_2015, 
  CV_COLLEGE_TYPE_04_2015, 
  YSCH_23450_01_2015, 
  YSCH_23450_02_2015, 
  YINC_1700_2015, 
  YINC_1800_2015, 
  CV_COLLEGE_TYPE_01_2017, 
  CV_COLLEGE_TYPE_02_2017, 
  CV_COLLEGE_TYPE_03_2017, 
  CV_COLLEGE_TYPE_04_2017, 
  CV_COLLEGE_TYPE_05_2017, 
  CV_COLLEGE_TYPE_06_2017, 
  YSCH_23450_01_2017, 
  YSCH_23450_02_2017, 
  YSCH_23450_03_2017, 
  YSCH_23450_04_2017, 
  YINC_1700_2017, 
  YINC_1800_2017, 
  CV_COLLEGE_TYPE_01_2019, 
  CV_COLLEGE_TYPE_02_2019, 
  CV_COLLEGE_TYPE_03_2019, 
  CV_COLLEGE_TYPE_04_2019, 
  CV_COLLEGE_TYPE_05_2019, 
  YSCH_3112_2019, 
  YSCH_23450_01_2019, 
  YSCH_23450_02_2019, 
  YSCH_23450_03_2019, 
  YSCH_23450_04_2019, 
  YINC_1700_2019, 
  YINC_1800_2019, 
  CVC_SAT_MATH_SCORE_2007_XRND, 
  CVC_SAT_VERBAL_SCORE_2007_XRND, 
  CVC_ACT_SCORE_2007_XRND, 
  CVC_HGC_EVER_XRND, 
  CVC_HIGHEST_DEGREE_EVER_XRND.
