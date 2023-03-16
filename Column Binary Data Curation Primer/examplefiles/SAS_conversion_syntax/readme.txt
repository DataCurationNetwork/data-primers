This folder contains the following files:

FULLSPSS.SAS - SAS syntax used in converting the column binary file to SPSS. This file is specified under item 6 in RUNXRAY.SAS if you would like to generate an SPSS setup file (.sps).

MULTASC.SAS - SAS syntax used in creating an xray file to check your work. This file is specified under item 5 in RUNXRAY.SAS for generating an xray file if your column binary file has multiple cards.

MULTBIN.SAS - SAS syntax used in converting the column binary file to SPSS. This file is specified under item 5 in RUNXRAY.SAS if your column binary file has multiple cards.

NOSPSS.SAS - SAS syntax used in converting the column binary file to SPSS. This file is specified under item 6 in RUNXRAY.SAS if you would not like to generate an SPSS setup file (.sps).

ONEASC.SAS - SAS syntax used in creating an xray file to check your work. This file is specified under item 5 in RUNXRAY.SAS for generating an xray file if your column binary file has only one card.

ONEBIN.SAS - SAS syntax used in converting the column binary file to SPSS. This file is specified under item 5 in RUNXRAY.SAS if your column binary file has only one card.

RUNXRAY.SAS - SAS syntax used in converting the column binary file to SPSS. This file is the file you will be using to input various pieces of information and set your working directory. Once run, it will call information from the previously listed files to generate either a .sav file or both a .sav and a .sps file, depending on the information you input under item 6.

readme.txt