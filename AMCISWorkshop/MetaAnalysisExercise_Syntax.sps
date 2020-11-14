* Encoding: UTF-8.

* This exercise has been prepared for Meta-Analysis Workshop by Hamed Qahri-Saremi & Sudeep Sharma, presented at AMCIS 2017.
* For this exercise, you need to download Wilson/Lipsey SPSS Macro from: http://mason.gmu.edu/~dwilsonb/ma.html.
* Download the SPSS data file and the syntax file for the exercise from: http://facsrv.cdm.depaul.edu/~hqahrisa/#workshops.
* The exercise includes three parts, as presented in Wilson/Lipsey SPSS Macro guide: basic meta-analysis, MetaF (categorical moderator), and MetaReg (continuous moderator).
   ** In the following commands, replace the address (following INCLUDE command) with the local address on your computer where the macro files are located.



* (1) Basic Meta-Analysis.
INCLUDE 'C:\Desktop\spss_macros\MEANES.SPS' .
MEANES ES = ESz /W = w .



* (2) MetaF syntax using REML for Categorical Moderators.
INCLUDE 'C:\Desktop\spss_macros\MetaF.SPS' .
METAF ES = ESz /W = w /GROUP = Adoption /MODEL = REML.
METAF ES = ESz /W = w /GROUP = Gender /MODEL = REML.



* (3) MetaReg syntax using REML for Continuous Moderators.
INCLUDE 'C:\Desktop\spss_macros\MetaReg.SPS' .
METAREG ES = ESz /W = w /IVS = Adoption /MODEL = REML.
METAREG ES = ESz /W = w /IVS = Female_Perc /MODEL = REML.
METAREG ES = ESz /W = w /IVS = Female_Perc Adoption /MODEL = REML.

