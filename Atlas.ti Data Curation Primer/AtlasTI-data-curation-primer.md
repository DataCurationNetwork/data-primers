![](DCNlogo.png)

# ATLAS.ti Data Curation Primer

Author: Margarita Corral, Brandeis University (​mcorral@brandeis.edu​)

Affiliate Contributor: Hannah Hadley, Penn State (​hhadley@psu.edu​)

Mentor:  David Fearon, Johns Hopkins, (​dfearon@jhu.edu​)


|   Topic   |   Description   |
| :------------- | :------------- |
| File Extensions | <p><ul><li> **.atlproj** : Project bundle </li><li> **.atlpac** : File Project/Transfer Bundle (older versions) </li><li> **.atlcb** *or* **.acb**: Formats to transfer/store files (ATLAS.ti 6.x and 7.x) </li><li> **hpr6** *or* **hpr7** : Files (ATLAS.ti 6.x and 7.x) </li><li> **.hprx** : ATLAS.ti Mobile iPad </li><li> **.hprm** : ATLAS.ti Mobile Android </li><p> |
| MIME Type | |
| Structure | |
| Versions | Most Recent Versions: <br> Older versions: |
| Primary fields or areas of use | ATLAS.ti is used for qualitative data analysis in multiple disciplines, especially in the humanities and social science disciplines. |
| Source and affiliation | ATLAS.ti is proprietary software. ​ATLAS.ti Scientific Software Development GmbH. |
| Metadata | The REFI-QDA Standard : <​https://www.qdasoftware.org/  QuDEX - ​The Qualitative Data Exchange Schema (QuDEx). [​Used by UK Data Archive](https://www.data-archive.ac.uk/sharing-best-practice/metadata-and-data-discovery/metadata-standards/)  DDI Standard: [<​pdf​>](https://ddialliance.org/sites/default/files/AQualitativeDataModelForDDI.pdf) |
| Key questions for curation review | What ATLAS.ti version was used? <br> Can other researchers open the project without the ATLAS.ti? <br> Does the project include metadata/documentation/codebook? <br> Are there consent forms/participation agreements? <br> Is there sensitive information that can compromise human subjects’ rights? <br> Are there associated data that have been exported (i.e. result reports, codebook) outside the project? |
| Tools for curation review | ATLAS.ti |
| Date Created | May 29, 2019 |
| Created by | Margarita Corral (mcorral@brandeis.edu) |
| Date updated and summary of changes made | November 1st, 2019. Notes about REFI-QDA standard, converting files from different versions, added information about codebooks.  Added a section on Human Subjects concerns. December 5, 2019. Added a link to  information about QDPX files. Information about importing projects created in older versions. |

--------------------------
**Suggested Citation:** Corral, Margarita. (2019). Atlas.ti Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

This work was created as part of the “Specialized Data Curation” Workshop #2 held at Johns Hopkins University in Baltimore, MD on April 17-18, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

--------------------------
# Table of Contents

[Description of format](#1-description-of-format)
> [Overview](#overview) <br> [ATLAS.ti project components:](#atlasti-project-components)
  
[Examples](#2-examples) 

[Sample data set citations](#3-samle-data-set-citation) 

[Key questions to ask yourself](#4-key-question-to-ask-yourself) 

[Key clarifications to get from researcher](#5-key-clarification-to-get-from-researcher) 

[Applicable metadata standard, core elements and readme requirements](#6-applicable-metadata-standard-core-elements-and-readme-requriements)

[Resources/Software for viewing or analyzing data](#7-resourcessoftware-for-viewing-or-analyzing-data)

[Preservation actions](#8-preservation-actions) 

[What to look for to make sure this file meets FAIR principles](#9-what-to-look-for-to-make-sure-this-file-meets-fair-principles) 

[Ways in which fields may use this format](#10-ways-in-which-fields-may-use-this-format) 

[Unresolved Issues/Further Questions [for example: Tracking provenance of data creation, level of detail in dataset]](#11-unresovled-issuesfurther-questions)

[Documentation of curation process: What do capture from curation process](#12-documentation-of-curation-process-what-do-capture-from-curation-process)

[ATLAS.ti CURATED Checklist](#13-atlasti-curated-checklist)

[References and Resources](#references-and-resources)

# 1. Description of format

### Overview

Altas.ti is a software application that allows researchers to analyze qualitative data in a systematic and transparent way, increasing the validity of results (Friese 2019). ATLAS.ti handles different types of data that are kept in a project. The project files can contain text documents, images, audio recordings, videos, pdf files, geo data, Twitter data, citations from Evernote and reference managers, and survey data.

### ATLAS.ti project components:

ATLAS.ti projects can have the following main elements:

1. Documents: The data you are analyzing
2. Quotations: Selections from your documents that are considered important
3. Codes: Short phrases or words that describe quotations. Researchers assign codes to quotations
4. Memos: Notebooks where researchers write down their thoughts and ideas as they code
5. Networks: They represent relationships between codes, quotations, documents, memos, etc. visually.
6.  ​Groups: Researchers can cluster documents, codes, memos, and networks to use them as filters.

All these components can be compiled in a project bundle (.atlproj). If researchers want to share their project, move the project to a different computer, or create a backup copy, they will have to create this project bundle. ATLAS.ti also allows exporting a bundle in QDPX standard (.qdpx) so that it can be opened with other Qualitative Data Analysis (QDA) software.

Given that the only way to share/send out an ATLAS.ti project is to create a project bundle, curators will receive either an .atlproj or .qdpx file. These types of files can be open with both Mac and Windows versions. This document lists all the different ATLAS.ti files and the version needed to open each of them:​http://downloads.atlasti.com/docs/a8/Project_Exchange.pdf

Apart from project bundles, researchers can export associated data produced during the analysis process that can “live” outside the bundle.

1. All codes can be exported as a codebook (.xls, .xlsx, .qdc)
2. Document Report (.doc, .xls, .xlsx). This report shows a list of all documents in the project and it might include quotations, and codes per document.
3. Quotation Report (.doc, .xls, .xlsx). This report shows a list of all quotations in the project and it might include documents, and codes per quotation.
4. Code Report (.doc, .xls, .xlsx). This report shows a list of all codes in the project and it might include the documents, and quotations associated with each code.
5. Memo Report (.doc, .xls, .xlsx). This report shows a list of all memos and their content.
6. Word clouds for documents, quotations, and codes (.jpg)
7. Networks (.PNG, .XPS). It shows the relationships between the elements in the projects as a visual diagram.
8. Code-Document table (.xls, .xlsx). This table shows the frequency of codes per document
9. Co-Ocurrence table (.xls, .xlsx). This table shows the extent to which codes co-occur across the project, along with their quotations
10. Query Tool Report (.doc). This report shows codes and their quotations based on different search terms.

# 2. Example

[Qualitative and Quantitative data for "The International Monetary Fund's Interventions in Food and Agriculture: An Analysis of Loans and Conditions"](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/0PZVI7)

[Central Asia (2006): Injecting Drug Users in Bishkek, kyrgyzstan and Tashkent, Uzbekistan: Injecting Histories, Risky Practices, and Barriers to Adopting Behaviors Less Likely to Transmit HIV](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/27354)

[Testing a Model of Domestic Abuse Against Elder Women and Barriers to Help-Seeking in Miami-Dade County, Florida, 2006](https://www.icpsr.umich.edu/icpsrweb/NACJD/studies/27981/version/1)

# 3. Sample data set citation

Daoud, Adel, 2018, "Qualitative and Quantitative data for "The International Monetary Fund’s Interventions in Food and Agriculture: An Analysis of Loans and Conditions'', https://doi.org/10.7910/DVN/0PZVI7​, Harvard Dataverse, V1

PSI/Central Asia, 2014, "Central Asia (2006): Injecting Drug Users in Bishkek, Kyrgyzstan and Tashkent, Uzbekistan: Injecting Histories, Risky Practices, and Barriers to Adopting Behaviors Less Likely to Transmit HIV", ​https://doi.org/10.7910/DVN/27354​, Harvard Dataverse, V1

 Newman, Frederrick, 2014, "Testing a Model of Domestic Abuse Against Elder Women and Barriers to Help-Seeking in Miami-Dade County, Florida, 2006", ​https://doi.org/10.3886/ICPSR27981.v1​, Inter-university Consortium for Political and Social Research

# 4. Key questions to ask yourself

1. Can I open the project? Do I have to worry about the ATLAS.ti version used by the author? What if I do not have the software? When I open the project (.atlproj or .qdpx file), do I see all the main components (documents, quotations, codes, memos, groups)?

2. Did the authors include metadata?

3. Is there a codebook? Does the codebook have the definition for each code? Are codes grouped?

4. Did the researchers followed a protocol to protect human subjects (i.e. consent forms, participation agreement, subjects were deidentified, etc.)?

5. Does the project include memos that explain its objective, research question, methodology, coding process?

6. Are there external documents that were exported as .doc or .xls files during the analysis phase?

7. Do we have all the information needed for non-experts to understand and replicate the project?

8. Is the project saved as .qdpx so that it can be opened with other software?

# 5. Key clarifications to get from researcher

1. What version did you use? It could be that the researchers used an old version of ATLAS.ti to analyze their data. If you are unable to open the file, you might need to ask them to export it as an .atlproj file so that you can open it. They can follow ​​[these instructions](https://atlastihelp.helpscoutdocs.com/article/188-how-do-i-transfer-my-projects-from-atlas-ti-7-to-atlas-ti-8)  to transfer their project. ATLAS.ti 8 is able to import projects of any older version, as far back as to v. 5.

2. Are there any privacy issues we should be aware of?  What is the protocol you had to follow to comply with your IRB guidelines? Did you have to de-identify your subjects?

3. Could you share a codebook with us?

4. Does your project include memos where you explain your research process?

5. Did you create Report files to document the results of your analysis? What type of files are they?

# 6. Applicable metadata standard, core elements and readme requirements

1. QuDEX - ​[The Qualitative Data Exchange Schema (QuDEx)](https://www.data-archive.ac.uk/sharing-best-practice/metadata-and-data-discovery/metadata-standards/). Used by UK Data Archive

2. [DDI Standard​](https://ddialliance.org/sites/default/files/AQualitativeDataModelForDDI.pdf):

Check the fields included in the metadata. Core elements: Dataset Persistent ID, Publication Date, Title, Author, Contact, Description, Keywords, Depositor, Date of Collection, Deposit Date, Software

# 7. Resources/Software for viewing or analyzing data

The REFI-QDA Standard :  <​https://www.qdasoftware.org​/​ > allows researchers to transfer qualitative projects between different software.  Dedoose, f4analyse, MAXQDA, NVivo, QDAMiner, Quirkos, and Transana are some examples of software that can be used to view and analyze qualitative data. In order to open research projects in any of these platforms, researchers need to save their projects [as .qdpx files​](https://atlasti.com/product/qdpx/). We have to keep in mind that some elements might get lost when importing a project into a different program using the [REFI-QDA Project​](https://www.qdasoftware.org/products-project-exchange/). <br> The REFI-QDA Standard is fully implemented in ATLAS.ti 8. ​**Projects created under an earlier version will have to be exported to ATLAS.ti 8 to be saved as a .qdpx file​**.

# 8. Preservation actions

Save the project as a .qdpx file retaining the original file in case data transfer is not perfect. Converting the file to the current Atlas.TI version (8) will be best for future compatibility. Optionally retain the original version (5 through 7) or suggest that the researcher keep the earlier version. <br> If there are external data associated with the project, save them as cvs, PDF, txt, TIFF, MPEG4, where applicable.

# 9. What to look for to make sure this file meets FAIR principles

Make sure the file is Findable, Accessible, Interoperable, Reusable.

Assign a globally unique and eternally persistent identifier <br> Make sure metadata is complete <br> Make sure the data can be open with a variety of tools <br> Make sure the metadata elements follow the qualitative data standards

# 10. Ways in which fields may use this format

1. Mixed Methods

2. Social sciences

3. Humanities

4. Medicine and Health

5. Business Administration

6. Industrial Quality Assurance

# 11. Unresolved Issues/Further Questions

Are there audio/video files associated with the project (or other file types)? Are they within the .atlproj folder or separate? If separate, will they stay associated with the Atlas.TI project or will users need to move them back to the project file to reassociate them after download, and are their instructions included to do so?

 If there are very large a/v files, you might consider posting them as separate files to reduce download times or for better file management and backup, according to the policies or preferences of your repository.

Human Subject concerns. Both direct and indirect identifiers can hide throughout the QDAS project: documents, codes & annotations, researcher notes, A/V files. The curator should keep in mind that
- Video and voice recordings are inherently identifiable.
- Don’t assume depositors know what “fully de-identified” means
- Ask for Consent Forms and, ideally, IRB’s blessing for public access

For more information about Human subjects PII protection guidelines check:  ​https://dataservices.library.jhu.edu/resources/

# 12. Documentation of curation process: What do capture from curation process

1. Terms of use

2. Human Subjects

3. Version Issues

4. Types of files (excel, word doc, images...)

# 13. ATLAS.ti CURATED checklist

- **Check.** Check that the .atlproj or .qdpx file can be opened, and whether there are associated data with the project. Verify all metadata, codebook, and human subjects data provided by the author.

- **Understand.** ​Review the project has all the data (analyzed documents, codes and codebook along with definitions for clarity and completeness, memos)

- **Request.** ​Ask for the missing information.

- **Augment.** ​Complete missing fields in metadata, make suggestions to increase discoverability (keywords, descriptions)

- **Transform.** ​Convert files to file formats​ ​to preserve them for long-term access

- **Evaluate.**​ Make sure the files meet the FAIR principles

- **Document​.** Keep a record of all the steps taken during the curation process

# References and Resources

Friese, Susanne (2019): ​*Qualitative data analysis with ATLAS.ti.* Los Angeles: SAGE

- The REFI-QDA Standard :  <​https://www.qdasoftware.org/

-  ​Qualitative Data Repository: ​ ​ ​https://qdr.syr.edu/guidance/managing/formatting-data

- Qualitative DDI​ ​https://www.ddialliance.org/sites/default/files/AQualitativeDataModelForDDI.pdf
