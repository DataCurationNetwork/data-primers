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
- Access -- Can your data be made openly accessible? Do you need to restrict access to part or all of the Data? Do you need to add collaborators as “Editors” to the data? Do you need to have usage statistics tracked? If so, can the repository provide that information?

In addition to the above requirements, consider how the data and any publication records, such as presentations and articles, will be linked together regardless of where the content is stored. If the publisher will store both the data and the publication, consider storing a backup copy of the data in another repository that is publicly available, such as an institutional repository.

# Steps & Tools for Reuse of Qualitative Data

Moravcsik (2014), a political scientist, describes three dimensions of research transparency:
- Production transparency, which grants readers access to information about the methods by which particular bodies of cited evidence, arguments, and methods were selected from among the full body of possible choices.
-     Strategies include a Data Management Plan, documentation throughout the study, and organizing with the goal of sharing and reuse (even if by you alone).
- Analytic transparency, which assures readers access to information about data analysis. This entails the precise interpretive process by which an author infers that evidence supports a specific descriptive, interpretive, or causal claim.
- Data access, which affords readers access to the evidence or data used to support empirical research claims.

Enabling reuse involves both technical actions (i.e., converting proprietary or rare file formats to common, open standard file formats) as well as judgment calls that are specific to the context of the project. For example, selecting file formats recommended by the Library of Congress (https://www.loc.gov/preservation/resources/rfs/) can enable both access in the future and access by those using different software and hardware.

# Benefits and challenges of sharing qualitative data

While qualitative data can help explain phenomena and describe the world, it doesn’t have the same history of preservation and sharing that quantitative data does (Qualitative Data Repository [QDR], n.d.). Because of this, researchers may not consider depositing their data once their research projects are completed, and if they do, researchers and curators may have difficulties preparing the data for deposit.

Similar to the sharing of quantitative data, sharing qualitative data provides numerous benefits for researchers. As will be discussed later on in this primer, the increased trust and transparency and ability to reuse the data are among the key benefits to sharing qualitative data. Encouraging researchers to deposit their files could aid in the preservation of the data, rather than having them be disposed of once the particular research project has been completed (QDR, n.d.). Preserving the qualitative data could allow for easier access to data for longitudinal studies by multiple research teams that currently may be difficult to complete. In addition, sharing qualitative data can allow for a deeper analysis with the ability to have more individuals study the data and provide additional insights (Elman and Kapiszewski, 2017). Finally, as long as deposited data is publically available, it could provide students and researchers learning how to analyze qualitative data a useful dataset to practice on and examine (Elman and Kapiszewski, 2017).

Although there are benefits to sharing qualitative data through depositing it, there are also challenges. The primary one is that in the United States, data generated in the course of qualitative research is not broadly shared or deposited in repositories and researchers may not think about that possibility (QDR, n.d.). Numerous rounds of outreach to researchers conducting qualitative research may be necessary. This could range from letting them know that your repository accepts qualitative data to working with them to prepare their IRB submissions. If researchers express interest in depositing their data without planning for it when going through the ethics review process, they may run into difficulties.

# Reproducibility, transparency, and maximizing reuse

Criticisms of qualitative research have generally misunderstood the fundamental differences in philosophy, paradigm, and methods between quantitative and qualitative research. Creswell (2007) proposes that the ultimate goal of qualitative research is understanding (rather than producing generalizable knowledge). The ways in which the validity of qualitative research is evaluated depends on the role and perspective of the reader, participant, researcher, and other stakeholders. Rather than being judged by generalizable criteria, qualitative research is conducted with the assumption that the findings will be valid in some cases and less so in others. According to Lincoln & Guba (1985), the terminology used to describe validity for quantitative research should not be applied to the naturalistic approach taken in qualitative studies. Instead, they propose the use of terms such as credibility, authenticity, transferability, dependability, and confirmability. A more recent list comes from a synthesis of validation approaches by Whittemore, Chase, and Mandle (2001), who found four primary criteria: credibility, criticality, authenticity, and integrity. Creswell (2007) describes eight strategies for supporting validation as a process: prolonged engagement and persistent observation in the field; triangulation (of data sources, methods, investigators, and theories); peer review or debriefing for an external check; negative case analysis; clarifying researcher bias from project inception; member checking; rich, thick description to allow readers to make decisions about transferability; and external audits. He recommends that qualitative researchers use at least two of these strategies in any given study.

The concept of reproducibility is based on a positivistic approach to research. It is defined as the ability to produce the same results when given the same data and methods. Replicability is a related concept which focuses on obtaining the same results when applying the same methods to a different sample or dataset. In contrast to quantitative research, rigor in qualitative research is based on transparency, credibility, reliability, comparability, and reflexivity (Saumure & Given, 2008). The validity, or credibility, of a qualitative study depends upon the selection of methods suitable for the research question, rigorous methods for gathering and analyzing multiple sources of high-quality data, and the researchers self-awareness of their assumptions, biases, and influence upon the study (Patton, 1999). Reliability in a study suggests that similar results would be obtained using similar participants and research methods. For a study to be comparable, researchers need to ensure that all voices in that study are represented. Reflexivity describes the work of the researcher to identify and report how they may have influenced the results. Transparency is an overarching issue in qualitative research. Saumure & Given (2008) describe it as “clarity in describing the research process”, while Hiles (2008) takes a more expansive view. However, both emphasize the importance of transparency with respect to the process, rather than the findings. Transparency requires researchers to provide a comprehensive description of their process, or an audit trail, that allows for evaluation of the suitability of the method for the research question and replication by others.

Characteristics of qualitative research include a natural setting, the researcher as a key instrument, multiple sources of data, inductive data analysis, consideration of participant meaning, emergent design, a theoretical lens, use of interpretive inquiry, and a holistic account. In particular, curators should keep in mind that the design of qualitative research is emergent, rather than strictly defined to test a priori hypotheses. As such, documentation of the design is crucial for those who want to evaluate or extend the research, or reuse the data.

# Why readme files are important for qualitative data

A well-documented project is crucial for ensuring transparency and reproducibility in qualitative research. Replication data, which includes the raw data, codebooks, and other components required for the original analysis, allow other researchers to replicate and confirm the results of the study.

Research transparency has three dimensions: data, analytic, and production transparency (Moravcsik 2014). In short:
- Data transparency ensures the access of data to other researchers as appropriate.
- Analytic transparency requires providing clear guidelines on how the data were analyzed.
- Production transparency necessitates access to the methods by which particular bodies of cited evidence, arguments, and methods were selected.

When describing the data, analysis, and project, it is important to have robust description that covers the following:



# Example qualitative datasets and sample citations




# Workflow based on the Data Curation Network CURATED steps

Use this guide along with other primers, such as the Human Subjects Data Essentials Primer and Curation of Data Collected via Informed Consent, to determine the best next steps for your repository and institution. You can ensure you have completed a job-well-done with the Data Curation Network’s CURATE checklist:

















# Bibliography









