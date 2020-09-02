![](DCNlogo.png)

# SAS Data Curation Primer

## Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| File Extensions<sup>1</sup> | .sas7bdat <br> .sas7bcat <br> .sas <br> .xpt |
| MIME Type | application/x-sas |
| Structure | [The structure of the SAS data set](https://documentation.sas.com/?docsetId=basess&docsetTarget=p1f5xhmkdfhyjcn1n6k9wdcacba0.htm&docsetVersion=9.4&locale=en#:~:text=)(.sas7bdat) <br><p><ul><li> •	Data values in a SAS data set are arranged in a matrix/frame structure </li><li> Each data set contains a descriptor portion that includes details about a data set </li></p><br> The structure of SAS programs <sup>2</sup> (.sas) <br><p><ul><li> A SAS statement ends with a semicolon </li><li>	A program starts with a keyword such as proc, and end with another keyword such as run/quit </li></p> |
| Versions | 9.4 ([current](https://www.sas.com/en_us/software/sas9.html)) |
| Primary fields or areas of use | Healthcare, biology, agriculture, business intelligence, finance |
| Source and affiliation | [SAS](https://www.sas.com/en_us/home.html) is developed by SAS Institute  |
| Metadata standards | <p><ul><li> Standards vary by field of research <li></li> The SAS Catalog (.sas7bcat), can store user-defined formats, such as variable level metadata </li></p> |
| Key questions for curation review | <p><ul><li> Where is the data located? What file format/formats was the data set saved? </li><li> What is the data about? </li><li>	Where did the data come from or who collected the data? </li><li> When was the data collected? How was the data collected? </li><li> Is there a readme file, data documentation file or other file which describes how to use the data set? </li><li> Is there a SAS code or program file for data importing, preparation and/or analysis? </li><li> Are there any comments included in the SAS code explaining how to process the code? </li><li> Can SAS data files (.sas .sas7bdat, etc.) be loaded into other software in addition to SAS? </li></p>  |
| Tools for curation review | [SAS Universal Viewer](https://support.sas.com/downloads/package.htm?pid=2173) <br> [SAS University Edition](https://www.sas.com/en_us/software/university-edition.html) <br> [SAS OnDemand for Academics](https://www.sas.com/en_us/software/on-demand-for-academics.html) <br> Python, [pandas.read_sas](https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html#sas-formats) or [sas7bdat](https://pypi.org/project/sas7bdat/) <br> R, [sas7bdat](https://cran.r-project.org/web/packages/sas7bdat/index.html), [rio](https://www.rdocumentation.org/packages/rio/versions/0.5.16) or [haven](https://www.rdocumentation.org/packages/haven/versions/2.3.1) package <br> [Stat/Transfer](https://stattransfer.com/) |
| Date Created | March 9, 2020 |
| Created by | Creator: Qiong Xu, Queens College of the City University of New York <br> Mentor: Jenn Darragh, Duke University |
| Date updated and summary of changes made |  |

<p  id="note1"><sup>1</sup> More: [SAS documentation](https://go.documentation.sas.com/?cdcId=pgmsascdc&cdcVersion=9.4_3.4&docsetId=hostwin&docsetTarget=n0sk6o15955yoen19n9ghdziqw1u.htm&locale=en) </p>

<p  id="note1"><sup>2</sup> SAS Certification Prep Guide: Base Programming for SAS 9, Fourth Edition. Retrieved from https://www.sas.com/storefront/aux/en/certpgbp/71337_excerpt.pdf. </p>


**Suggested Citation:** Xu, Qiong. (2020). SAS Data Curation Primer. Data Curation Network GitHub Repository. 

This work was created as part of the “Specialized Data Curation” Workshop #3. 

**Contributors:** Gin Corden and Susan Borda.


**Table of Contents**

[Format Overview](#format-overview)

[Description of Format](#description-of-format)  

[SAS Application and Research Data Documentation]{#sas-application-and-research-data-documentation)

[SAS File Examples](#sas-file-examples) 

[Key Questions to Ask Yourself](#key-questions-to-ask-yourself) 

[Key Clarifications to Get from Researcher](#key-clarifications-to-get-from-the-researcher) 

[Applicable Core Elements of Metadata and Readme Requirements](#applicable-core-elements-of-metadata-and-readme-requirements)

[Resources for Reviewing Data](#resources-for-reviewing-data) 

[Software for Viewing or Analyzing Data](#software-for-viewing-or-analyzing-data) 

[Preservation Actions](#preservation-actions) 

[Documentaition of Curation Process](#documentation-of-curation-process)

[Appendix A Additional Information on Tools](#appendix-a-additional-information-on-tools)

[Appendix B SAS Data File CURATED Checklist](#appendix-b-sas-data-file-curated-checklist)

 # Description of Format

.sas is a file extension for SAS programs.

.sas7bdat is a file extension for SAS data sets. SAS data sets (.sas7bdat) store data values and descriptor information. 

- Data values are arranged in a matrix/frame structure 
  -The rows are called observations/objects and the columns are called variables/ characteristics
  -Variables contain the data values for each observation.


-Descriptor information includes details about a data set
  - Data set name, data set type, and data set label
  - The names and attributes of all the variables 
  - The number of observations in the data set
  - The date and time that the data set was created and updated.

Note: Extended attributes, which contain metadata for the SAS files, can be defined and preserved with the DATA step. When it is saved on disk, the data set has a new extension “.sas7bxat”.

“.sas7bcat” is a file extension for SAS catalogs. SAS catalogs contain multiple entries such as function key definitions, fonts for graphic applications, some of your selections from the Preferences dialog box, and other information from interactive windowing procedures. 

.xpt is a file extension for transport file. See Library of Congress information.

# SAS Application and Research Data Documentation

To learn better how SAS data set is generated, stored, shared and reused, the principal investigator of this primer conducted several semi-structured interviews. The interview questions were adapted from a prior prime<sup>3</sup>. Three interviewees from two universities in the United States completed their answers via email or face-to-face interview. Two of the three interviewees were faculty and one of them was a doctoral student in statistics. All the interviewees were researchers who used SAS for research and teaching. 

**1. Is SAS used by many researchers doing data analysis? How is SAS compared to similar statistical programs?**

The interviewees indicated that SAS is used by many researchers or scholars who need to deal with large data sets, for example census data, health science data, biology data, agriculture data, etc. Therefore, SAS is most popular among public health scholars, like epidemiologists, biostatisticians, as well as agriculture researchers. Compared to other packages, SAS has the longest history and possibly the largest user group and hence SAS is the most developed package. 
SAS originated from North Carolina State University in the 1960s. Back then, design of experiments and clinical trials both were very hot topics, so departments of agriculture, biology, etc. used SAS very often even now. In addition to research fields, SAS programmers also work at many companies, for example insurance companies, for processing claims, data entry centers, finance industry, etc. 
There are several factors making SAS a popular and powerful data analysis tool. First, SAS has a module for all different types of analysis, graphics, etc. SAS is powerful in building generalized linear (mixed) and linear (mixed) models, design of experiments, repeated measure analysis, sequential analysis and longitudinal data analysis, as well as data management. Even popular software R does not have such powerful tools in these areas. 
Secondly, SAS has large storage to save data that can save computer memory and make data processing smoother. For a large data set, like a 300 GB national data set, only SAS can directly read and analyze it without occupying a huge computer memory. Using other packages, a researcher even may not be able to load the data due to the limit of computer memory. In the meantime, SAS is famous for its information security.
Last but not the least, SAS programming can make researchers analyze data more efficiently. Using SAS programming, researchers don’t need to frequently point and click operational menus. SAS programming gives the researchers the opportunity to know exactly what and how SAS is processing.  

SAS originated from North Carolina State University in the 1960s. Back then, design of experiments and clinical trials both were very hot topics, so departments of agriculture, biology, etc. used SAS very often even now. In addition to research fields, SAS programmers also work at many companies, for example insurance companies, for processing claims, data entry centers, finance industry, etc. 

There are several factors making SAS a popular and powerful data analysis tool. First, SAS has a module for all different types of analysis, graphics, etc. SAS is powerful in building generalized linear (mixed) and linear (mixed) models, design of experiments, repeated measure analysis, sequential analysis and longitudinal data analysis, as well as data management. Even popular software R does not have such powerful tools in these areas. 

Secondly, SAS has large storage to save data that can save computer memory and make data processing smoother. For a large data set, like a 300 GB national data set, only SAS can directly read and analyze it without occupying a huge computer memory. Using other packages, a researcher even may not be able to load the data due to the limit of computer memory. In the meantime, SAS is famous for its information security.

Last but not the least, SAS programming can make researchers analyze data more efficiently. Using SAS programming, researchers don’t need to frequently point and click operational menus. SAS programming gives the researchers the opportunity to know exactly what and how SAS is processing.  

**2. What kind of data do researchers generate on import into SAS?**

Nearly any format of data file can be read into SAS. SAS can import various types of data, Excel files, CSV files, even DBF files. SAS Enterprise Guide can help with importing data and then exporting it as a SAS datafile. 


**3. Considering SAS data sharing and/or reuse via data repositories, how do researchers document their data in SAS, or what related data files need to be documented from SAS?**

SAS can import and export nearly any data format, but other software packages can barely read SAS codes or SAS data files (.sas, .sas7bdat, etc.) directly. To store and share SAS data via a data repository, researchers usually create three files – a metadata file, a code/syntax file, and a data set file. Researchers usually store data into metadata with labels, correct formats, correct variable types, comments, etc. SAS metadata usually contains notes, information for all the variables (i.e., variable names, variable labels, the range of values, data type, etc.) and even some descriptive statistics (i.e., mean, standard deviation, sample size, min, max, missing data, etc.) SAS data set can be opened in the SAS program directly or be read into SAS software by running SAS statements (code/syntax).

**4. What kind of SAS data outputs are researchers able or willing to share? (Considering data sharing and/or reuse via data repositories, what kind of SAS data outputs/files are researchers able or willing to share?)**

Researchers may be willing to share their data openly depending on the data field. Also, data sharing really depends on the original agreement made by researchers and research agencies who funds the data collection. For data sets containing confidential information such as records of clinical trials, researchers can share data in a controlled way if the risk of identity disclosure still exists. In recent years, more and more researches are required by funders and publishers to share data via repositories as a condition for publishing an article. For instance, many researchers who receive research funds from NIH, National Science Foundation, Federal Money, etc. are usually obligated to disseminate the data, which are shared after the data are de-identified to preserve confidentiality protections. 

After researchers collect the data, they are required to remove personally identifiable information or protected health information from the data to minimize the risk of the identification of individual respondents before the data is ready for sharing. In other words, researchers should share data in certain ways if they have an agreement with research funders and publishers. 

<p  id="note1"><sup3</sup> Deng, Sai; Dull, Joshua; Finn, Jeanine; Khair, Shahira (2019). SPSS Data Curation Primer. Data Curation Network GitHub Repository. https://github.com/DataCurationNetwork/data-primers </p>



# SAS File Examples

