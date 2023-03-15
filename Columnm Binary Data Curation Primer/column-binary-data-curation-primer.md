![](DCNlogo.png)

# Column Binary Data Curation Primer

Authors: Jessica Ko, Cornell University; Kelsie Norek, Cornell University

Affiliate Contributors (peer reviewers): Marley Kalt, Jane Fry


## Executive Summary

|   Topic   |   Description   |
| :------------- | :------------- |
| File Extensions | <li>.bin</li> <li>.colbin</li> <br><br> The file extension may vary and is sometimes based on the content of the file|
| MIME Type|application/octet-stream|
| Structure|Binary format|
| Primary fields or areas of use | Survey research|
| Source and affiliation| IBM (80-column IBM Card patented in 1928)|
| Metadata standards | Data Documentation Initiative (DDI)|
| Key questions for curation review| Pre-Conversion <li>Is the documentation associated with the data file sufficient for conversion? Are column locations and response codes included?</li><br><br> Post-Conversion<li>Do frequencies match what is expected based on documentation (e.g., toplines, reports) or common sense checks?</li><li>Are the variables and values clearly and accurately labeled?</li>|
| Tools for curation review | <li>SAS</li><li>SPSS</li><li>.xls/.xlsx editor</li><li>Document viewer software</li> |
| Date Created | 2023-03-15 |
| Created by | Jessica Ko - Cornell University <br> Leslie Norek - Cornell University <br> <br> DCN Mentors - Wendy Kozlowski – Cornell University <br> Noggin Keshavarzian – Princeton University  |


----------------------------
**Suggested Citation:** Ko, Jessica and Norek, Kelsie. (2023). Column Binary Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)


----------------------------


# Table of Contents

[Description of Format](#description-of-format)

[Software for Viewing or Analyzing Data](#software-for-viewing-or-analyzing-data )

[Examples](#examples)

[Resources for Reviewing Data After a Conversion](#resources-for-reviewing-data-after-a-conversion)

[Key Considerations](#key-considerations)
> [Interpreting the Codebook](#interpreting-the-codebook) <br> [Multiple Cards](#multiple-cards) <br> [X-ray Files](#x-ray-files) <br> [Multi-punched columns](#multi-punched-columns) <br> [Columns v. Variables](#columns-v-variables) <br> 
[Logic Flows](#logic-flows) <br> [Merge v. Append](#merge-v-append) <br> [Checking Converted Frequencies](#checking-converted-frequencies) <br>

[Column Binary Conversion Process](#column-binary-conversion-process)
> [Import Data into SPSS](#import-data-into-spss) <br> [Recode Variables](#recode-variables) <br> [Clean Data](#clean-data) <br> [Rename Variables and Assign Variable Labels](#rename-variables-and-assign-variable-labels) <br> [Check Conversions](#check-conversions) <br> 

[Applicable Metadata Standard, Core Elements, and README Requirements](#applicable-metadata-standard-core-elements-and-readme-requirements)

[Preservation Actions](#preservation-actions)

[Documentation of Curation Process: What to Capture](#documentation-of-curation)

[Ways in Which Fields May Use this Format](#ways-in-which-fields-may-use-this-format)

[Bibliography](#bibliography)
> [Cited in Text](#cited-in-text) <br> [Additional Useful Resources](#additional-useful-resources) <br> 

[Appendix A: Column Binary CURATE(D) Checklist](#appendix-a)

[Appendix B: Recommended Metadata Elements for Survey Research](#appendix-b)


# Description of Format

Column binary (or colbin) is a file format that is most frequently used to store survey data from punched cards, which are paper cards in which holes are punched to represent data points. There are different types of punched cards, but one of the most common is the 80-column IBM card (see Figures 1 and 2). These cards are organized in an array that is 80 columns wide and 10 rows tall, with additional space for 2 rows at the top.

<figure> <img src="1blank_card.JPG" alt="Blank card, unpunched." style=""> <figcaption></figcaption> </figure>

Figure 1. Blank card. Source: [IBM100—The IBM Punched Card](https://www.ibm.com/ibm/history/ibm100/us/en/icons/punchcard/breakthroughs/). (2012, March 7). [CTB14]. IBM; IBM Corporation.

<figure> <img src="2punched_card.jpg" alt="Punched survey card." style=""> <figcaption></figcaption> </figure>

Figure 2. Punched Card. Source: Reinhold, A. (2006). [Binary punched card.](https://commons.wikimedia.org/wiki/File:IBM1130CopyCard.agr.jpg) [Online image]. Wikimedia Commons.


The small numbers are column identifier numbers. These are never punched because they don’t represent question responses.The numbers that represent possible question responses are arranged vertically, from 0-9. The “digit” section of the card includes digits 1-9. The section above, starting with 0, is called the “zone” section. The two additional spots above the 0 represent extra values, which allow more data to be stored on a single card. The zone values are coded in several different ways, depending on the company or organization that processed them (see Table 1).

|   Punched Card Value   |   Codebook Value   |   Data File Value   |
| :------------- | :------------- | :------------- |
| 0  | 0 or 10 | 0 |
| X (blank directly above 0)  | X, 11, -, or (rarely) 10 | X or - |
| Y (highest spot)  | Y, 12, V, R, /, or & | Y, V, R, /, or & |


Table 1: Coding of Zone Section Values.

Column 10 (see Figure 3) is an example of a single-punched column, where only the response value 2 is punched (i.e., selected by the respondent). Column 14 is an example of a multi-punched column, where more than one value is punched. In this case, the respondent apparently selected Y, 0, 1, 2, 5, and 6.

<figure> <img src="3annotated_card.JPG" alt="Annotated and punched survey card." style=""> <figcaption></figcaption> </figure>

Figure 3. Annotated Punched Card. Edited by authors. Original image source: Reinhold, A. (2006). [Binary punched card.](https://commons.wikimedia.org/wiki/File:IBM1130CopyCard.agr.jpg) [Online image]. Wikimedia Commons.


The data on completed punched cards were converted into digital data points using card readers. These files may have .colbin or .bin extensions, but they can also have extensions that reflect the content of the file. In these cases, the extension name will begin with “c”, followed by a series of numbers that identify the dataset. For example, “PURDUE.c0038” is the name of the column binary file for Purdue Opinion Panel # 38.5 (This dataset is currently unconverted in the Roper Center archive. See link for snapshot information about the survey; see example files for codebook and column binary file.)

In Windows File Explorer, the file type typically reflects the extension name, except in the case of .bin files, which are misidentified as video files (see Figure 4).

<figure> <img src="4file_extensions.JPG" alt="Column Binary files in a computer window." style=""> <figcaption></figcaption> </figure>

Figure 4. Examples of Column Binary File Extensions. Created by authors.

In column binary files, each bit represents a single data point, unlike today’s data formats, which use 64 bits to represent a single data point. Consequently, the colbin format is unreadable to today’s machines and software because they try to read 64 bits, rather than 1, for each data point.


# Software for Viewing or Analyzing Data


Column binary files must undergo a conversion process so that the data can be read on modern computers. The raw data are then coded and labeled in order to make the dataset independently understandable for future users.

[SAS](https://www.sas.com/en_us/home.html) code can be used to create a .sav file containing the raw column binary data (see example files). It is also used to create an x-ray, which shows the structure of the data (i.e., the frequencies for each value in each column). (For more information, see [X-ray files.](#x-ray-files)) The raw data can then be coded and labeled using [SPSS](https://www.ibm.com/products/spss-statistics) syntax. Alternatively, it can be exported to another statistical program, such as [Stata](https://www.stata.com/) or [R](https://www.r-project.org/), for coding.

Codebooks are critical in the conversion process as they provide information on which column variables are stored in and how responses are coded. Depending on the format of the codebook, a text editor (such as Notepad or TextEdit) or document viewer (such as [Adobe Acrobat](https://www.adobe.com/acrobat.html)) can be used to view the file. If study documentation is currently only available in paper format, it should be scanned as part of the curation process. 

In order to make the coding and labeling process more efficient, it may be helpful to create a template for generating the syntax in [Microsoft Excel](https://www.microsoft.com/en-us/microsoft-365/excel) or a similar program. 

# Examples

Column binary was once the standard data format used in survey research, and it is common to encounter older survey data (e.g., data from approximately the 1930s-1960s) that is only available in column binary format. Typically a data curator would be asked to curate a survey that is relevant to the user’s area of academic research (e.g., [German Demoskopie surveys](https://bit.ly/3gFuNmY) beginning in the 1930s), a survey that falls under a grant-funded project (e.g., the [British Gallup surveys](https://ropercenter.cornell.edu/ipoll/search?collection=LSM&experimental=NON&org=9896ce75-db8f-4e14-82fa-57df68a3e236&tab=STUDY)), or a survey that is either not widely available through other archives or not available through other archives at all. 

Opening the file in a text editor is a good first step in verifying that it is, in fact, a column binary file. Doing so can rule out the possibility that it is a plain text file with an unusual extension. To do this in Windows, double-click the file and open in Notepad or a similar program (see Figure 5). Notepad’s attempt to read a column binary file will result in a series of uninterpretable characters (see Figure 6).


<figure> <img src="5colbin_file_explorer.JPG" alt="Column Binary File in Windows File Explorer." style=""> <figcaption></figcaption> </figure>

Figure 5. Column Binary File in Windows File Explorer. Created by authors.

<figure> <img src="6colbin_notepad.JPG" alt="Column Binary Data Opened in Notepad." style=""> <figcaption></figcaption> </figure>

Figure 6. Column Binary Data Opened in Notepad. Created by authors.

Column binary files can be opened in TextEdit on Mac (see Figures 7 and 8). As with Notepad, TextEdit will be unable to read the file and will instead display random characters that do not reflect the actual contents of the file (see Figure 9).


<figure> <img src="7colbin_mac_finder.jpeg" alt="Column Binary File in Mac Finder." style=""> <figcaption></figcaption> </figure>

Figure 7. Column Binary File in Mac Finder. Created by authors.

<figure> <img src="8mac_choose_application.jpeg" alt="Choosing TextEdit to Open Column Binary File." style=""> <figcaption></figcaption> </figure>

Figure 8. Choosing TextEdit to Open Column Binary File. Created by authors.

<figure> <img src="9mac_colbin_text_edit.jpeg" alt="Column Binary Data Opened in TextEdit." style=""> <figcaption></figcaption> </figure>

Figure 9. Column Binary Data Opened in TextEdit. Created by authors.


After checking the file in a text editor, try importing the raw data into SPSS (see [Import data into SPSS](#import-data-spss)). A column binary file that has been correctly imported into SPSS will look similar to Figures 10 and 11. The rows represent cases/respondents, and the variables represent punched card columns for single-punched columns (like those in Figure 10) and individual punches for multi-punched columns (like Column 1 in Figure 11). For more information, see [Multi-punched columns](#multi-punched-columns) and [Columns vs. variables](#columns-vs-variables).

<figure> <img src="10colbin_raw_data.JPG" alt="Raw Data in SPSS - Singled-punched." style=""> <figcaption></figcaption> </figure>

Figure 10. Raw Data in SPSS - Singled-punched. Created by authors.

<figure> <img src="11colbin_raw_data2.JPG" alt="Raw Data in SPSS - Multi-punched." style=""> <figcaption></figcaption> </figure>

Figure 11. Raw Data in SPSS - Multi-punched. Created by authors.

<figure> <img src="12completed_conversion.JPG" alt="Completed Conversion in SPSS." style=""> <figcaption></figcaption> </figure>

Figure 12. Completed Conversion in SPSS. Created by authors.


# Resources for reviewing data after a conversion

After a curator completes a column binary conversion, it is recommended that a second curator reviews the conversion.The following resources are useful for column binary conversion review.


- SAS-generated x-ray: The frequencies in the converted dataset can be checked against the x-ray frequencies to ensure that errors were not made in the coding process (see [X-ray files](#x-ray-files)).

- Codebook: The coding decisions, variable names, and variable and value labels should reflect the available information on column locations, question wording, and response codes.

- Original frequencies: Response frequencies are sometimes available in the study codebook. It may also be possible to find frequencies in reports, books, or other published materials.



# Key Considerations

## Interpreting the codebook

It can be challenging to interpret old codebooks and understand where particular questions are stored in the dataset. This is often due to issues such as poor scan quality, illegibility of handwritten notes, and missing pages. Missing pages were sometimes purposely redacted because they contained proprietary data; in other cases, they may have simply been lost or not included when the documentation was scanned.

Additionally, there are often supplemental codes in the back of the codebook that inform how you should assign value labels for variables, so reading the whole codebook is the only way to make sure you haven’t missed any information.

## Multiple cards

In many cases, surveys were fairly long, so more than one card was needed to record all of a respondent’s answers. You can often tell that a dataset has more than one card because the x-ray file<sup>1</sup> will show some multiple of the number of observations indicated in the codebook, and this will be coupled with the correct number of observations distributed across punches in one of the first several columns (punches 1 and 2 for two card surveys, punches 1, 2, and 3 for three card surveys, etc.). It’s also possible for the card number to be located in one of the last columns, but this is less common.

<p  id="note1"><sup>1</sup> An x-ray file will automatically generate using the RUNXRAY.SAS syntax file (see [X-ray files](#x-ray-files)). It is best practice to always review the x-ray file and use it to decipher unconverted data and to check against converted data. </p>

For example, the documentation in Figure 13 indicates that the column binary dataset for [British Gallup Poll CQ 44A6](https://doi.org/10.25940/ROPER-31074052) has 2 cards and a sample size of 1078. If the dataset is imported as if it only has one card, it will have 2156 records (see Figure 14). The x-ray in Figure 15 shows that Column 2 has 1078 punches for response 1 and 1078 for response 2, which is an indicator that the card number is stored in that column. You can also see that the sum column indicates that there are 2156 responses through Column 16. When the dataset is imported as a multi-card dataset with the card number recorded as Column 2, the total number of records is still 2156 (see Figure 16), but the number of records per card is 1078 (see Figure 17). Figures 18 and 19 reflect punches for each card individually (check Col. 2 to see which card is being shown). Figure 19 helps us understand why the first x-ray had 2156 punches only through Col. 15—card 2 only has data through Col. 15!

<figure> <img src="13n1078.png" alt="Documentation for British Gallup Poll CQ 44A." style=""> <figcaption></figcaption> </figure>

Figure 13. Documentation for British Gallup Poll CQ 44A. Created by authors.

<figure> <img src="14n2156.png" alt="British Gallup Poll CQ 44A Imported as One-card Survey." style=""> <figcaption></figcaption> </figure>

Figure 14. British Gallup Poll CQ 44A Imported as One-card Survey. Created by authors.

<figure> <img src="15xray2156.png" alt="British Gallup Poll CQ 44A One-card X-ray." style=""> <figcaption></figcaption> </figure>

Figure 15. British Gallup Poll CQ 44A One-card X-ray. Created by authors.

<figure> <img src="16multbin2156.png" alt="British Gallup Poll CQ 44A Imported as Multi-card Survey." style=""> <figcaption></figcaption> </figure>

Figure 16. British Gallup Poll CQ 44A Imported as Multi-card Survey. Created by authors.

<figure> <img src="17freqproc.JPG" alt="British Gallup Poll CQ 44A Multi-card Frequencies." style=""> <figcaption></figcaption> </figure>

Figure 17. British Gallup Poll CQ 44A Multi-card Frequencies. Created by authors.

<figure> <img src="18cardone1078.png" alt="British Gallup Poll CQ 44A X-ray - Card 1." style=""> <figcaption></figcaption> </figure>

Figure 18. British Gallup Poll CQ 44A X-ray - Card 1. Created by authors.

<figure> <img src="19cardtwo1078.png" alt="British Gallup Poll CQ 44A X-ray - Card 2." style=""> <figcaption></figcaption> </figure>

Figure 19. British Gallup Poll CQ 44A X-ray - Card 2. Created by authors.

<figure> <img src="20modemultipunch.png" alt="British Gallup Poll CQ 44A SPSS Import Syntax." style=""> <figcaption></figcaption> </figure>

Figure 20. British Gallup Poll CQ 44A SPSS Import Syntax. Created by authors.

## X-ray files

X-ray files are files generated using SAS that are unique to each dataset, as they record the frequencies for each value in each column of the data. 

<figure> <img src="21x-ray.PNG" alt="X-ray Example." style=""> <figcaption></figcaption> </figure>

To create an x-ray file:
1. Copy the SAS example files into a folder of your choosing. 
2. Open the RUNXRAY.SAS file and change each of the directories to the appropriate file paths for each SAS file.
3. Set the directory for the colbin data file you would like to input to the file path where the colbin data file is located.
4. Change the archive number in the “%LET ARCHNO=” statement to an identifier that you would like to appear at the top of each page of the x-ray file.
5. Set the x-ray type in the “%LET XRAYTYPE=” statement to “onebin” if using a one card colbin file or to “multbin” if using a multiple card colbin file. (Note: Your codebook should ideally contain information on how many cards your dataset has.)
6. Set the SPSS setting in the “%LET SPSSTYPE=” statement to “fullspss” if you would like an SPSS setup file generated (recommended) or to “nospss” if you do not need an SPSS setup file.
7. Set the number of cards in the “%LET CARD=” statement to the number of cards associated with your colbin dataset.
8. Click submit (the running man icon on the toolbar at the top) to run your code. Once run, you should have an .rtf file generated in your designated folder. This will be your x-ray file. If you selected “fullspss” in step 6, you should also have a .sps file (setup file) appear in your designated folder. (See Import data into SPSS for information on how and when to use your .sps file.)

Figure 21. X-ray Example. Created by authors.

## Multi-punched columns

Computing power and materials were expensive, so the punched cards were used as efficiently as possible. While each column often represented a single question and would only have one punch/response/value, this is not always the case. There are three reasons that a column can have multiple punches, and determining why the column is multi-punched is key to understanding how to recode the data correctly.

- First, columns frequently contained the answers to two or more questions. These questions are not always sequential (e.g., not always 2a and 2b).  
    -	 This type of multi-punch is typically identified while reading through the codebook. For example, you might see that Question 2a is listed as being in Column 14 and that Question 2b is also listed as being in Column 14. This would create a multi-punch scenario, as more than one response per respondent would be entered into a single column.

- Second, sometimes a question asked a respondent to select "all that apply" and multiple answers would be recorded. 
    -	 This type of multi-punch is typically identified by reading through the codebook. For example, you may see “Select all the apply” in parentheses following the question when there is only one column listed as being assigned to that question. Alternatively, it may be indicated in the way the question itself is worded. For example, if a question asked, “Which of the following items do you have in your household?”, but there was only one column listed as being assigned to that question, this would indicate that multiple responses were not only allowed for that question, but they were recorded in the same column, creating a multi-punch scenario.

- Third, a multi-punch can indicate a mistake in the data. If an incorrect answer was (mistakenly) punched, the only way to fix it was to also punch the correct answer, which created a multi-punched column.
    -	 This type of multi-punch is typically identified by consulting the data and/or the codebook. Sometimes, for example, you might see that a respondent entered 2 responses for the same question, but that question did not ask for multiple answers. It sometimes happens that one of the responses recorded in the data was a response that was listed in the codebook, but that the other response recorded in the data was not a response that was listed in the codebook. In such a case, you would know that the response recorded in the data that did not correspond to a response listed in the codebook was incorrect. 

## Columns v. Variables

Often, the column and question/variable correspond directly to one another, so that Col. 2 = Question 2. When a column corresponds to a single question with only one answer, Col. 2 is imported as a single variable when the colbin file is imported. When columns contain a multi-punch for any reason (see [Multi-punched columns](# multi-punched-columns)), the column can no longer be imported as a single variable. 

This makes sense if you think about it. For each variable, a respondent can only have one value (e.g., can’t be equal to both 4 and 7). If a single column has two questions or the question is “select all that apply”, then there is no way for one variable to represent both values that a respondent reports, so the column cannot be imported as a single variable. The only way to faithfully import data in which respondents have more than one answer/value/punch in a column is to create a binary variable for every single punch—functionally turning every value in the column into a “Did the respondent pick this answer? Y/N” question. Thus, one multi-punched column will be imported as 12 different variables. These are sometimes referred to as "sprayed" values or variables. Because the program cannot determine why there is a multi-punch in a column, the curator will have to identify which answers can be recoded into a single variable and which must remain separate variables.


## Logic flows

Sometimes the meaning of a column’s punches relies on a previous question. For example, Col. 1 might ask if the respondent is male or female, and Col. 2 might represent the answers for two different questions—one for men and one for women. Thus, all men and women will have answers in Col. 2, but those responses will need to be separated into two different variables—one for men and one for women—and labeled based on the answer to Col. 1.

In Figure 22, the codes for Q16H depend on whether respondents answered “Satisfactory” or “Unsatisfactory” to Q16G. SPSS syntax for analyzing and recoding conditional questions can be found in the example files (logic_flows.sps). 

<figure> <img src="22logicflows.png" alt="Questions 16G and 16H from General Electric Quarterly Survey 68-02." style=""> <figcaption></figcaption> </figure>

Figure 22. Questions 16G and 16H from General Electric Quarterly Survey 68-02. Created by authors.


## Merge vs. append

Sometimes a column binary study will actually have more than one dataset. More than one card can be stored in the same dataset, so multiple datasets are sometimes a result of previous conversions gone poorly. If the datasets represent new information on the same people (i.e., more questions), then you will need to merge the two datasets using a unique respondent ID so that each respondent/case will have more variables. If there is no way to uniquely identify observations that match across the two datasets (i.e., if there is no unique respondent ID found in the datasets), then you will probably not be able to merge the datasets. If the second dataset is the same set of questions/variables but includes additional people, then you will append that dataset to the first dataset.

## Checking converted frequencies

Codebooks will sometimes include frequencies against which one can check converted dataset frequencies, but other times they are not provided, making it more difficult to determine whether the conversion was completed correctly. 

In these cases, you may search online or in other libraries and archives to see if the frequencies have been preserved in newspapers, magazines, journals, or published books. Publishing frequencies in these ways was much more common prior to the 1980s.

Sometimes, though, frequencies may be unavailable either in the codebook or public record. In such instances you will need to simply review the frequencies–without anything to check them against–to make sure that the answers at least make sense. For example, if a question asked respondents’ preferred political party, you could reasonably expect the percentages to approximately match with other preferred party data from that time. You may consider it a red flag if a minor party corresponded to the highest percentage of responses. Such cases should be documented in a study note.


# Column binary conversion process

Note: This section focuses on using SPSS for column binary conversion, but the steps can be adapted for other statistical software programs, such as Stata or R.

1. Converting column binary data to another format involves the following steps:
2. Importing the data
3. Recoding variables
4. Cleaning data
5. Renaming variables and assigning variable/value labels
6. Checking the conversion

## Import data into SPSS

1. Run x-ray.
    -	 Using the RUNXRAY.SAS file, set your directories and operator name.
    -	 Enter an identifier for your dataset under item 2—this can be almost anything you want. If your dataset has one record per case, enter “1” under item 7 and “onebin” under item 5. If your dataset has multiple records per case, enter the number of records per case under item 7 and “multbin” under item 5. Click run. (Note: The number of cards (i.e., records per case) can almost always be found in the codebook.)

<figure> <img src="23sasdir1257.png" alt="Example of SAS Syntax." style=""> <figcaption></figcaption> </figure>

Figure 23. Example of SAS Syntax. Created by authors.


2. Open the generated syntax file and run the FILE HANDLE, DATA LIST, and ALTER TYPE commands. The syntax file will be titled FULLSPSS.sps. This will import the data from the colbin file into SPSS.

3. Open the generated SPSS file and proceed to recoding the variables.



## Recode variables

So you’ve imported the data. Now you’ll need to recode the variables so that they accurately reflect the codebook. 

### Identify and recode multi-punches

The first step is to identify multi-punches. There are multiple ways you can do this. One involves using the x-ray, while another involves relying heavily on the data imported into your preferred statistical software (in this case SPSS). We typically use both of these methods in tandem.

#### How to identify multi-punches using the x-ray.

You can use the x-ray to visually help you understand the structure of the data, and it can serve as a reference point for making coding decisions in the SPSS syntax. 

1. Do the number of records/respondents/observations match the codebook/file? 
    -	 Yes: Great!
    -	 No: Is it possible they don’t match because there is more than one card? (Usually double or triple the expected number of records and/or an easily identifiable column with equal numbers of 1 and 2 punches)
    -	 Do all values correspond to the codebook?
	- Y: Great!
	- N: How many multi-punches are in non-corresponding value?
			- Lots: Check the back of the codebook—is it possible there are answers that amend the original codebook?
			- Few: Maybe it’s a mistake/bad punch.
 







# Introduction to Clinical Trials Data

Clinical trials data are a specific type of [human participant data](https://github.com/DataCurationNetwork/data-primers/blob/master/Human%20Participants%20Data%20Essentials%20Data%20Curation%20Primer/human-participants-data-essentials-data-curation-primer.md). This data is generated through a clinical study in which a new drug or medical approach is studied for therapeutic, preventative, or diagnostic uses on individuals; clinical studies and their data determine if these new drugs or medical approaches are deemed both safe and effective for people. [These studies](https://clinicaltrials.gov/ct2/about-studies/learn#WhatIs) can also show researchers whether existing research is confirmed, if there are better approaches, or if there are potential harms to participants (U.S. National Library of Medicine, 2019, March).

Clinical trials are a type of clinical study that takes a controlled approach to studying the effects of new medical devices and drugs, or new methods and behaviors for participants. Since these trials are introducing something new into the lives of participants, they are also called interventional studies. These are different from observational studies, which are a different type of clinical study that will not be covered in this primer. There are many different types of clinical trials such as open, single-blind, crossover, etc., and documentation and data will differ depending on the [type of clinical trial](https://www.scientific-european-federation-osteopaths.org/different-types-of-clinical-trials/).

<figure> <img src="clinical-1.JPG" alt="Clinical trial process overview." style=""> <figcaption></figcaption> </figure>

(Source: [Institute of Medicine of the National Academies (IOM)](https://nap.nationalacademies.org/read/18998/chapter/2#10), 2015 )

Clinical trials data can include many different components of a research project. Over the course of the trial, an enormous amount of data and different types of data may be collected, “including individual participant data (i.e., raw data and the analyzable data set); metadata, or “data about the data” (e.g., protocol, statistical analysis plan, and analytic code); and summary-level data (e.g., summary-level results posted on registries, lay summaries, publications, and Clinical Study Reports)” (Institute of Medicine of the National Academies (IOM), 2015). With the exception of the raw data, most data outputs of the trial can be de-identified and shared. While each component is represented as a distinct item below, some data elements may overlap or be part of another.

**Individual Participant Data**

- Raw data: This is the source data for the project. It can be collected from instruments, images, narrative text, and other data collection processes. This data is typically not shared, as it often is protected, human participants data in a raw format. However, there are exceptions where raw data are shared via controlled access platforms such as [Vivli](https://vivli.org/). In addition to requiring additional work to make the data computational, raw data can also be significantly larger and more difficult to store, process, and analyze. Raw data has the greatest potential for risk of participant identification.

- Analyzable dataset: After the trial is complete, the raw data will be processed, edited, and converted into an analyzable dataset. The analyzable dataset may include de-identified (anonymized) participant-level data. Typically the analyzable dataset has the most utility, as it has been cleaned for analysis, it is the most computational and usable. Additionally, many studies will only use a portion of the analyzable dataset in the analysis; sharing this data will allow unused data to be leveraged by other researchers. Careful documentation should be kept on how the raw data is converted into an analyzable form.

**Metadata and Trial Documentation**

- Trial protocol: When a trial is registered in an appropriate registry, investigators submit a trial protocol, which outlines how the data will be collected, processed, and analyzed, how participants will be recruited, and how consent will be collected. Informed consent language is also included in the trial protocol. As trials progress, the trial protocol may be adjusted. The first trial protocol, the final protocol, and a summary of changes all need to be submitted as part of the final data package.

- Statistical analysis plan (SAP): This plan, which is submitted with the trial protocol, articulates exactly which statistical methods will be used to analyze the data, as well as the different software and programs that will be utilized.

- Analytic code: This is programming and statistical code(s) used to analyze the data. 

- Codebook: A detailed document that describes how data has been entered and coded to ensure future reusability. For an advanced use case of codebook reuse see de Ridder and Beliën’s 2022 article, [The iCRF Generator: Generating interoperable electronic case report forms using online codebooks.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7291075/) 

**Summary-level data**

- Scholarly Outputs: These can be peer-reviewed articles published in academic journals that report on the study and key findings, [preprints](https://www.ncbi.nlm.nih.gov/pmc/about/nihpreprints/), the study’s analyzable dataset (described above), software, devices or products, or other artifacts. Summaries of parts of the analyzable clinical trial data may be included in publications and other outputs.

- Summaries on trial registry site(s), such as clinicaltrials.gov: Summaries are typically submitted within twelve months of project completion and should use easily understandable language to a lay person (e.g., the general public and research participants).

- Clinical Study Report: These are created when submitting to a regulatory agency for marketing and approval. These are extensive reports that include all of the trial documentation, metadata and analyzable data (e.g., not the raw data) associated with a project, including publications. Clinical Study Reports are shared  following regulatory approval.


Different clinical trial data should be shared at different phases of the research project. More information provided below.

# Benefits of Sharing Clinical Trial Data

In addition to compliance with funder and journal mandates, which increasingly require data be accessible in an online repository, appropriate sharing of clinical trial data has far-reaching impacts, beyond the Principal Investigators and research study team. Due to the fact that “[c]linical studies are designed to add to medical knowledge related to the treatment, diagnosis, and prevention of diseases or conditions,” providing access to research outputs empowers clinicians, patients, and the general population (U.S. National Library of Medicine, 2019, March). The most direct and immediate beneficiaries of shared clinical trial data are clinicians and their patients. This data will help inform the clinician of what is likely, or unlikely, to have a positive impact on their patients, whether it be a new treatment or prevention method. Accessing as much of the trial data as possible provides clinicians a better understanding of the benefits and potential risks of an intervention. 

For patients, information found on the registries can be empowering and educational as they, for instance, navigate a medical diagnosis, explore treatment options, and assess potential risks. This applies to the general public as well, as they are able to access this information even if they simply want to learn about research pertaining to medical diagnoses or potential treatments. Of note, for trials that are funded in part or whole by a public funder, e.g., NIH, the information learned in a trial and the data behind that knowledge could be understood as a public good, and should be made available to anyone interested in learning more. 

For researchers, sharing clinical trial data is a contribution to the collective knowledge of the medical community, adheres to the medical industry’s ethical standards, and reduces repeated trial research done by other researchers. Furthermore, funding agencies can make decisions on future clinical trials based on results and impacts that are found in shared clinical trial data. This furthers the possibility of appropriate investments in clinical study research. In addition, allowing individuals access to clinical trials data or results may be empowering for the general population, as individuals can decide which risks they are willing to take. When data are available on a topic, other researchers can reuse the data and patients will not be exposed to the same risks on an intervention that has already been tested.

Shared data can also be leveraged by secondary users (typically researchers), who may use the data when “carrying out additional analyses, analyzing unpublished data, reproducing published findings, and conducting exploratory analyses to generate new research hypotheses” (Committee on Strategies for Responsible Sharing of Clinical Trial Data Sharing, 2015). Data must be managed in a “responsible manner that mitigates the risks involved,” benefits all stakeholders, and advances patient care (Committee on Strategies for Responsible Sharing of Clinical Trial Data Sharing, 2015). However, this is not to say that there are no risks associated with data sharing. Not all data and trial documentation generated in the course of a clinical trial will be shared, such as the raw data that contains Personal Identifiable Information (PII). The Committee on Strategies for Responsible Sharing of Clinical Trial Data’s [Guiding Principles for Sharing Clinical Trial Data](https://www.ncbi.nlm.nih.gov/books/NBK285999/) offers guidance on sharing data responsibility and ethically, while promoting public and scientific trust.

# Potential Data Sharing Challenges

One of the biggest data sharing challenges and risks is the potential for participant harm. Clinical trial data, including the raw and analyzable datasets, contains sensitive Personal Identifiable Information (PII) or Protected Health Information (PHI). When preparing to share data, researchers will need to collaborate with statisticians and others with advanced de-identification expertise. De-identified (anonymized) data must protect participant privacy, adhere to the methodology and processes previously described in clinical study documentation, including the trial protocol and trial registration (described below). Ensure language used in the informed consent forms matches how data are curated and stored during active research or preservation phases in the research lifecycle. Shared data must be described with enough detail that it can be utilized for reproducibility and secondary analyses. This must be done in conjunction with experts, such as a statistician, the project PI, or project team member, and should not fall solely to the data curator. 

Additional data sharing challenges stem from researchers, who might worry about competition and others building on their work, especially in the case of secondary or ancillary findings. Arguably, this demonstrates another reason that sharing is important - researchers should be credited for their work if it has been formally deposited with a reputable repository and registered on clinicaltrials.gov or another trial registry. Datasets are often assigned a persistent identifier after deposit in a repository and this may deter competitors from taking other researchers' work without giving sufficient credit. This benefit, then, is that sharing data will likely lead to increased data citations.

Another issue, which has been mostly mitigated through registration requirements, is switching the hypothesis or end goals (also known as "HARKing" or "hypothesizing after the results are known") in the middle of a trial. There have been cases where a study started in one direction and then went down an entirely new path to chase a more desirable outcome. For instance, researchers or investigators may simply be reporting on favorable outcomes while ignoring other results to make it look as though the study only saw success; this is an unethical practice that can lead to clinicians, patients, and researchers attempting to recreate something that was not presented transparently. Clinical studies should be meticulously described with pre-registration and reported on throughout the process.

# Selecting a Repository

When sharing clinical trial data, it is important to select a data repository that will best suit PII and PHI data, both of which are sensitive types of information. Researchers typically need to review their Institutional Review Board (IRB) policies to ensure data management and sharing practices comply with IRB guidance; this is in addition to any campus-wide data management and sharing policies, or retention policies, required at the institution-level. While every repository will have different features, the main considerations to take into account when selecting a repository for clinical trial data include: protections for participant privacy, minimization of risk of participant reidentification, and evaluating for alignment with the FAIR principles (Wilkinson et al, 2016). Each project will have its own requirements, which should be considered at the start of the project, and will need to be shared in a manner that complies with previous documentation. Consulting with repository managers at the start of a project, ideally in the proposal stage, will make the transition from data collection, through analysis, and to publishing data, less burdensome. The following questions are presented in a non-prioritized order, and serve as foundation for the types of questions a researcher might consider when selecting a repository:

- Can the data be shared openly, or does it require additional restrictions or protections, such as embargoes (delaying access to data for a period of time) or requiring user authorization or the completion of Data Use Agreements? 
    -	 If applicable, how does the repository review access requests? Is there a data access committee that reviews usage requests to ensure usage is consistent with participant privacy requirements and in alignment with the study’s informed consent?

- Can the repository provide the appropriate level of protection to meet relevant legal or regulatory requirements?

- Does the repository have a plan or protections in place for unintended data breaches?
    -	 Does the repository have a plan in place to deal with data reuse violations?

- Is there a cost associated with uploading to the repository?

- Will the repository be able to provide the datasets with a unique and persistent identifier? 

- Does this repository use broadly applicable vocabularies? 
    -	 Does the repository have adequate metadata fields to enable findability?

- Does the repository support the data format? 

- Does the data need to be accessed for a period of time (e.g., 5-7 years)?  
    -	 Does the repository provide support for the data after the requisite timeframe? 

- If the repository were to suspend service, is there a backup plan for preservation of the data? 

- Does the repository provide curation support to ensure data submission packages include sufficient documentation?  
    -	 If not, are data curators and specialists available within the institution?

If the repository will hold a large amount of clinical trial data, it is recommended to consider selecting a specialized clinical data sharing repository or platform over generalist or institutional repositories. [Vivli](https://vivli.org/) is currently the most popular specialized repository for clinical trial data and has many features required for ethical data sharing and storing and data reuse. Features include: a requirement for data to be de-identified prior to submission, access to de-identified individual patient-level data (IPD), a secure research platform in which researchers can work with the requested data, established partnerships with anonymization experts that researchers can access, supporting data documentation for secondary use, and implementation of data use agreements (DUAs), which requires users to agree to terms of use before they can access the data for reuse. Due to these features, Vivli has become the de facto repository for sharing clinical trials data; submitting data to Vivli means a study will be discoverable in many other locations (Vasquez et al, 2021). However, designated downloadable datasets require, per the terms of use agreement, that downloaded data be destroyed. Furthermore, every “action taken on the Vivli platform is recorded in an audit trail on the platform. Every time data is accessed either via the secure research environment or downloaded the action is recorded in the platform” (Vivli, "How Vivli meets the NIH ‘Desirable Characteristics for Data Repositories’"). Dataset metadata are assigned PIDs and made discoverable via Google Scholar and Google Dataset searches.  

Another excellent resource for reputable scientific data repositories is the [NIH-supported Scientific Data Repositories list](https://sharing.nih.gov/data-management-and-sharing-policy/sharing-scientific-data/repositories-for-sharing-scientific-data), which includes discipline specific repositories that support the domain specific needs of researchers. 

# Clinical Trial Registration 

## Why Is Trial Registration Important?

Trial registration is often a prerequisite in many countries to proceed with clinical studies involving human participants. Funders, either private or public, may also require trial registration to comply with grant conditions. Aside from federal government and funder requirements, registering and sharing clinical trial data and clinical study results, as well as study methodologies, promotes scientific best practice, strengthens the transparency, validity, and value of the scientific evidence. The World Health Organization (WHO) identifies several key areas as to why trial registration promotes good scientific practice:
- It is difficult to make informed decisions if publication bias and selective reporting are present.
- Improving awareness of similar or identical trials will make it possible for researchers and funding agencies to avoid unnecessary duplication.
- Describing clinical trials in progress can make it easier to identify gaps in clinical trials research.
- Making researchers and potential participants aware of recruiting trials may facilitate recruitment.
- Enabling researchers and health care practitioners to identify trials in which they may have an interest could result in more effective collaboration among researchers. The type of collaboration may include prospective meta-analysis.
- Registries checking data as part of the registration process may lead to improvements in the quality of clinical trials by making it possible to identify potential problems (such as problematic randomization methods) early in the research process (WHO Trial Registration).

On clinicaltrials.gov, the results of registered trials (in clinicaltrials.gov) database is incorporated into the public facing trial registry and the principal investigator or sponsor updates the registry with summary level information on the study’s results as the study proceeds. Descriptive results or “facets” may be legally required information in the U.S. (depending on the type of study and granting agency), and includes summaries of:
- Participant Flow: The progress of participants through each stage of a study, and includes the numbers of participants who started, completed, and dropped out of each period of the study based on the sequence in which interventions were assigned.
- Baseline Characteristics: Data collected at the beginning of a study for all participants. Demographics, such as age and gender, and study-specific measures are included.
- Outcome Measures and Statistical Analyses: Outcome measure values and any appropriate statistical analyses.
- Adverse Events: Anticipated and unanticipated serious adverse events, and other adverse events exceeding a specific frequency threshold (U.S. National Library of Medicine, 2018, March). 

The tables below, modified from the ‘Why Should I Register and Submit Results?’ page on clinicaltrials.gov, indicate the purpose of the trial registry and results database, and note the particular groups that benefit from shared trial data (U.S. National Library of Medicine, 2021, May).

|   Registry Purpose   |   Groups that Benefit   |
| :------------- | :------------- |
| Fulfill ethical obligations to participants and the research community  | Participants, patients, the general public, the research community, granting agencies |
| Provide information to potential participants and referring clinicians  | Participants, patients, clinicians |
| Reduce publication bias  | Users of the medical literature, the general public |
| Help editors and others understand the context of study results  | Journal editors, users of the medical literature, secondary users of the research data |
| Promote more efficient allocation of research funds  | Granting agencies, the research community, the general public |
| Help institutional review boards (IRBs) determine the appropriateness of a research study  | IRBs, the research community, participants |

Modified from: Zarin DA, Keselman A. [Registering a clinical trial in ClinicalTrials.gov.](https://pubmed.ncbi.nlm.nih.gov/17303677/) Chest. 2007;131(3):909-12. [https://pubmed.ncbi.nlm.nih.gov/17303677/](https://pubmed.ncbi.nlm.nih.gov/17303677/)

<br>

|   Results Database Purpose   |   Groups that Benefit   |
| :------------- | :------------- |
| Provide a public record of basic study results in a standardized format  | Researchers, journal editors, IRBs, patients, the general public |
| Promote the fulfillment of ethical obligations to participants and the overall contribution of research results to medical knowledge  | Participants, patients, the general public, the research community, granting agencies |
| Reduce publication and outcome reporting biases  | Users of the medical literature, the general public |
| Facilitate systematic reviews and other analyses of the research literature  | Researchers, policymakers |


Modified from: Tse T, Williams RJ, Zarin DA. [Reporting "basic results" in ClinicalTrials.gov.](https://pubmed.ncbi.nlm.nih.gov/19584212/) Chest. 2009;136(1):295-303. [https://pubmed.ncbi.nlm.nih.gov/19584212/](https://pubmed.ncbi.nlm.nih.gov/19584212/)

## U.S. National Institutes of Health

The U.S. National Library of Medicine (NLM) at the National Institutes of Health (NIH) maintains a database of privately and publicly funded clinical studies conducted around the world. [Clinicaltrials.gov](http://clinicaltrials.gov) is a website that provides a robust and user-friendly way for clinicians, patients, researchers, and the general public to find clinical studies information on an extensive array of subjects. Studies are registered by the clinical trial investigator(s) and are regularly updated throughout the duration of the study. Study information may also be updated at the end of the study and include final results. 

In the United States, Section 801 of the Food and Drug Administration Amendments Act of 2007, known as FDAAA 801, as well as the Final Rule for Clinical Trials Registration and Results Information Submission, known as 42 CFR Part 11, detail clinical trial [registration requirements.](https://clinicaltrials.gov/ct2/manage-recs/fdaaa#OtherFDAAA801Requirements)

As of January 25, 2023, the NIH has implemented a Data Management and Sharing Policy (DMS), which applies to scientific data, including clinical trials data, generated as part of NIH-sponsored research. For more information of this policy, visit the [NIH DMS website.](https://sharing.nih.gov/data-management-and-sharing-policy/about-data-management-and-sharing-policies/data-management-and-sharing-policy-overview)

## The World Health Organization

The World Health Organization (WHO) regards trial registration as “the publication of an  internationally-agreed set of information about the design, conduct and administration of clinical trials” (WHO, ICTRP Registry Network). Trial details are made publicly available in the International Clinical Trials Registry Platform (ICTRP), however, the WHO ICTRP is not itself a clinical trials registry. Rather, the ICTRP aggregates clinical trial registrations from registries which meet WHO criteria. These criteria are grouped into six content areas: Content, Quality and Validity, Accessibility, Unambiguous, Identification, Technical Capacity, and Administration and Governance (WHO, ICTRP Registry Network). This collection of registries, known as the WHO Registry Network, is composed of:

- [Primary Registries](https://www.who.int/clinical-trials-registry-platform/network/primary-registries) meet WHO criteria listed above as well as the requirements of the International Committee of Medical Journal Editors (ICMJE) (described below). 
- [Partner Registries](https://www.who.int/clinical-trials-registry-platform/network/partner-registries) are affiliated with either a Primary Registry in the WHO Registry Network or an ICMJE approved registry. 
- [Data Providers](https://www.who.int/clinical-trials-registry-platform/network)
- [Registries working with the ICTRP towards becoming Primary Registries](https://www.who.int/clinical-trials-registry-platform/network)

[The ICTRP Search Portal](https://trialsearch.who.int/Default.aspx) is the public-facing point of access for information about ongoing and completed clinical trials and includes information from all WHO Registry Network registries. 

## International Committee of Medical Journal Editors

The International Committee of Medical Journal Editors (ICMJE) is a group of general medical journal editors who meet annually to update the [Recommendations for the Conduct, Reporting, Editing and Publication of Scholarly Work in Medical Journals](https://www.icmje.org/icmje-recommendations.pdf). These recommendations are the “best practice[s] and ethical standards in the conduct and reporting of research and other material published in medical journals,” and are considered the industry standard for medical research publication (International Committee of Medical Journal Editors, 2022). There are currently over 5,000 journals that report to follow the ICMJE recommendations, however, there is no compliance protocol to ensure recommendations are followed. Clinical trial registration is included in these recommendations and ICMJE requires “all medical journal editors require registration of clinical trials in a public trials registry” prospectively (before the first participant enrollment)” (International Committee of Medical Journal Editors, Recommendations ("The Uniform Requirements")). 

In 2018, the ICMJE implemented a required data sharing statement policy for manuscripts publishing results of clinical trials, submitted to ICMJE journals. Data sharing statements must include: 
Whether individual de-identified participant data (including data dictionaries) will be shared (“undecided” is not an acceptable answer).
- What data in particular will be shared.
- Whether additional, related documents will be available (e.g., study protocol, statistical analysis plan, etc.).
- When the data will become available and for how long.
- By what access criteria data will be shared (including with whom, for what types of analyses, and by what mechanism) (ICMJE Clinical Trials). 

Furthermore, as of 2019, the ICMJE added an additional requirement to the data sharing statement, and now requires a data sharing plan in all clinical trials registrations (ICMJE Data Sharing Statements).

## Trial Registration Data Elements

Each trial registry requires specific information about the registering clinical trial. This collection of descriptive data elements, often known as the trial registration data set, is required for a trial to be considered fully registered. Although these requirements vary, the WHO’s primary and partner registries must require a minimum amount of trial data elements to comply with WHO requirements. These required data elements, known as the WHO Trial Registration Dataset (TRDS), is currently composed of 24 descriptive elements and are listed below (WHO Trial Registration Data Set). Additional fields are required for clinicaltrials.gov [protocol registrations](https://prsinfo.clinicaltrials.gov/definitions.html) and [results data](https://prsinfo.clinicaltrials.gov/results_definitions.html).

<figure> <img src="clinical-3.JPG" alt="WHO Trial Registration Data Set." style=""> <figcaption></figcaption> </figure>


Source: [WHO Trial Registration Data Set (Version 1.3.1).](https://www.who.int/clinical-trials-registry-platform/network/who-data-set)

# Core Metadata Elements and Documentation Requirements

Trial registration data elements, while not necessarily adhering to a particular metadata schema, do provide structured metadata for trial datasets. Metadata standards are always evolving and, as such, structured metadata elements in the form of trial registrations “represent a class of descriptive metadata about the high-level characteristics of a clinical trial” (Miron et al, 2020). Persistent identifiers (PIDs) should be added to trial registration data, where appropriate, as these identifiers augment data FAIRness. Furthermore, including “registry metadata in systematic reviews can help to identify selective reporting bias by comparing published outcomes to prespecified outcomes, and adverse events are more likely to be reported in clinical trial registries than in published literature” (Miron et al, 2020). 

The 24 WHO data elements listed above can be considered the core data elements needed for clinical trial metadata; however, additional elements may be required, depending on which registry is used.

Common Data Elements, or CDE, are “a standardized, precisely defined question, paired with a set of allowable responses, used systematically across different sites, studies, or clinical trials to ensure consistent data collection” (NIH CDE Repository). Using CDE provides consistency within discipline areas by standardizing how data is collected, described, and formatted (COMPASS, Importance of Common Data Elements (CDEs)). By using CDE, researchers can not only save time when creating and launching their research project, but can also increase the FAIRness of their research outputs, ensure consistency of data collection, and meet funder requirements. Leveraging the CDE also facilitates data integration, and therefore meta-analyses, and replicability of research across disciplines and studies. 

[The CDISC Foundational Standards](https://www.cdisc.org/standards) may be helpful at every stage of the research project to collect, analyze, and exchange data in a standardized manner. CDISC creates and manages different standards for clinical trial researchers to facilitate data reusability, interoperability, and accessibility. The standards [span the clinical trial lifecycle](https://www.cdisc.org/standards) and are divided into different categories: [data exchange](https://www.cdisc.org/standards/data-exchange), [foundational standards](https://www.cdisc.org/standards/foundational), [controlled terminology](https://www.cdisc.org/standards/terminology/controlled-terminology), and others. 

Similarly, requirements from the publication industry and funders around data sharing policies and data sharing statements can be reappropriated for clinical study data management and sharing plans (DMSP), also referred to as data management plans (DMPs). For instance, data sharing statements required by the ICMJE can be modified to be included in the study’s DMSP, README files, and other study documentation. Likewise, beginning 2023 the NIH issued a DMSP requirement, which encourages researchers to include information about data type, anticipated tools for collection and analysis, and which standards will be used; this new policy also permits allowable costs data sharing requirements and services above and beyond the routine costs of doing research. The ICMJE  and NIH have slightly different requirements, however, when developing a data sharing statement, broadly consider the following questions: 
- What data in particular will be collected? Which data will be shared?
- What other documents will be available?
- When will data be available (start and end dates)? Are there any access restrictions necessary for the data?
- With whom will the data be shared?
- For what types of analyses?
- By what mechanism will data be made available? (International Committee of Medical Journal Editors, Clinical Trials)

Study documentation can note compliance with, for example, ICMJE recommendations and considerations, and this record helps potential data reusers understand and trust industry-standard primary data. 


# Key Curation Considerations

When preparing data from a clinical trial for sharing, there are numerous considerations researchers and curators need to consider. For the purposes of this primer, this focus is on how to curate different components of a complete data package; however, different data will need to be shared at different stages of the research process. 

Regardless of which portion(s) are being shared, it is essential that all data sharing and storage considerations prioritize the protection and privacy of participant data, including  communities as well as individuals. The [CARE Principles for Indigenous Data Governance](https://www.gida-global.org/care#:~:text=The%20CARE%20Principles%20for%20Indigenous%20Data%20Governance%20are%20people%20and,Indigenous%20innovation%20and%20self%2Ddetermination) provide guidelines for protecting and collaborating with communities participating in clinical trial studies. See more about how to review [consent forms](https://github.com/DataCurationNetwork/data-primers/blob/master/Consent%20Forms%20Data%20Curation%20Primer/consent-forms-data-curation-primer.md) or [check for informed consent](https://github.com/DataCurationNetwork/data-primers/blob/master/Human%20Participants%20Data%20Essentials%20Data%20Curation%20Primer/human-participants-data-essentials-data-curation-primer.md#brief-introduction-to-consent-review-and-communicating-about-informed-consent-with-a-depositor) in other DCN primers.

A comprehensive data package, typically shared by publication or the end of the performance period of the supporting funding (whichever comes first), should contain the following:

- **Analyzable dataset:** This is the processed, edited, and computational version of the data. This dataset needs to be deidentified in collaboration with an expert. 
    -	 This must include documentation of how the raw data was processed to create the analyzable data. This will be important for future re-users of the data to understand the decisions the research team made.

- **Trial protocol:** The first trial protocol, the final protocol, and a summary of changes all need to be submitted as part of the final data package. This needs to include consent forms and recruitment mechanisms. 
    -	 **Statistical analysis plan (SAP):** Include specific information about which programs were used in analyzing the data, which versions, and any necessary packages or dependencies. 

- **Analytic Code:** The code(s) that were used in analyzing the dataset and producing the results. These need to be sufficient for a fellow member of the field to be able to reproduce the results.



## DCN CURATE(D) Steps

Use the [Data Curation Network’s CURATE(D)](z.umn.edu/curate) checklist to finalize your data for submission:

### **Check** files and read documentation (review for appropriate levels of sharing, ensuring privacy and ethical standards are upheld, review file inventory and file appraisal/selection)
- Review the [consent form](https://github.com/DataCurationNetwork/data-primers/blob/master/Consent%20Forms%20Data%20Curation%20Primer/consent-forms-data-curation-primer.md) template, if available, to confirm data are being shared as described to the participants before agreeing to participate in the study
- Review analyzable code and check for methodology description for converting data from raw to analyzable formats
    -	 If needed, connect researcher(s) to de-identification specialists. 
- Check for trial registration on clinicaltrials.gov or other appropriate registry  
- If necessary, ensure participants provided their consent to participate autonomously and without coercion 
- If necessary, assess whether a representative for the participant group needs to review the data (further description in the Request step below)
- If a group of participants are being referred to with a demographic label, ensure this label is one that best represents them; consultation with the group may be required
    -	 For a case study on community-based participatory research, [review Understanding community-based participatory research through a social movement framework: a case study of the Kahnawake Schools Diabetes Prevention Project](https://bmcpublichealth.biomedcentral.com/articles/10.1186/s12889-018-5412-y) (Tremblay et al, 2018). 
- If this data has been used for regulatory approval (e.g., FDA approval for devices, etc.) ensure licenses are appropriate


### **Understand** the data (or try to), if not… (run files/environment, QA/QC issues, readme)
- Ensure that someone with similar qualifications could look at this data and both understand it and be able to reuse it
    -	 Are all headings clear? 
    -	 Is there missing participant data that needs to be accounted for?
    -	 Is the methodology of intervention clear and sufficient?
- If possible, try running the analytic code


### **Request** missing information or changes (tracking provenance of any changes and why)
- Review questions/concerns from the previous step - how can these be addressed? 
- Have participants been notified that their data will be shared in addition to being published?
    -	 Is further communication needed to ensure they know how their data are being used/will potentially be used in future work

### **Augment** metadata for findability (DOIs, metadata standards, discoverability)
- Does the dataset have an appropriate identifier that will allow others to discover this work?
    -	 Has sufficient descriptive metadata been created? 
    -	 When relevant and appropriate, have the Common Data Elements (CDE) been utilized?
- Ensure appropriate links between trial registry and published datasets are included

### **Transform** file formats for reuse (data preservation, conversion tools, data visualization)
- Do file formats need specialized software to open? If so, is this software free or widely available? 
    -	 Change file formats into open source formats if appropriate
    -	 Will any information potentially be lost with file transformation? Make note of this decision
- Ensure the data can be exported to a non-proprietary format (e.g. csv, txt)
- Keep copies of original file formats
- Standardize file names 
- Ensure accessibility if any data visualizations are included
- Organize files as needed


### **Evaluate** for FAIRness (licenses, responsibility standards, metrics for tracking use)
- Review the FAIRness of the data (findable, accessible, interoperable, reusable)
- Follow [CARE](https://www.gida-global.org/care) and [FATE](https://www.microsoft.com/en-us/research/theme/fate/) principles by centering community input and community-driven participation
- Perform a final check for potential ethical concerns such as de-identification and harmful language
- Verify files are working and have transformed correctly, when applicable 

### **Document** curation activities (Curator Log, correspondence)
- Include documentation, such as consent forms and IRB approval, in final data submission or deposit
- Log ongoing changes and updates to data in the documentation
    -	 This can include correspondence about the dataset, metadata, and changes from the Transform step
- Include any other relevant documentation for the dataset

## Related Primers

- [Informed Consent Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Consent%20Forms%20Data%20Curation%20Primer/consent-forms-data-curation-primer.md) 
- [Human Participants Data Essentials Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Human%20Participants%20Data%20Essentials%20Data%20Curation%20Primer/human-participants-data-essentials-data-curation-primer.md#brief-introduction-to-identifiers-and-communicating-about-de-identification-with-a-depositor) 
- [Qualitative Data Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Qualitative%20Data%20Curation%20Primer/qualitative-data-curation-primer.md#workflow-based-on-the-data-curation-network-curated-steps) 
- [SPSS Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/SPSS%20Data%20Curation%20Primer/SPSS-data-curation-primer.md#Appendix-A-Using-CURATE-with-SPSS-Data) 


## Helpful Resources

- [ARX - Data Anonymization Tool](https://arx.deidentifier.org/): Full-featured freeware for statistical risk assessment and anonymization. Requires knowledge of techniques. 
- [Selecting a Data Repository-NIH](https://sharing.nih.gov/data-management-and-sharing-policy/sharing-scientific-data/selecting-a-data-repository) 
- [REDCap](https://www.project-redcap.org/) 
- [TrialMaster](https://www.anjusoftware.com/trialmaster-edc) 
- [Vivli](https://vivli.org/) 
- [WHO Primary Registries](https://www.who.int/clinical-trials-registry-platform/network/primary-registries) 
- [Data Management and Sharing Plan Guidance](https://osf.io/uadxr/), created by the U.S.-based librarian NIH DMSP Guidance Working Group 


## Bibliography

Committee on Strategies for Responsible Sharing of Clinical Trial Data; Board on Health Sciences Policy; Institute of Medicine. (2015, April 20). _Sharing Clinical Trial Data: Maximizing Benefits, Minimizing Risk._ Washington (DC): National Academies Press (US); [https://www.ncbi.nlm.nih.gov/books/NBK285993/](https://www.ncbi.nlm.nih.gov/books/NBK285993/)

Comprehensive Center for the Advancement of Scientific Strategies (COMPASS). (n.d.). _Importance of Common Data Elements (CDEs)._ [https://www.compass.fhcrc.org/compass/bin/tech/cdes.aspx](https://www.compass.fhcrc.org/compass/bin/tech/cdes.aspx)

Institute of Medicine of the National Academies. 2015. _Sharing Clinical Trial Data: Maximizing benefits, minimizing risk._ Washington, DC: The National Academies Press. [https://doi.org/10.17226/18998](https://doi.org/10.17226/18998)

International Committee of Medical Journal Editors. (n.d.). _Clinical Trials._ [https://www.icmje.org/recommendations/browse/publishing-and-editorial-issues/clinical-trial-registration.html](https://www.icmje.org/recommendations/browse/publishing-and-editorial-issues/clinical-trial-registration.html)

International Committee of Medical Journal Editors. (n.d.). _ICMJE Recommendations ("The Uniform Requirements")._
[https://www.icmje.org/about-icmje/faqs/icmje-recommendations/](https://www.icmje.org/about-icmje/faqs/icmje-recommendations/)

International Committee of Medical Journal Editors. (2022, May). _Recommendations for the Conduct, Reporting, Editing, and Publication of Scholarly Work in Medical Journals._ [https://www.icmje.org/icmje-recommendations.pdf](https://www.icmje.org/icmje-recommendations.pdf)

Miron, L., Gonçalves, R. S., & Musen, M. A. (2020). Obstacles to the reuse of study metadata in ClinicalTrials.gov. Scientific Data (Vol. 7, Issue 1). Springer Science and Business Media LLC. [https://doi.org/10.1038/s41597-020-00780-z](https://doi.org/10.1038/s41597-020-00780-z)

National Institutes of Health. (n.d.). _Repositories for Sharing Scientific Data._ 
[https://sharing.nih.gov/data-management-and-sharing-policy/sharing-scientific-data/repositories-for-sharing-scientific-data](https://sharing.nih.gov/data-management-and-sharing-policy/sharing-scientific-data/repositories-for-sharing-scientific-data) 

Raftery J, Young A, Stanton L, Milne, R, Cook A, Turner D, & Davidson, P. (2015, February). Chapter 2, Data quality and reporting in existing clinical trial registries: a review of existing databases. _Clinical trial metadata: defining and extracting metadata on the design, conduct, results and costs of 125 randomised clinical trials funded by the National Institute for Health Research Health Technology Assessment programme._ Southampton (UK): NIHR Journals Library; (Health Technology Assessment, No. 19.11.). [https://www.ncbi.nlm.nih.gov/books/NBK274341/](https://www.ncbi.nlm.nih.gov/books/NBK274341/)

Scientific European Federation of Osteopaths. (2014, September 10). _Different Types of Clinical Trials._ [https://www.scientific-european-federation-osteopaths.org/different-types-of-clinical-trials/](https://www.scientific-european-federation-osteopaths.org/different-types-of-clinical-trials/) 

Taichman, D. B., Sahni, P., Pinborg, A., Peiperl, L., Laine, C., James, A., Hong, S.-T., Haileamlak, A., Gollogly, L., Godlee, F., Frizelle, F. A., Florenzano, F., Drazen, J. M., Bauchner, H., Baethge, C., & Backus, J. (2017). Data Sharing Statements for Clinical Trials: A Requirement of the International Committee of Medical Journal Editors. Annals of Internal Medicine (67)1, 63–65. American College of Physicians. [https://doi.org/10.7326/m17-1028](https://doi.org/10.7326/m17-1028)

U.S. National Library of Medicine. (2022, June). _How to Register Your Study._ ClinicalTrials.gov. [https://clinicaltrials.gov/ct2/manage-recs/how-register](https://clinicaltrials.gov/ct2/manage-recs/how-register) 

U.S. National Library of Medicine. (2022, January). _FDAAA 801 and the Final Rule - Other FDAAA 801 Requirements: NIH and FDA._ ClinicalTrials.gov. https://clinicaltrials.gov/ct2/manage-recs/fdaaa#OtherFDAAA801Requirements

U.S. National Library of Medicine. (2021, May). _Why Should I Register and Submit Results? - Trial Registry Purposes and Benefits for Various Groups._ ClinicalTrials.gov. [https://clinicaltrials.gov/ct2/manage-recs/background](https://clinicaltrials.gov/ct2/manage-recs/background) 

U.S. National Library of Medicine. (2019, March). _Learn About Clinical Studies - Reasons for Conducting Clinical Studies._ ClinicalTrials.gov. [https://clinicaltrials.gov/ct2/about-studies/learn#ReasonsForConducting](https://clinicaltrials.gov/ct2/about-studies/learn#ReasonsForConducting) 

U.S. National Library of Medicine. (2019, March). _Learn About Clinical Studies - What is a Clinical Study?_ ClinicalTrials.gov. [https://clinicaltrials.gov/ct2/about-studies/learn#WhatIs](https://clinicaltrials.gov/ct2/about-studies/learn#WhatIs)

U.S. National Library of Medicine. (2018, March). _About the Results Database._ ClinicalTrials.gov. [https://clinicaltrials.gov/ct2/about-site/results](https://clinicaltrials.gov/ct2/about-site/results)

Vazquez, E., Gouraud, H., Naudet, F., Gross, C. P., Krumholz, H. M., Ross, J. S., & Wallach, J. D. (2021). Characteristics of available studies and dissemination of research using major clinical data sharing platforms. _Clinical trials_ (London, England), 18(6), 657–666. [https://doi.org/10.1177/17407745211038524](https://doi.org/10.1177/17407745211038524)

Vivli. (n.d.). _How Vivli meets the NIH ‘Desirable Characteristics for Data Repositories.’_ [https://vivli.org/about/nih-grei-project/nih-grei-project-desireable-characteristics/](https://vivli.org/about/nih-grei-project/nih-grei-project-desireable-characteristics/)

Wilkinson, M.D., Dumontier, M., Aalbersberg, I.J., Appleton, G., Axton, M., Baak, A., Blomberg, N., Boiten, J.W., Bonino da Silva Santos, L., Bourne, P.E., Bouwman, J., Brookes, A.J., Clark, T., Crosas, M., Dillo, I., Dumon, O., Edmunds S., Evelo, C.T., Finkers, R., … Mons, B. “The FAIR Guiding Principles for scientific data management and stewardship." Scientific data 3.1 (2016): 1-9. [https://doi.org/10.1038/sdata.2016.18](https://doi.org/10.1038/sdata.2016.18)

World Health Organization. (n.d.). _ICTRP Registry Network._ [https://www.who.int/clinical-trials-registry-platform/network](https://www.who.int/clinical-trials-registry-platform/network)

World Health Organization. (n.d.). _ICRTP Registry Network - Trial registration._
[https://www.who.int/clinical-trials-registry-platform/network/trial-registration](https://www.who.int/clinical-trials-registry-platform/network/trial-registration)

World Health Organization (n.d.) _International Clinical Trials Registry Platform (ICTRP)._ [https://www.who.int/clinical-trials-registry-platform](https://www.who.int/clinical-trials-registry-platform)

World Health Organization (n.d.). _WHO Trial Registration Data Set (Version 1.3.1)._ 
[https://www.who.int/clinical-trials-registry-platform/network/who-data-set](https://www.who.int/clinical-trials-registry-platform/network/who-data-set)


