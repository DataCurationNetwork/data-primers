![](DCNlogo.png)

# Qualitative Data Primer

Authors: Diana Castillo, Heather Coates, Mikala Narlock

Mentor: Shanda Hunt

About: Curating datasets underlying qualitative research

Related DCN Primers:

[ATLAS.ti Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Atlas.ti%20Data%20Curation%20Primer/AtlasTI-data-curation-primer.md)

[Nvivo Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/NVivo%20Data%20Curation%20Primer/NVivo-data-curation-primer.md)

[Human Subjects Data Essentials Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Human%20Subjects%20Data%20Essentials%20Data%20Curation%20Primer/human-subjects-data-essentials-data-curation-primer.md)

# Format Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| What is qualitative data?  | Qualitative data can be wide-ranging, from the more traditional surveys and interviews, to photos and other images, to social media posts (Flick, 2014). The goal of analyzing qualitative data is to explore the experiences, interactions, and related materials to trace the relationships and help describe the phenomena being studied (Flick,2018). |
| Structure | Projects are often exported as packages of files to be loaded into other qualitative data software. |
| Primary fields or areas of use | Qualitative data is used by many different disciplines for a wide-variety of reasons, ranging from literature review to analyzing themes in interviews, datasets, images, and audiovisual materials. Common disciplines tend to be the social sciences, but many different fields could use these tools for qualitative or mixed methods research. <br>  <ul><li> Humanities </li> <li> Social Sciences: Political Science, Sociology </li> <li> Health Sciences: Public Health, Nursing, Health Services </li> <li> Qualitative or mixed-method researchers </li></ul> |
| Source and affiliation  | There are open-source and proprietary software options. <br> Proprietary: Nvivo (software) <br> ATLAS.ti (software) <br> Dedoose (browser based) <br> Open Source: <br> [qcoder](https://github.com/ropenscilabs/qcoder) (an R library for qualitative analysis of text) <br> [RQDA](http://rqda.r-forge.r-project.org/) (an R package for qualitative analysis of plain text) <br> [Taguette](https://www.taguette.org/) (open source qualitative analysis program that works on Windows, Mac, and Linux computers, as well as in-browser) |
| Software exchange standards  | The REFI-QDA Standard : <https://www.qdasoftware.org/> QuDEX - The Qualitative Data Exchange Schema (QuDEx). [Used by UK Data Archive](https://www.data-archive.ac.uk/sharing-best-practice/metadata-and-data-discovery/metadata-standards/) DDI Standard: [pdf](https://ddialliance.org/sites/default/files/AQualitativeDataModelForDDI.pdf) |
| Key questions for curation review | <ul><li> What is the minimal level of documentation (e.g.,
codebook, node structure, etc.) required to accept this
deposit in your repository? </li> <li> Which software was used? Which version of the software? Has this been recorded in the readme? </li> <li> Has the file been exported in a proprietary format or open source (e.g., in ATLAS.ti, one can export as an atlproj or an open source qualitative data format)? </li> <li> Which types of source formats were used for analysis (e.g., text, image, A/V, etc.)? </li> <li> Are there any potentially sensitive or protected data, including personally identifiable information? </li> <li> If the data have been anonymized, is there a record of what has been redacted or changed? </li> <li> Does the project include associated information, including codebook(s)? </li> <li> What contextual information about the coding and analytical process is crucial for the evaluation and interpretation of the published findings? </li></ul> |
| Tools for curation review  | Original software used to create the project, spreadsheet or text editor. |
| Date Created  | October 2020 |
| Created by  | Diana Castillo, Heather Coates, Mikala Narlock |
| Date updated and summary of changes made  |  |


# Table of Contents

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:undetermined orderedList:0 -->

- [Scope](#Scope)
- [What is Qualitative Data?](#What-is-Qualitative-Data?)
- [Files needed for curation of a qualitative dataset](#Files-needed-for-curation-of-a-qualitative-dataset)
- [Selecting an appropriate data repository](#Selecting-an-appropriate-data-repository)
- [Steps & Tools for Reuse of Qualitative Data](#Steps-Tools-for-Reuse-of-Qualitative-Data)
- [Benefits and challenges of sharing qualitative data](#Benefits-and-challenges-of-sharing-qualitative-data)
- [Reproducibility, transparency, and maximizing reuse](#Reproducibility-transparency-and-maximizing reuse)
- [Why readme files are important for qualitative data](#Why-readme-files-are-important-for-qualitative-data)
- [Example qualitative datasets and sample citations](#Example-qualitative-datasets-and-sample-citations)
- [Workflow based on the Data Curation Network CURATED steps](#Workflow-based-on-the-Data-Curation-Network-CURATED-steps)
-   [C-Check](#CCheck)
-   [U-Understand](#UUnderstand)
-   [R-Request](#RRequest)
-   [A-Augment](#AAugment)
-   [T-Transform](#TTransform)
-   [E-Evaluate](#EEvaluate)
-   [D-Document](#DDocument)
- [Bibliography](#Bibliography)

<!-- /TOC -->

# Scope

This qualitative data primer is designed to give data curators a grounding in what goes into evaluating qualitative datasets. This primer is software agnostic, focusing specifically on the specific needs of qualitative
data curation.

# What is Qualitative Data?

The definition of what counts as qualitative data has changed over time, but can be understood as empirical data that cannot be expressed numerically without losing important contextual information. This can include surveys, interviews, photographs, audiovisual materials, and social media posts. Qualitative research is conducted in numerous disciplines, and is often generated by mixed-methods design. Qualitative data lends itself to more holistic analysis than does quantitative data.

# Files needed for curation of a qualitative dataset

Necessary
- Original source data, when possible, and as long as it is de-identified
- Processed data (e.g., transcripts)
- Codebook
- Readme
- Instrument for data collection (e.g., survey, interview, etc), if applicable
- Documentation generated in the Qualitative Data Analysis Software (QDAS) application (e.g., Nvivo, atlas.TI, etc.): memos, notes, networks, classifications

Ideally:
- Informed consent statement(s) or assent (see the Human Subjects Data Essentials Primer)
- IRB protocol (see the Human Subjects Data Essentials Primer)
- Study protocol or procedures manual
- Data Management Plan --To indicate how long the data needs to be preserved/accessible, and any other stipulations on sharing/management.

Ensure the files are present, and can be opened and understood. If possible, save the data in both the project-specific file type (e.g., .atlproj for ATLAS.ti) and an export of the raw data in a csv, text, or other open source file(s). Some software allow users to export the entire project in an open source format, such as a csv.

# Selecting an appropriate data repository

When selecting a repository, there are many factors to consider before depositing your data and content. Every repository has a different mission and will comply with different requirements. If your data contains personally identifiable information (PII) or is subject to legal or regulatory requirements that will require controlled access to data and/or research outputs, it is critical that a repository is evaluated before the data is created.

This is not an exhaustive list of considerations, but every potential repository should be evaluated on the most pressing needs of the dataset, such as:
- Data sensitivity -- How sensitive is the data? What protections should be in place? Can the repository provide the appropriate level of protection to meet relevant legal or regulatory requirements?
- Persistence -- Will the repository be able to provide a persistent and unique identifier for your data?
- Preservation -- Some repositories are preservation focused and may require strict compliance with their regulations. Are there any format restrictions on what the repository will accept? Are there strict metadata standards you must comply with? If preservation is crucial, do they have a contingency plan in the event they must suspend service? Have they received certification from any national or international agencies?
- Costs -- Many repositories have a cost-recovery model in place for deposits, particularly for largedatasets. Does the repository charge for upload or maintenance of the data? If so, is there funding vailable to cover these expenses?
- Access -- Can your data be made openly accessible? Do you need to restrict access to part or all of the ata? Do you need to add collaborators as “Editors” to the data? Do you need to have usage statistics racked? If so, can the repository provide that information?










