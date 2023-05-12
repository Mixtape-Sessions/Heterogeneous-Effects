options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'mixtape.dat' lrecl=538 missover DSD DLM=' ' print;
input
  R0000100
  R0536300
  R0536401
  R0536402
  R1204500
  R1235800
  R1250600
  R1302400
  R1302500
  R1482600
  R1770300
  R1770400
  R1770500
  R1770600
  R2609100
  R2609200
  R2609300
  R2609400
  R2609500
  R3069900
  R3070000
  R3070100
  R3939900
  R3940000
  R3940100
  R3940200
  R3940300
  R4355300
  R4355400
  R4355500
  R5535400
  R5535500
  R5535600
  R5535700
  R6030500
  R6030600
  R6030700
  R6030800
  R6030900
  R6031000
  R7295900
  R7296000
  R7296100
  R7296200
  R7296300
  R7296400
  R9829600
  S0443300
  S0443400
  S0443500
  S0443600
  S1618800
  S1618900
  S1619000
  S1619100
  S1999000
  S1999100
  S1999200
  S1999300
  S1999400
  S2471900
  S2472000
  S2472100
  S3799000
  S3799100
  S3799200
  S3799300
  S4213100
  S4213200
  S4213300
  S5399000
  S5399100
  S5399200
  S5399300
  S5805500
  S5805600
  S5805700
  S7499000
  S7499100
  S7499200
  S7499300
  S7499400
  S7894000
  S7894100
  S7894200
  S7894300
  S7894400
  S9999000
  S9999100
  S9999200
  S9999300
  S9999400
  T0307500
  T0307600
  T0307700
  T1999000
  T1999100
  T1999200
  T1999300
  T1999400
  T1999500
  T1999600
  T1999700
  T2323800
  T2323900
  T2324000
  T3850300
  T3850400
  T3850500
  T4939000
  T4939100
  T4939200
  T5200100
  T5200200
  T5200300
  T5200400
  T5200500
  T5474900
  T5475000
  T5475100
  T6650100
  T6650200
  T6650300
  T6650400
  T6887400
  T6887500
  T8122100
  T8122200
  T8122300
  T8122400
  T8382300
  T8382400
  T8382500
  U0000200
  U0000300
  U0000400
  U0000500
  U0248900
  U0249000
  U0956900
  U0957000
  U1836800
  U1836900
  U1837000
  U1837100
  U1837200
  U1837300
  U2166200
  U2166300
  U2166400
  U2166500
  U2857200
  U2857300
  U3436300
  U3436400
  U3436500
  U3436600
  U3436700
  U3572600
  U3658200
  U3658300
  U3658400
  U3658500
  U4282300
  U4282400
  Z9033700
  Z9033900
  Z9034100
  Z9083800
  Z9083900
;
array nvarlist _numeric_;


*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -4 then nvarlist = .V;  /* Valid missing */
  if nvarlist = -5 then nvarlist = .N;  /* Non-interview */
end;

  label R0000100 = "PUBID - YTH ID CODE 1997";
  label R0536300 = "KEY!SEX (SYMBOL) 1997";
  label R0536401 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R0536402 = "KEY!BDATE M/Y (SYMBOL) 1997";
  label R1204500 = "CV_INCOME_GROSS_YR 1997";
  label R1235800 = "CV_SAMPLE_TYPE 1997";
  label R1250600 = "CV_COLLEGE_TYPE L1 1997";
  label R1302400 = "CV_HGC_BIO_DAD 1997";
  label R1302500 = "CV_HGC_BIO_MOM 1997";
  label R1482600 = "KEY!RACE_ETHNICITY (SYMBOL) 1997";
  label R1770300 = "DIPLOMA/DEGREE RCVD? L1 1998";
  label R1770400 = "DIPLOMA/DEGREE RCVD? L2 1998";
  label R1770500 = "DIPLOMA/DEGREE RCVD? L3 1998";
  label R1770600 = "DIPLOMA/DEGREE RCVD? L4 1998";
  label R2609100 = "CV_COLLEGE_TYPE L1 1998";
  label R2609200 = "CV_COLLEGE_TYPE L2 1998";
  label R2609300 = "CV_COLLEGE_TYPE L3 1998";
  label R2609400 = "CV_COLLEGE_TYPE L4 1998";
  label R2609500 = "CV_COLLEGE_TYPE L5 1998";
  label R3069900 = "DIPLOMA/DEGREE RCVD? L1 1999";
  label R3070000 = "DIPLOMA/DEGREE RCVD? L2 1999";
  label R3070100 = "DIPLOMA/DEGREE RCVD? L3 1999";
  label R3939900 = "CV_COLLEGE_TYPE L1 1999";
  label R3940000 = "CV_COLLEGE_TYPE L2 1999";
  label R3940100 = "CV_COLLEGE_TYPE L3 1999";
  label R3940200 = "CV_COLLEGE_TYPE L4 1999";
  label R3940300 = "CV_COLLEGE_TYPE L5 1999";
  label R4355300 = "DIPLOMA/DEGREE RCVD? L1 2000";
  label R4355400 = "DIPLOMA/DEGREE RCVD? L2 2000";
  label R4355500 = "DIPLOMA/DEGREE RCVD? L3 2000";
  label R5535400 = "CV_COLLEGE_TYPE L1 2000";
  label R5535500 = "CV_COLLEGE_TYPE L2 2000";
  label R5535600 = "CV_COLLEGE_TYPE L3 2000";
  label R5535700 = "CV_COLLEGE_TYPE L4 2000";
  label R6030500 = "DIPLOMA/DEGREE RCVD? L1 2001";
  label R6030600 = "DIPLOMA/DEGREE RCVD? L2 2001";
  label R6030700 = "DIPLOMA/DEGREE RCVD? L3 2001";
  label R6030800 = "DIPLOMA/DEGREE RCVD? L4 2001";
  label R6030900 = "DIPLOMA/DEGREE RCVD? L5 2001";
  label R6031000 = "DIPLOMA/DEGREE RCVD? L6 2001";
  label R7295900 = "CV_COLLEGE_TYPE L1 2001";
  label R7296000 = "CV_COLLEGE_TYPE L2 2001";
  label R7296100 = "CV_COLLEGE_TYPE L3 2001";
  label R7296200 = "CV_COLLEGE_TYPE L4 2001";
  label R7296300 = "CV_COLLEGE_TYPE L5 2001";
  label R7296400 = "CV_COLLEGE_TYPE L6 2001";
  label R9829600 = "ASVAB_MATH_VERBAL_SCORE_PCT 1999";
  label S0443300 = "DIPLOMA/DEGREE RCVD? L1 2002";
  label S0443400 = "DIPLOMA/DEGREE RCVD? L2 2002";
  label S0443500 = "DIPLOMA/DEGREE RCVD? L3 2002";
  label S0443600 = "DIPLOMA/DEGREE RCVD? L5 2002";
  label S1618800 = "CV_COLLEGE_TYPE L1 2002";
  label S1618900 = "CV_COLLEGE_TYPE L2 2002";
  label S1619000 = "CV_COLLEGE_TYPE L3 2002";
  label S1619100 = "CV_COLLEGE_TYPE L4 2002";
  label S1999000 = "CV_COLLEGE_TYPE L1 2003";
  label S1999100 = "CV_COLLEGE_TYPE L2 2003";
  label S1999200 = "CV_COLLEGE_TYPE L3 2003";
  label S1999300 = "CV_COLLEGE_TYPE L4 2003";
  label S1999400 = "CV_COLLEGE_TYPE L5 2003";
  label S2471900 = "DIPLOMA/DEGREE RCVD? L1 2003";
  label S2472000 = "DIPLOMA/DEGREE RCVD? L2 2003";
  label S2472100 = "DIPLOMA/DEGREE RCVD? L3 2003";
  label S3799000 = "CV_COLLEGE_TYPE L1 2004";
  label S3799100 = "CV_COLLEGE_TYPE L2 2004";
  label S3799200 = "CV_COLLEGE_TYPE L3 2004";
  label S3799300 = "CV_COLLEGE_TYPE L4 2004";
  label S4213100 = "DIPLOMA/DEGREE RCVD? L1 2004";
  label S4213200 = "DIPLOMA/DEGREE RCVD? L2 2004";
  label S4213300 = "DIPLOMA/DEGREE RCVD? L3 2004";
  label S5399000 = "CV_COLLEGE_TYPE L1 2005";
  label S5399100 = "CV_COLLEGE_TYPE L2 2005";
  label S5399200 = "CV_COLLEGE_TYPE L3 2005";
  label S5399300 = "CV_COLLEGE_TYPE L4 2005";
  label S5805500 = "DIPLOMA/DEGREE RCVD? L1 2005";
  label S5805600 = "DIPLOMA/DEGREE RCVD? L2 2005";
  label S5805700 = "DIPLOMA/DEGREE RCVD? L3 2005";
  label S7499000 = "CV_COLLEGE_TYPE L1 2006";
  label S7499100 = "CV_COLLEGE_TYPE L2 2006";
  label S7499200 = "CV_COLLEGE_TYPE L3 2006";
  label S7499300 = "CV_COLLEGE_TYPE L4 2006";
  label S7499400 = "CV_COLLEGE_TYPE L5 2006";
  label S7894000 = "DIPLOMA/DEGREE RCVD? L1 2006";
  label S7894100 = "DIPLOMA/DEGREE RCVD? L2 2006";
  label S7894200 = "DIPLOMA/DEGREE RCVD? L3 2006";
  label S7894300 = "DIPLOMA/DEGREE RCVD? L4 2006";
  label S7894400 = "DIPLOMA/DEGREE RCVD? L5 2006";
  label S9999000 = "CV_COLLEGE_TYPE L1 2007";
  label S9999100 = "CV_COLLEGE_TYPE L2 2007";
  label S9999200 = "CV_COLLEGE_TYPE L3 2007";
  label S9999300 = "CV_COLLEGE_TYPE L4 2007";
  label S9999400 = "CV_COLLEGE_TYPE L5 2007";
  label T0307500 = "DIPLOMA/DEGREE RCVD? L1 2007";
  label T0307600 = "DIPLOMA/DEGREE RCVD? L2 2007";
  label T0307700 = "DIPLOMA/DEGREE RCVD? L3 2007";
  label T1999000 = "CV_COLLEGE_TYPE L1 2008";
  label T1999100 = "CV_COLLEGE_TYPE L2 2008";
  label T1999200 = "CV_COLLEGE_TYPE L3 2008";
  label T1999300 = "CV_COLLEGE_TYPE L4 2008";
  label T1999400 = "CV_COLLEGE_TYPE L5 2008";
  label T1999500 = "CV_COLLEGE_TYPE L6 2008";
  label T1999600 = "CV_COLLEGE_TYPE L7 2008";
  label T1999700 = "CV_COLLEGE_TYPE L8 2008";
  label T2323800 = "DIPLOMA/DEGREE RCVD? L1 2008";
  label T2323900 = "DIPLOMA/DEGREE RCVD? L2 2008";
  label T2324000 = "DIPLOMA/DEGREE RCVD? L3 2008";
  label T3850300 = "DIPLOMA/DEGREE RCVD? L1 2009";
  label T3850400 = "DIPLOMA/DEGREE RCVD? L2 2009";
  label T3850500 = "DIPLOMA/DEGREE RCVD? L3 2009";
  label T4939000 = "CV_COLLEGE_TYPE L1 2009";
  label T4939100 = "CV_COLLEGE_TYPE L2 2009";
  label T4939200 = "CV_COLLEGE_TYPE L3 2009";
  label T5200100 = "CV_COLLEGE_TYPE L1 2010";
  label T5200200 = "CV_COLLEGE_TYPE L2 2010";
  label T5200300 = "CV_COLLEGE_TYPE L3 2010";
  label T5200400 = "CV_COLLEGE_TYPE L4 2010";
  label T5200500 = "CV_COLLEGE_TYPE L5 2010";
  label T5474900 = "DIPLOMA/DEGREE RCVD? L1 2010";
  label T5475000 = "DIPLOMA/DEGREE RCVD? L2 2010";
  label T5475100 = "DIPLOMA/DEGREE RCVD? L3 2010";
  label T6650100 = "CV_COLLEGE_TYPE L1 2011";
  label T6650200 = "CV_COLLEGE_TYPE L2 2011";
  label T6650300 = "CV_COLLEGE_TYPE L3 2011";
  label T6650400 = "CV_COLLEGE_TYPE L4 2011";
  label T6887400 = "DIPLOMA/DEGREE RCVD? L1 2011";
  label T6887500 = "DIPLOMA/DEGREE RCVD? L2 2011";
  label T8122100 = "CV_COLLEGE_TYPE L1 2013";
  label T8122200 = "CV_COLLEGE_TYPE L2 2013";
  label T8122300 = "CV_COLLEGE_TYPE L3 2013";
  label T8122400 = "CV_COLLEGE_TYPE L4 2013";
  label T8382300 = "DIPLOMA/DEGREE RCVD? L1 2013";
  label T8382400 = "DIPLOMA/DEGREE RCVD? L2 2013";
  label T8382500 = "DIPLOMA/DEGREE RCVD? L3 2013";
  label U0000200 = "CV_COLLEGE_TYPE L1 2015";
  label U0000300 = "CV_COLLEGE_TYPE L2 2015";
  label U0000400 = "CV_COLLEGE_TYPE L3 2015";
  label U0000500 = "CV_COLLEGE_TYPE L4 2015";
  label U0248900 = "DIPLOMA/DEGREE RCVD? L1 2015";
  label U0249000 = "DIPLOMA/DEGREE RCVD? L2 2015";
  label U0956900 = "TTL INC WAGES, SALARY PAST YR 2015";
  label U0957000 = "EST INC WAGES, TIPS PAST YR 2015";
  label U1836800 = "CV_COLLEGE_TYPE L1 2017";
  label U1836900 = "CV_COLLEGE_TYPE L2 2017";
  label U1837000 = "CV_COLLEGE_TYPE L3 2017";
  label U1837100 = "CV_COLLEGE_TYPE L4 2017";
  label U1837200 = "CV_COLLEGE_TYPE L5 2017";
  label U1837300 = "CV_COLLEGE_TYPE L6 2017";
  label U2166200 = "DIPLOMA/DEGREE RCVD? L1 2017";
  label U2166300 = "DIPLOMA/DEGREE RCVD? L2 2017";
  label U2166400 = "DIPLOMA/DEGREE RCVD? L3 2017";
  label U2166500 = "DIPLOMA/DEGREE RCVD? L4 2017";
  label U2857200 = "TTL INC WAGES, SALARY PAST YR 2017";
  label U2857300 = "EST INC WAGES, TIPS PAST YR 2017";
  label U3436300 = "CV_COLLEGE_TYPE L1 2019";
  label U3436400 = "CV_COLLEGE_TYPE L2 2019";
  label U3436500 = "CV_COLLEGE_TYPE L3 2019";
  label U3436600 = "CV_COLLEGE_TYPE L4 2019";
  label U3436700 = "CV_COLLEGE_TYPE L5 2019";
  label U3572600 = "WHAT IS CURR HGC? 2019";
  label U3658200 = "DIPLOMA/DEGREE RCVD? L1 2019";
  label U3658300 = "DIPLOMA/DEGREE RCVD? L2 2019";
  label U3658400 = "DIPLOMA/DEGREE RCVD? L3 2019";
  label U3658500 = "DIPLOMA/DEGREE RCVD? L4 2019";
  label U4282300 = "TTL INC WAGES, SALARY PAST YR 2019";
  label U4282400 = "EST INC WAGES, TIPS PAST YR 2019";
  label Z9033700 = "CVC_SAT_MATH_SCORE_2007";
  label Z9033900 = "CVC_SAT_VERBAL_SCORE_2007";
  label Z9034100 = "CVC_ACT_SCORE_2007";
  label Z9083800 = "CVC_HGC_EVER";
  label Z9083900 = "CVC_HIGHEST_DEGREE_EVER";

/*---------------------------------------------------------------------*
 *  Crosswalk for Reference number & Question name                     *
 *---------------------------------------------------------------------*
 * Uncomment and edit this RENAME statement to rename variables
 * for ease of use.  You may need to use  name literal strings
 * e.g.  'variable-name'n   to create valid SAS variable names, or 
 * alter variables similarly named across years.
 * This command does not guarantee uniqueness

 * See SAS documentation for use of name literals and use of the
 * VALIDVARNAME=ANY option.     
 *---------------------------------------------------------------------*/
  /* *start* */

* RENAME
  R0000100 = 'PUBID_1997'n
  R0536300 = 'KEY!SEX_1997'n
  R0536401 = 'KEY!BDATE_M_1997'n
  R0536402 = 'KEY!BDATE_Y_1997'n
  R1204500 = 'CV_INCOME_GROSS_YR_1997'n
  R1235800 = 'CV_SAMPLE_TYPE_1997'n
  R1250600 = 'CV_COLLEGE_TYPE.01_1997'n
  R1302400 = 'CV_HGC_BIO_DAD_1997'n
  R1302500 = 'CV_HGC_BIO_MOM_1997'n
  R1482600 = 'KEY!RACE_ETHNICITY_1997'n
  R1770300 = 'YSCH-23450.01_1998'n
  R1770400 = 'YSCH-23450.02_1998'n
  R1770500 = 'YSCH-23450.03_1998'n
  R1770600 = 'YSCH-23450.04_1998'n
  R2609100 = 'CV_COLLEGE_TYPE.01_1998'n
  R2609200 = 'CV_COLLEGE_TYPE.02_1998'n
  R2609300 = 'CV_COLLEGE_TYPE.03_1998'n
  R2609400 = 'CV_COLLEGE_TYPE.04_1998'n
  R2609500 = 'CV_COLLEGE_TYPE.05_1998'n
  R3069900 = 'YSCH-23450.01_1999'n
  R3070000 = 'YSCH-23450.02_1999'n
  R3070100 = 'YSCH-23450.03_1999'n
  R3939900 = 'CV_COLLEGE_TYPE.01_1999'n
  R3940000 = 'CV_COLLEGE_TYPE.02_1999'n
  R3940100 = 'CV_COLLEGE_TYPE.03_1999'n
  R3940200 = 'CV_COLLEGE_TYPE.04_1999'n
  R3940300 = 'CV_COLLEGE_TYPE.05_1999'n
  R4355300 = 'YSCH-23450.01_2000'n
  R4355400 = 'YSCH-23450.02_2000'n
  R4355500 = 'YSCH-23450.03_2000'n
  R5535400 = 'CV_COLLEGE_TYPE.01_2000'n
  R5535500 = 'CV_COLLEGE_TYPE.02_2000'n
  R5535600 = 'CV_COLLEGE_TYPE.03_2000'n
  R5535700 = 'CV_COLLEGE_TYPE.04_2000'n
  R6030500 = 'YSCH-23450.01_2001'n
  R6030600 = 'YSCH-23450.02_2001'n
  R6030700 = 'YSCH-23450.03_2001'n
  R6030800 = 'YSCH-23450.04_2001'n
  R6030900 = 'YSCH-23450.05_2001'n
  R6031000 = 'YSCH-23450.06_2001'n
  R7295900 = 'CV_COLLEGE_TYPE.01_2001'n
  R7296000 = 'CV_COLLEGE_TYPE.02_2001'n
  R7296100 = 'CV_COLLEGE_TYPE.03_2001'n
  R7296200 = 'CV_COLLEGE_TYPE.04_2001'n
  R7296300 = 'CV_COLLEGE_TYPE.05_2001'n
  R7296400 = 'CV_COLLEGE_TYPE.06_2001'n
  R9829600 = 'ASVAB_MATH_VERBAL_SCORE_PCT_1999'n
  S0443300 = 'YSCH-23450.01_2002'n
  S0443400 = 'YSCH-23450.02_2002'n
  S0443500 = 'YSCH-23450.03_2002'n
  S0443600 = 'YSCH-23450.05_2002'n
  S1618800 = 'CV_COLLEGE_TYPE.01_2002'n
  S1618900 = 'CV_COLLEGE_TYPE.02_2002'n
  S1619000 = 'CV_COLLEGE_TYPE.03_2002'n
  S1619100 = 'CV_COLLEGE_TYPE.04_2002'n
  S1999000 = 'CV_COLLEGE_TYPE.01_2003'n
  S1999100 = 'CV_COLLEGE_TYPE.02_2003'n
  S1999200 = 'CV_COLLEGE_TYPE.03_2003'n
  S1999300 = 'CV_COLLEGE_TYPE.04_2003'n
  S1999400 = 'CV_COLLEGE_TYPE.05_2003'n
  S2471900 = 'YSCH-23450.01_2003'n
  S2472000 = 'YSCH-23450.02_2003'n
  S2472100 = 'YSCH-23450.03_2003'n
  S3799000 = 'CV_COLLEGE_TYPE.01_2004'n
  S3799100 = 'CV_COLLEGE_TYPE.02_2004'n
  S3799200 = 'CV_COLLEGE_TYPE.03_2004'n
  S3799300 = 'CV_COLLEGE_TYPE.04_2004'n
  S4213100 = 'YSCH-23450.01_2004'n
  S4213200 = 'YSCH-23450.02_2004'n
  S4213300 = 'YSCH-23450.03_2004'n
  S5399000 = 'CV_COLLEGE_TYPE.01_2005'n
  S5399100 = 'CV_COLLEGE_TYPE.02_2005'n
  S5399200 = 'CV_COLLEGE_TYPE.03_2005'n
  S5399300 = 'CV_COLLEGE_TYPE.04_2005'n
  S5805500 = 'YSCH-23450.01_2005'n
  S5805600 = 'YSCH-23450.02_2005'n
  S5805700 = 'YSCH-23450.03_2005'n
  S7499000 = 'CV_COLLEGE_TYPE.01_2006'n
  S7499100 = 'CV_COLLEGE_TYPE.02_2006'n
  S7499200 = 'CV_COLLEGE_TYPE.03_2006'n
  S7499300 = 'CV_COLLEGE_TYPE.04_2006'n
  S7499400 = 'CV_COLLEGE_TYPE.05_2006'n
  S7894000 = 'YSCH-23450.01_2006'n
  S7894100 = 'YSCH-23450.02_2006'n
  S7894200 = 'YSCH-23450.03_2006'n
  S7894300 = 'YSCH-23450.04_2006'n
  S7894400 = 'YSCH-23450.05_2006'n
  S9999000 = 'CV_COLLEGE_TYPE.01_2007'n
  S9999100 = 'CV_COLLEGE_TYPE.02_2007'n
  S9999200 = 'CV_COLLEGE_TYPE.03_2007'n
  S9999300 = 'CV_COLLEGE_TYPE.04_2007'n
  S9999400 = 'CV_COLLEGE_TYPE.05_2007'n
  T0307500 = 'YSCH-23450.01_2007'n
  T0307600 = 'YSCH-23450.02_2007'n
  T0307700 = 'YSCH-23450.03_2007'n
  T1999000 = 'CV_COLLEGE_TYPE.01_2008'n
  T1999100 = 'CV_COLLEGE_TYPE.02_2008'n
  T1999200 = 'CV_COLLEGE_TYPE.03_2008'n
  T1999300 = 'CV_COLLEGE_TYPE.04_2008'n
  T1999400 = 'CV_COLLEGE_TYPE.05_2008'n
  T1999500 = 'CV_COLLEGE_TYPE.06_2008'n
  T1999600 = 'CV_COLLEGE_TYPE.07_2008'n
  T1999700 = 'CV_COLLEGE_TYPE.08_2008'n
  T2323800 = 'YSCH-23450.01_2008'n
  T2323900 = 'YSCH-23450.02_2008'n
  T2324000 = 'YSCH-23450.03_2008'n
  T3850300 = 'YSCH-23450.01_2009'n
  T3850400 = 'YSCH-23450.02_2009'n
  T3850500 = 'YSCH-23450.03_2009'n
  T4939000 = 'CV_COLLEGE_TYPE.01_2009'n
  T4939100 = 'CV_COLLEGE_TYPE.02_2009'n
  T4939200 = 'CV_COLLEGE_TYPE.03_2009'n
  T5200100 = 'CV_COLLEGE_TYPE.01_2010'n
  T5200200 = 'CV_COLLEGE_TYPE.02_2010'n
  T5200300 = 'CV_COLLEGE_TYPE.03_2010'n
  T5200400 = 'CV_COLLEGE_TYPE.04_2010'n
  T5200500 = 'CV_COLLEGE_TYPE.05_2010'n
  T5474900 = 'YSCH-23450.01_2010'n
  T5475000 = 'YSCH-23450.02_2010'n
  T5475100 = 'YSCH-23450.03_2010'n
  T6650100 = 'CV_COLLEGE_TYPE.01_2011'n
  T6650200 = 'CV_COLLEGE_TYPE.02_2011'n
  T6650300 = 'CV_COLLEGE_TYPE.03_2011'n
  T6650400 = 'CV_COLLEGE_TYPE.04_2011'n
  T6887400 = 'YSCH-23450.01_2011'n
  T6887500 = 'YSCH-23450.02_2011'n
  T8122100 = 'CV_COLLEGE_TYPE.01_2013'n
  T8122200 = 'CV_COLLEGE_TYPE.02_2013'n
  T8122300 = 'CV_COLLEGE_TYPE.03_2013'n
  T8122400 = 'CV_COLLEGE_TYPE.04_2013'n
  T8382300 = 'YSCH-23450.01_2013'n
  T8382400 = 'YSCH-23450.02_2013'n
  T8382500 = 'YSCH-23450.03_2013'n
  U0000200 = 'CV_COLLEGE_TYPE.01_2015'n
  U0000300 = 'CV_COLLEGE_TYPE.02_2015'n
  U0000400 = 'CV_COLLEGE_TYPE.03_2015'n
  U0000500 = 'CV_COLLEGE_TYPE.04_2015'n
  U0248900 = 'YSCH-23450.01_2015'n
  U0249000 = 'YSCH-23450.02_2015'n
  U0956900 = 'YINC-1700_2015'n
  U0957000 = 'YINC-1800_2015'n
  U1836800 = 'CV_COLLEGE_TYPE.01_2017'n
  U1836900 = 'CV_COLLEGE_TYPE.02_2017'n
  U1837000 = 'CV_COLLEGE_TYPE.03_2017'n
  U1837100 = 'CV_COLLEGE_TYPE.04_2017'n
  U1837200 = 'CV_COLLEGE_TYPE.05_2017'n
  U1837300 = 'CV_COLLEGE_TYPE.06_2017'n
  U2166200 = 'YSCH-23450.01_2017'n
  U2166300 = 'YSCH-23450.02_2017'n
  U2166400 = 'YSCH-23450.03_2017'n
  U2166500 = 'YSCH-23450.04_2017'n
  U2857200 = 'YINC-1700_2017'n
  U2857300 = 'YINC-1800_2017'n
  U3436300 = 'CV_COLLEGE_TYPE.01_2019'n
  U3436400 = 'CV_COLLEGE_TYPE.02_2019'n
  U3436500 = 'CV_COLLEGE_TYPE.03_2019'n
  U3436600 = 'CV_COLLEGE_TYPE.04_2019'n
  U3436700 = 'CV_COLLEGE_TYPE.05_2019'n
  U3572600 = 'YSCH-3112_2019'n
  U3658200 = 'YSCH-23450.01_2019'n
  U3658300 = 'YSCH-23450.02_2019'n
  U3658400 = 'YSCH-23450.03_2019'n
  U3658500 = 'YSCH-23450.04_2019'n
  U4282300 = 'YINC-1700_2019'n
  U4282400 = 'YINC-1800_2019'n
  Z9033700 = 'CVC_SAT_MATH_SCORE_2007_XRND'n
  Z9033900 = 'CVC_SAT_VERBAL_SCORE_2007_XRND'n
  Z9034100 = 'CVC_ACT_SCORE_2007_XRND'n
  Z9083800 = 'CVC_HGC_EVER_XRND'n
  Z9083900 = 'CVC_HIGHEST_DEGREE_EVER_XRND'n
;
  /* *finish* */

run;

proc means data=new_data n mean min max;
run;


/*---------------------------------------------------------------------*
 *  FORMATTED TABULATIONS                                              *
 *---------------------------------------------------------------------*
 * You can uncomment and edit the PROC FORMAT and PROC FREQ statements 
 * provided below to obtain formatted tabulations. The tabulations 
 * should reflect codebook values.
 * 
 * Please edit the formats below reflect any renaming of the variables
 * you may have done in the first data step. 
 *---------------------------------------------------------------------*/

/*
proc format; 
value vx0f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
;
value vx1f
  1='Male'
  2='Female'
  0='No Information'
;
value vx2f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx4f
  -999999--3000='-999999 TO -3000: < -2999'
  -2999--2000='-2999 TO -2000'
  -1999--1000='-1999 TO -1000'
  -999--1='-999 TO -1'
  0='0'
  1-1000='1 TO 1000'
  1001-2000='1001 TO 2000'
  2001-3000='2001 TO 3000'
  3001-5000='3001 TO 5000'
  5001-10000='5001 TO 10000'
  10001-20000='10001 TO 20000'
  20001-30000='20001 TO 30000'
  30001-40000='30001 TO 40000'
  40001-50000='40001 TO 50000'
  50001-65000='50001 TO 65000'
  65001-80000='65001 TO 80000'
  80001-100000='80001 TO 100000'
  100001-150000='100001 TO 150000'
  150001-200000='150001 TO 200000'
  200001-999999='200001 TO 999999: 200001+'
;
value vx5f
  1='Cross-sectional'
  0='Oversample'
;
value vx6f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx7f
  0='NONE'
  1='1ST GRADE'
  2='2ND GRADE'
  3='3RD GRADE'
  4='4TH GRADE'
  5='5TH GRADE'
  6='6TH GRADE'
  7='7TH GRADE'
  8='8TH GRADE'
  9='9TH GRADE'
  10='10TH GRADE'
  11='11TH GRADE'
  12='12TH GRADE'
  13='1ST YEAR COLLEGE'
  14='2ND YEAR COLLEGE'
  15='3RD YEAR COLLEGE'
  16='4TH YEAR COLLEGE'
  17='5TH YEAR COLLEGE'
  18='6TH YEAR COLLEGE'
  19='7TH YEAR COLLEGE'
  20='8TH YEAR COLLEGE OR MORE'
  95='UNGRADED'
;
value vx8f
  0='NONE'
  1='1ST GRADE'
  2='2ND GRADE'
  3='3RD GRADE'
  4='4TH GRADE'
  5='5TH GRADE'
  6='6TH GRADE'
  7='7TH GRADE'
  8='8TH GRADE'
  9='9TH GRADE'
  10='10TH GRADE'
  11='11TH GRADE'
  12='12TH GRADE'
  13='1ST YEAR COLLEGE'
  14='2ND YEAR COLLEGE'
  15='3RD YEAR COLLEGE'
  16='4TH YEAR COLLEGE'
  17='5TH YEAR COLLEGE'
  18='6TH YEAR COLLEGE'
  19='7TH YEAR COLLEGE'
  20='8TH YEAR COLLEGE OR MORE'
  95='UNGRADED'
;
value vx9f
  1='Black'
  2='Hispanic'
  3='Mixed Race (Non-Hispanic)'
  4='Non-Black / Non-Hispanic'
;
value vx10f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
;
value vx11f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
;
value vx12f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
;
value vx13f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
;
value vx14f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx15f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx16f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx17f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx18f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx19f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
;
value vx20f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
;
value vx21f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
;
value vx22f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx23f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx24f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx25f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx26f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx27f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx28f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx29f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx30f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx31f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx32f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx33f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx34f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx35f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx36f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx37f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx38f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx39f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx40f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx41f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx42f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx43f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx44f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx45f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx46f
  0='0'
  1-999='1 TO 999: .001-.999'
  1000-19999='1000 TO 19999: 1.000-19.999'
  20000-39999='20000 TO 39999: 20.000-39.999'
  40000-59999='40000 TO 59999: 40.000-59.999'
  60000-79999='60000 TO 79999: 60.000-79.999'
  80000-100000='80000 TO 100000: 80.000-100.000'
;
value vx47f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='OTHER - RECODED TO GED'
  995='SUPERVISOR REVIEW'
  999='UNCODABLE'
;
value vx48f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='OTHER - RECODED TO GED'
  995='SUPERVISOR REVIEW'
  999='UNCODABLE'
;
value vx49f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='OTHER - RECODED TO GED'
  995='SUPERVISOR REVIEW'
  999='UNCODABLE'
;
value vx50f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='OTHER - RECODED TO GED'
  995='SUPERVISOR REVIEW'
  999='UNCODABLE'
;
value vx51f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx52f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx53f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx54f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx55f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx56f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx57f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx58f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx59f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx60f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx61f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx62f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx63f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx64f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx65f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx66f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx67f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx68f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx69f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx70f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx71f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx72f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx73f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx74f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx75f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx76f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx77f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx78f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx79f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx80f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx81f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx82f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx83f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx84f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx85f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx86f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx87f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx88f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx89f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx90f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx91f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx92f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx93f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx94f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx95f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx96f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx97f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx98f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx99f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx100f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx101f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx102f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx103f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx104f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx105f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx106f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx107f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx108f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx109f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx110f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx111f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx112f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx113f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx114f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx115f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx116f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx117f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx118f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx119f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx120f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx121f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx122f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx123f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx124f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx125f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or  unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODABLE'
;
value vx126f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx127f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx128f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx129f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx130f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='Added in - GED'
  10='OTHER - RECODED TO No degree received'
  999='UNCODABLE'
;
value vx131f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='Added in - GED'
  10='OTHER - RECODED TO No degree received'
  999='UNCODABLE'
;
value vx132f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='Added in - GED'
  10='OTHER - RECODED TO No degree received'
  999='UNCODABLE'
;
value vx133f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx134f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx135f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx136f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx137f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx138f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx139f
  0='0'
  1-999='1 TO 999'
  1000-1999='1000 TO 1999'
  2000-2999='2000 TO 2999'
  3000-3999='3000 TO 3999'
  4000-4999='4000 TO 4999'
  5000-5999='5000 TO 5999'
  6000-6999='6000 TO 6999'
  7000-7999='7000 TO 7999'
  8000-8999='8000 TO 8999'
  9000-9999='9000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-49999='25000 TO 49999'
  50000-99999999='50000 TO 99999999: 50000+'
;
value vx140f
  1='A. $1 - $5,000'
  2='B. $5,001 - $10,000'
  3='C. $10,001 - $25,000'
  4='D. $25,001 - $50,000'
  5='E. $50,001 - $100,000'
  6='F. $100,001 - $250,000'
  7='G. More than $250,000'
;
value vx141f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx142f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx143f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx144f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx145f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx146f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx147f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx148f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx149f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx150f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='GED'
  999='UNCODEABLE'
;
value vx151f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-99999999='150000 TO 99999999: 150000+'
;
value vx152f
  1='A. $1 - $5,000'
  2='B. $5,001 - $10,000'
  3='C. $10,001 - $25,000'
  4='D. $25,001 - $50,000'
  5='E. $50,001 - $100,000'
  6='F. $100,001 - $250,000'
  7='G. More than $250,000'
;
value vx153f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx154f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx155f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx156f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx157f
  1='Public institution'
  2='Private not-for-profit institution'
  3='Private for-profit institution'
;
value vx158f
  0='NONE'
  1='1ST GRADE'
  2='2ND GRADE'
  3='3RD GRADE'
  4='4TH GRADE'
  5='5TH GRADE'
  6='6TH GRADE'
  7='7TH GRADE'
  8='8TH GRADE'
  9='9TH GRADE'
  10='10TH GRADE'
  11='11TH GRADE'
  12='12TH GRADE'
  13='1ST YEAR COLLEGE'
  14='2ND YEAR COLLEGE'
  15='3RD YEAR COLLEGE'
  16='4TH YEAR COLLEGE'
  17='5TH YEAR COLLEGE'
  18='6TH YEAR COLLEGE'
  19='7TH YEAR COLLEGE'
  20='8TH YEAR COLLEGE OR MORE'
  93='PRE-KINDERGARTEN'
  94='KINDERGARTEN'
  95='UNGRADED'
;
value vx159f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='Added in - GED'
  10='Other- Recoded to No degree received'
  999='UNCODABLE'
;
value vx160f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='Added in - GED'
  10='Other- Recoded to No degree received'
  999='UNCODABLE'
;
value vx161f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='Added in - GED'
  10='Other- Recoded to No degree received'
  999='UNCODABLE'
;
value vx162f
  1='Associate/Junior College or two-year associate degree (AA)'
  2='Vocational or technical certificate'
  3='Bachelor''s degree (BA, BS or unspecified)'
  4='Master''s degree (MA, MBA, MS, MSW)'
  5='Doctoral Degree (PhD)'
  6='Professional Degree (MD, LLD, DDS, JD)'
  7='No degree received'
  8='OTHER (SPECIFY)'
  9='Added in - GED'
  10='Other- Recoded to No degree received'
  999='UNCODABLE'
;
value vx163f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-99999999='150000 TO 99999999: 150000+'
;
value vx164f
  1='A. $1 - $5,000'
  2='B. $5,001 - $10,000'
  3='C. $10,001 - $25,000'
  4='D. $25,001 - $50,000'
  5='E. $50,001 - $100,000'
  6='F. $100,001 - $250,000'
  7='G. More than $250,000'
;
value vx165f
  1='200 - 300'
  2='301 - 400'
  3='401 - 500'
  4='501 - 600'
  5='601 - 700'
  6='701 - 800'
  0='Have not yet received the scores'
;
value vx166f
  1='200 - 300'
  2='301 - 400'
  3='401 - 500'
  4='501 - 600'
  5='601 - 700'
  6='701 - 800'
  0='Have not yet received the scores'
;
value vx167f
  1='0 - 6'
  2='7 - 12'
  3='13 - 18'
  4='19 - 24'
  5='25 - 30'
  6='31 - 36'
  0='Have not yet received the scores'
;
value vx168f
  0='None'
  1='1st grade'
  2='2nd grade'
  3='3rd grade'
  4='4th grade'
  5='5th grade'
  6='6th grade'
  7='7th grade'
  8='8th grade'
  9='9th grade'
  10='10th grade'
  11='11th grade'
  12='12th grade'
  13='1st year college'
  14='2nd year college'
  15='3rd year college'
  16='4th year college'
  17='5th year college'
  18='6th year college'
  19='7th year college'
  20='8th year college or more'
  95='Ungraded'
;
value vx169f
  0='None'
  1='GED'
  2='High school diploma (Regular 12 year program)'
  3='Associate/Junior college (AA)'
  4='Bachelor''s degree (BA, BS)'
  5='Master''s degree (MA, MS)'
  6='PhD'
  7='Professional degree (DDS, JD, MD)'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0000100 vx0f.;
  format R0536300 vx1f.;
  format R0536401 vx2f.;
  format R1204500 vx4f.;
  format R1235800 vx5f.;
  format R1250600 vx6f.;
  format R1302400 vx7f.;
  format R1302500 vx8f.;
  format R1482600 vx9f.;
  format R1770300 vx10f.;
  format R1770400 vx11f.;
  format R1770500 vx12f.;
  format R1770600 vx13f.;
  format R2609100 vx14f.;
  format R2609200 vx15f.;
  format R2609300 vx16f.;
  format R2609400 vx17f.;
  format R2609500 vx18f.;
  format R3069900 vx19f.;
  format R3070000 vx20f.;
  format R3070100 vx21f.;
  format R3939900 vx22f.;
  format R3940000 vx23f.;
  format R3940100 vx24f.;
  format R3940200 vx25f.;
  format R3940300 vx26f.;
  format R4355300 vx27f.;
  format R4355400 vx28f.;
  format R4355500 vx29f.;
  format R5535400 vx30f.;
  format R5535500 vx31f.;
  format R5535600 vx32f.;
  format R5535700 vx33f.;
  format R6030500 vx34f.;
  format R6030600 vx35f.;
  format R6030700 vx36f.;
  format R6030800 vx37f.;
  format R6030900 vx38f.;
  format R6031000 vx39f.;
  format R7295900 vx40f.;
  format R7296000 vx41f.;
  format R7296100 vx42f.;
  format R7296200 vx43f.;
  format R7296300 vx44f.;
  format R7296400 vx45f.;
  format R9829600 vx46f.;
  format S0443300 vx47f.;
  format S0443400 vx48f.;
  format S0443500 vx49f.;
  format S0443600 vx50f.;
  format S1618800 vx51f.;
  format S1618900 vx52f.;
  format S1619000 vx53f.;
  format S1619100 vx54f.;
  format S1999000 vx55f.;
  format S1999100 vx56f.;
  format S1999200 vx57f.;
  format S1999300 vx58f.;
  format S1999400 vx59f.;
  format S2471900 vx60f.;
  format S2472000 vx61f.;
  format S2472100 vx62f.;
  format S3799000 vx63f.;
  format S3799100 vx64f.;
  format S3799200 vx65f.;
  format S3799300 vx66f.;
  format S4213100 vx67f.;
  format S4213200 vx68f.;
  format S4213300 vx69f.;
  format S5399000 vx70f.;
  format S5399100 vx71f.;
  format S5399200 vx72f.;
  format S5399300 vx73f.;
  format S5805500 vx74f.;
  format S5805600 vx75f.;
  format S5805700 vx76f.;
  format S7499000 vx77f.;
  format S7499100 vx78f.;
  format S7499200 vx79f.;
  format S7499300 vx80f.;
  format S7499400 vx81f.;
  format S7894000 vx82f.;
  format S7894100 vx83f.;
  format S7894200 vx84f.;
  format S7894300 vx85f.;
  format S7894400 vx86f.;
  format S9999000 vx87f.;
  format S9999100 vx88f.;
  format S9999200 vx89f.;
  format S9999300 vx90f.;
  format S9999400 vx91f.;
  format T0307500 vx92f.;
  format T0307600 vx93f.;
  format T0307700 vx94f.;
  format T1999000 vx95f.;
  format T1999100 vx96f.;
  format T1999200 vx97f.;
  format T1999300 vx98f.;
  format T1999400 vx99f.;
  format T1999500 vx100f.;
  format T1999600 vx101f.;
  format T1999700 vx102f.;
  format T2323800 vx103f.;
  format T2323900 vx104f.;
  format T2324000 vx105f.;
  format T3850300 vx106f.;
  format T3850400 vx107f.;
  format T3850500 vx108f.;
  format T4939000 vx109f.;
  format T4939100 vx110f.;
  format T4939200 vx111f.;
  format T5200100 vx112f.;
  format T5200200 vx113f.;
  format T5200300 vx114f.;
  format T5200400 vx115f.;
  format T5200500 vx116f.;
  format T5474900 vx117f.;
  format T5475000 vx118f.;
  format T5475100 vx119f.;
  format T6650100 vx120f.;
  format T6650200 vx121f.;
  format T6650300 vx122f.;
  format T6650400 vx123f.;
  format T6887400 vx124f.;
  format T6887500 vx125f.;
  format T8122100 vx126f.;
  format T8122200 vx127f.;
  format T8122300 vx128f.;
  format T8122400 vx129f.;
  format T8382300 vx130f.;
  format T8382400 vx131f.;
  format T8382500 vx132f.;
  format U0000200 vx133f.;
  format U0000300 vx134f.;
  format U0000400 vx135f.;
  format U0000500 vx136f.;
  format U0248900 vx137f.;
  format U0249000 vx138f.;
  format U0956900 vx139f.;
  format U0957000 vx140f.;
  format U1836800 vx141f.;
  format U1836900 vx142f.;
  format U1837000 vx143f.;
  format U1837100 vx144f.;
  format U1837200 vx145f.;
  format U1837300 vx146f.;
  format U2166200 vx147f.;
  format U2166300 vx148f.;
  format U2166400 vx149f.;
  format U2166500 vx150f.;
  format U2857200 vx151f.;
  format U2857300 vx152f.;
  format U3436300 vx153f.;
  format U3436400 vx154f.;
  format U3436500 vx155f.;
  format U3436600 vx156f.;
  format U3436700 vx157f.;
  format U3572600 vx158f.;
  format U3658200 vx159f.;
  format U3658300 vx160f.;
  format U3658400 vx161f.;
  format U3658500 vx162f.;
  format U4282300 vx163f.;
  format U4282400 vx164f.;
  format Z9033700 vx165f.;
  format Z9033900 vx166f.;
  format Z9034100 vx167f.;
  format Z9083800 vx168f.;
  format Z9083900 vx169f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'PUBID_1997'n vx0f.;
  format 'KEY!SEX_1997'n vx1f.;
  format 'KEY!BDATE_M_1997'n vx2f.;
  format 'CV_INCOME_GROSS_YR_1997'n vx4f.;
  format 'CV_SAMPLE_TYPE_1997'n vx5f.;
  format 'CV_COLLEGE_TYPE.01_1997'n vx6f.;
  format 'CV_HGC_BIO_DAD_1997'n vx7f.;
  format 'CV_HGC_BIO_MOM_1997'n vx8f.;
  format 'KEY!RACE_ETHNICITY_1997'n vx9f.;
  format 'YSCH-23450.01_1998'n vx10f.;
  format 'YSCH-23450.02_1998'n vx11f.;
  format 'YSCH-23450.03_1998'n vx12f.;
  format 'YSCH-23450.04_1998'n vx13f.;
  format 'CV_COLLEGE_TYPE.01_1998'n vx14f.;
  format 'CV_COLLEGE_TYPE.02_1998'n vx15f.;
  format 'CV_COLLEGE_TYPE.03_1998'n vx16f.;
  format 'CV_COLLEGE_TYPE.04_1998'n vx17f.;
  format 'CV_COLLEGE_TYPE.05_1998'n vx18f.;
  format 'YSCH-23450.01_1999'n vx19f.;
  format 'YSCH-23450.02_1999'n vx20f.;
  format 'YSCH-23450.03_1999'n vx21f.;
  format 'CV_COLLEGE_TYPE.01_1999'n vx22f.;
  format 'CV_COLLEGE_TYPE.02_1999'n vx23f.;
  format 'CV_COLLEGE_TYPE.03_1999'n vx24f.;
  format 'CV_COLLEGE_TYPE.04_1999'n vx25f.;
  format 'CV_COLLEGE_TYPE.05_1999'n vx26f.;
  format 'YSCH-23450.01_2000'n vx27f.;
  format 'YSCH-23450.02_2000'n vx28f.;
  format 'YSCH-23450.03_2000'n vx29f.;
  format 'CV_COLLEGE_TYPE.01_2000'n vx30f.;
  format 'CV_COLLEGE_TYPE.02_2000'n vx31f.;
  format 'CV_COLLEGE_TYPE.03_2000'n vx32f.;
  format 'CV_COLLEGE_TYPE.04_2000'n vx33f.;
  format 'YSCH-23450.01_2001'n vx34f.;
  format 'YSCH-23450.02_2001'n vx35f.;
  format 'YSCH-23450.03_2001'n vx36f.;
  format 'YSCH-23450.04_2001'n vx37f.;
  format 'YSCH-23450.05_2001'n vx38f.;
  format 'YSCH-23450.06_2001'n vx39f.;
  format 'CV_COLLEGE_TYPE.01_2001'n vx40f.;
  format 'CV_COLLEGE_TYPE.02_2001'n vx41f.;
  format 'CV_COLLEGE_TYPE.03_2001'n vx42f.;
  format 'CV_COLLEGE_TYPE.04_2001'n vx43f.;
  format 'CV_COLLEGE_TYPE.05_2001'n vx44f.;
  format 'CV_COLLEGE_TYPE.06_2001'n vx45f.;
  format 'ASVAB_MATH_VERBAL_SCORE_PCT_1999'n vx46f.;
  format 'YSCH-23450.01_2002'n vx47f.;
  format 'YSCH-23450.02_2002'n vx48f.;
  format 'YSCH-23450.03_2002'n vx49f.;
  format 'YSCH-23450.05_2002'n vx50f.;
  format 'CV_COLLEGE_TYPE.01_2002'n vx51f.;
  format 'CV_COLLEGE_TYPE.02_2002'n vx52f.;
  format 'CV_COLLEGE_TYPE.03_2002'n vx53f.;
  format 'CV_COLLEGE_TYPE.04_2002'n vx54f.;
  format 'CV_COLLEGE_TYPE.01_2003'n vx55f.;
  format 'CV_COLLEGE_TYPE.02_2003'n vx56f.;
  format 'CV_COLLEGE_TYPE.03_2003'n vx57f.;
  format 'CV_COLLEGE_TYPE.04_2003'n vx58f.;
  format 'CV_COLLEGE_TYPE.05_2003'n vx59f.;
  format 'YSCH-23450.01_2003'n vx60f.;
  format 'YSCH-23450.02_2003'n vx61f.;
  format 'YSCH-23450.03_2003'n vx62f.;
  format 'CV_COLLEGE_TYPE.01_2004'n vx63f.;
  format 'CV_COLLEGE_TYPE.02_2004'n vx64f.;
  format 'CV_COLLEGE_TYPE.03_2004'n vx65f.;
  format 'CV_COLLEGE_TYPE.04_2004'n vx66f.;
  format 'YSCH-23450.01_2004'n vx67f.;
  format 'YSCH-23450.02_2004'n vx68f.;
  format 'YSCH-23450.03_2004'n vx69f.;
  format 'CV_COLLEGE_TYPE.01_2005'n vx70f.;
  format 'CV_COLLEGE_TYPE.02_2005'n vx71f.;
  format 'CV_COLLEGE_TYPE.03_2005'n vx72f.;
  format 'CV_COLLEGE_TYPE.04_2005'n vx73f.;
  format 'YSCH-23450.01_2005'n vx74f.;
  format 'YSCH-23450.02_2005'n vx75f.;
  format 'YSCH-23450.03_2005'n vx76f.;
  format 'CV_COLLEGE_TYPE.01_2006'n vx77f.;
  format 'CV_COLLEGE_TYPE.02_2006'n vx78f.;
  format 'CV_COLLEGE_TYPE.03_2006'n vx79f.;
  format 'CV_COLLEGE_TYPE.04_2006'n vx80f.;
  format 'CV_COLLEGE_TYPE.05_2006'n vx81f.;
  format 'YSCH-23450.01_2006'n vx82f.;
  format 'YSCH-23450.02_2006'n vx83f.;
  format 'YSCH-23450.03_2006'n vx84f.;
  format 'YSCH-23450.04_2006'n vx85f.;
  format 'YSCH-23450.05_2006'n vx86f.;
  format 'CV_COLLEGE_TYPE.01_2007'n vx87f.;
  format 'CV_COLLEGE_TYPE.02_2007'n vx88f.;
  format 'CV_COLLEGE_TYPE.03_2007'n vx89f.;
  format 'CV_COLLEGE_TYPE.04_2007'n vx90f.;
  format 'CV_COLLEGE_TYPE.05_2007'n vx91f.;
  format 'YSCH-23450.01_2007'n vx92f.;
  format 'YSCH-23450.02_2007'n vx93f.;
  format 'YSCH-23450.03_2007'n vx94f.;
  format 'CV_COLLEGE_TYPE.01_2008'n vx95f.;
  format 'CV_COLLEGE_TYPE.02_2008'n vx96f.;
  format 'CV_COLLEGE_TYPE.03_2008'n vx97f.;
  format 'CV_COLLEGE_TYPE.04_2008'n vx98f.;
  format 'CV_COLLEGE_TYPE.05_2008'n vx99f.;
  format 'CV_COLLEGE_TYPE.06_2008'n vx100f.;
  format 'CV_COLLEGE_TYPE.07_2008'n vx101f.;
  format 'CV_COLLEGE_TYPE.08_2008'n vx102f.;
  format 'YSCH-23450.01_2008'n vx103f.;
  format 'YSCH-23450.02_2008'n vx104f.;
  format 'YSCH-23450.03_2008'n vx105f.;
  format 'YSCH-23450.01_2009'n vx106f.;
  format 'YSCH-23450.02_2009'n vx107f.;
  format 'YSCH-23450.03_2009'n vx108f.;
  format 'CV_COLLEGE_TYPE.01_2009'n vx109f.;
  format 'CV_COLLEGE_TYPE.02_2009'n vx110f.;
  format 'CV_COLLEGE_TYPE.03_2009'n vx111f.;
  format 'CV_COLLEGE_TYPE.01_2010'n vx112f.;
  format 'CV_COLLEGE_TYPE.02_2010'n vx113f.;
  format 'CV_COLLEGE_TYPE.03_2010'n vx114f.;
  format 'CV_COLLEGE_TYPE.04_2010'n vx115f.;
  format 'CV_COLLEGE_TYPE.05_2010'n vx116f.;
  format 'YSCH-23450.01_2010'n vx117f.;
  format 'YSCH-23450.02_2010'n vx118f.;
  format 'YSCH-23450.03_2010'n vx119f.;
  format 'CV_COLLEGE_TYPE.01_2011'n vx120f.;
  format 'CV_COLLEGE_TYPE.02_2011'n vx121f.;
  format 'CV_COLLEGE_TYPE.03_2011'n vx122f.;
  format 'CV_COLLEGE_TYPE.04_2011'n vx123f.;
  format 'YSCH-23450.01_2011'n vx124f.;
  format 'YSCH-23450.02_2011'n vx125f.;
  format 'CV_COLLEGE_TYPE.01_2013'n vx126f.;
  format 'CV_COLLEGE_TYPE.02_2013'n vx127f.;
  format 'CV_COLLEGE_TYPE.03_2013'n vx128f.;
  format 'CV_COLLEGE_TYPE.04_2013'n vx129f.;
  format 'YSCH-23450.01_2013'n vx130f.;
  format 'YSCH-23450.02_2013'n vx131f.;
  format 'YSCH-23450.03_2013'n vx132f.;
  format 'CV_COLLEGE_TYPE.01_2015'n vx133f.;
  format 'CV_COLLEGE_TYPE.02_2015'n vx134f.;
  format 'CV_COLLEGE_TYPE.03_2015'n vx135f.;
  format 'CV_COLLEGE_TYPE.04_2015'n vx136f.;
  format 'YSCH-23450.01_2015'n vx137f.;
  format 'YSCH-23450.02_2015'n vx138f.;
  format 'YINC-1700_2015'n vx139f.;
  format 'YINC-1800_2015'n vx140f.;
  format 'CV_COLLEGE_TYPE.01_2017'n vx141f.;
  format 'CV_COLLEGE_TYPE.02_2017'n vx142f.;
  format 'CV_COLLEGE_TYPE.03_2017'n vx143f.;
  format 'CV_COLLEGE_TYPE.04_2017'n vx144f.;
  format 'CV_COLLEGE_TYPE.05_2017'n vx145f.;
  format 'CV_COLLEGE_TYPE.06_2017'n vx146f.;
  format 'YSCH-23450.01_2017'n vx147f.;
  format 'YSCH-23450.02_2017'n vx148f.;
  format 'YSCH-23450.03_2017'n vx149f.;
  format 'YSCH-23450.04_2017'n vx150f.;
  format 'YINC-1700_2017'n vx151f.;
  format 'YINC-1800_2017'n vx152f.;
  format 'CV_COLLEGE_TYPE.01_2019'n vx153f.;
  format 'CV_COLLEGE_TYPE.02_2019'n vx154f.;
  format 'CV_COLLEGE_TYPE.03_2019'n vx155f.;
  format 'CV_COLLEGE_TYPE.04_2019'n vx156f.;
  format 'CV_COLLEGE_TYPE.05_2019'n vx157f.;
  format 'YSCH-3112_2019'n vx158f.;
  format 'YSCH-23450.01_2019'n vx159f.;
  format 'YSCH-23450.02_2019'n vx160f.;
  format 'YSCH-23450.03_2019'n vx161f.;
  format 'YSCH-23450.04_2019'n vx162f.;
  format 'YINC-1700_2019'n vx163f.;
  format 'YINC-1800_2019'n vx164f.;
  format 'CVC_SAT_MATH_SCORE_2007_XRND'n vx165f.;
  format 'CVC_SAT_VERBAL_SCORE_2007_XRND'n vx166f.;
  format 'CVC_ACT_SCORE_2007_XRND'n vx167f.;
  format 'CVC_HGC_EVER_XRND'n vx168f.;
  format 'CVC_HIGHEST_DEGREE_EVER_XRND'n vx169f.;
run;
*/