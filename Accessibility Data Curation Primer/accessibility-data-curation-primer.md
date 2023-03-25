![](DCNlogo.png)

# Accessibility Data Primer

Authors: Emily Oxford and Rachel Woodbrook (woodbr@umich.edu)

DCN Mentors: Wendy Kozlowski, Cornell University  


## Executive Summary

|   Topic   |   Description   |
| :------------- | :------------- |
| Key questions for curation review| <li>What types of files and data are included in the dataset? What types of accessibility considerations apply or are most relevant to ensure for the dataset? </li><li>What are the applicable accessibility best practices for the dataset or file format(s)? If none exist, what alternative practices can be used to make the data set or file formats more accessible?</li><li>Are appropriate metadata present in the right format and location (including metadata on accessibility, where needed)?</li><li>Has the dataset been tested for accessibility using an assistive technology, built-in accessibility checker, or web-based or other accessibility checker?</li> |
| Tools for curation review | <li>[Assistive technologies](https://www.atia.org/home/at-resources/what-is-at/) (e.g., screen readers, text to voice, zoom capability)<sup>1</sup> that may be available for individual machines.</li><li>Accessibility checkers built into specific software (e.g., Word products, Adobe Acrobat)</li><li>Published standards (such as [WCAG](https://www.w3.org/TR/WCAG21/),<sup>2</sup> those endorsed by [DAISY](https://daisy.org/activities/standards/),<sup>3</sup> [Crossref](https://www.crossref.org/blog/accessibility-for-crossref-doi-links-call-for-comments-on-proposed-new-guidelines/),<sup>4</sup> etc.)</li><li>Online tools (for examples see [Appendix C](#appendix-c-freely-available-tools))</li><li>Accessibility experts (e.g., campus accessibility offices or centers) and users with disabilities.<sup>5</sup></li> |
| Date Created | 2023-03-01 |
| Created by | Emily Oxford<br> Rachel Woodbrook - University of Michigan <br><br> DCN Mentor - Wendy Kozwloski – Cornell University  |
| Date updated and summary of changes made | Please see README  |



----------------------------
**Suggested Citation:** Oxford, Emily and Woodbrook, Rachel. (2023). Accessibility Data Curation Primer.[Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)


----------------------------


# Table of Contents

[Summary](#summary)

[A very brief introductions to digital accessibility](#introduction)

[Accessibility by data type](#accessibility-by-data-type)
> [Text](#text) <br> 
>> [Plain text](#plain-text) <br> [Formatted text](#formatted-text)
>>> [Microsoft Word](#microsoft-word) <br> [PDF](#pdf) <br> 
>> [Images of text](#images-of-text)
> [Tabular](#tabular)
>> [Plain tabular data](#plain-tabular-data) <br> [Formatted tabular data](#formatted-tabular-data) 
> [Code](#code)
>> [Scripts](#scripts) <br> [Markdown](#markdown)
> [Images](#images)
>> [General guidance](#general-guidance) <br> [Maps](#maps) <br> [3D Images](#3d-images) <br> [Data visualizations](#data-visualizations)
> [Time-based data](#time-based-data)
>> [Audio](#audio) <br> [Moving image/video](#moving-image-video)

[Accessible datasets](#accessible-datasets)
> [Accessibility metadata](#accessibility-metadata)

[Appendix A: Areas for further study](#appendix-a-areas-for-further-study)
> [Data type-specific considerations](#data-type-specific-considerations) <br> [File formats](#file-formats) <br> [Datasets](#datasets) <br> [Software and platforms](#software-and-platforms) <br> [Repositories](#repositories)

[Appendix B: Glossary](#appendix-b-glossary)
> [Primer definitions](#primer-definitions) <br> [WCAG definitions](#wcag-definitions)

[Appendix C: Freely available tools](#appendix-c-freely-available-tools)
> [Specific tools](#specific-tools) <br> [Collections of tools or general guidance](#collections-of-tools-or-general-guidance)

[Bibliography](#bibliography)


# Summary

> “...**everyone** must be able to use, re-use and redistribute–there should be **no discrimination** against fields of endeavour or against persons or groups.” - [The Open Data Handbook](https://opendatahandbook.org/guide/en/what-is-open-data/)<sup>6</sup>     

Although accessibility is a commonly-used word in the context of data curation, it’s important to clarify that it has most often been used in the more general sense of data that is findable and widely available.<sup>7</sup>  This includes considerations around indexing, clear context (and language), well-defined and standardized access paths, using open file formats, and paywalls/affordability. However, accessibility that explicitly takes into account the needs of a range of potential users including those with disabilities or neurodivergence is most often not included in this approach, and this shortfall needs to be addressed. 

Providing truly accessible data requires resources that many repositories (and researchers) have in short supply. But **availability is not accessibility, and accessibility is not optional.** (In some cases, accessibility may also be legally mandated, such as by requirements for federally funded research data and publications under [Section 508](https://www.section508.gov/create/)<sup>8</sup>  in the U.S.) For the purposes of this document, “Accessible” data means data compatible with assistive technologies, as well as featuring the considered use of design features such as color contrast, font size and legibility, and alternatives to visual presentations of information such that users with physical/sensory disabilities or who are neurodivergent have equivalent access to the information represented by the data. 

Ideally, data (as with other artifacts such as software, websites etc.) would be “born accessible,” that is, created taking into account all possible user needs for access (see also “Universal Design” in [Appendix B: Glossary](#appendix-b-glossary)). In practice, curators are likely to encounter datasets that require remediation–that is, adjustments after the fact to address barriers to accessibility for a user or group of users (see also [Appendix B: Glossary](#appendix-b-glossary)). Remediation is often performed for a specific user upon request and can be an important path to access for historical materials; however, request-based remediation services for physical content are frequently labor-intensive, sometimes impractical, and often insufficient. Digital resources should be accessible by design. While accessibility requires work up front, **the benefits and longevity of accessible data are worth the time and resources needed to create and maintain them.**

Accessibility benefits everyone who encounters the data regardless of their abilities– **accessible data is more navigable and understandable for everyone.** Accessible data attracts more users, including:
- People with visible and invisible disabilities
- People learning the data’s “native” language (English, Python, etc.)
- Scholars from other fields with potentially valuable contributions
- Anyone who needs the data to be machine-readable and/or optimized for reuse (almost everyone!)

Fortunately, accessibility is also not all-or-nothing, and any change for the better helps build toward new default practices for considering and addressing data accessibility long before a reuser encounters the data and has to discover how accessible it is (or isn’t). Data curators see many different data and are familiar with assessing data and documentation against best practices, advocating for change, and providing researcher education. As with many other curation challenges, many of the solutions actually lie upstream, during data creation and processing. **Data curators are thus uniquely positioned to help improve access not just to individual datasets, but to the world of research data at large.** As guides to and stewards of data, curators can counsel researchers on how to build accessibility into data planning, collection, analysis, and archiving. 

**This primer is intended as a starting point for data curators who are invested in improving the accessibility of individual files or datasets, rather than as definitive guide.** There is far more work to be done than can be addressed in the scope of this primer. Disability is also a complex concept with a diversity of possible presentations, which will present varying (sometimes even conflicting) accessibility needs. Similarly, there may be points at which recommended best practices for other aspects of data curation seem to come into conflict with accessibility. (For example, open source file formats are generally preferable from a preservation perspective, but open source software projects may not have the same resources to devote to accessibility features and standards as licensed or proprietary softwares do.) There is no “quick fix” for all users. As curators become more familiar with improving accessibility at the file and dataset level, they will be better equipped to help develop accessible repositories, write policies that foreground accessibility, conduct accessibility research, responsibly engage with disabled users as appropriate throughout the curation process, and improve existing curation workflows. 

# A very brief introductions to digital accessibility

The [Web Content Accessibility Guidelines (WCAG)](https://www.w3.org/TR/WCAG21/)<sup>9</sup> are the foundation of digital accessibility. These guidelines were developed for and are most applicable to website design and maintenance (though see also the Guidance on Applying WCAG 2.0 to Non-Web Information and Communications Technologies (WCAG2ICT), below). However, many of the guidelines and principles are also applicable to datasets. While most research data is not a single web page, accessibility guidelines for non-web content tend to be based on web guidelines.<sup>10</sup>  [This abbreviated guide](https://theappbusiness.github.io/accessibility-guidelines/) <sup>11</sup>  is a good starting point for understanding WCAG.

WCAG centers on four broad objectives:
- **Perceivable:** “Information and user interface components must be presentable to users in ways they can perceive.”
- **Operable:** “User interface components and navigation must be operable.”
- **Understandable:** “Information and the operation of user interface must be understandable.”
- **Robust:** “Content must be robust enough that it can be interpreted by a wide variety of user agents, including assistive technologies.”

**Some data curation work already facilitates access.** Ensuring that information is intuitively organized (“understandable”), clearly describing files and the relationships between them (“understandable”), and promoting open-source, platform-agnostic formats (“robust”) are all key components of digital accessibility. However, **curators also need to concern themselves with whether that content is perceivable, operable, and compatible with assistive technologies.**

A single document can be any file format, and many files and formats contain multiple types of content, each with its own accessibility considerations. Additionally, accessibility does not happen only at the document level. The [Guidance on Applying WCAG 2.0 to Non-Web Information and Communications Technologies (WCAG2ICT)](https://www.w3.org/TR/wcag2ict/)<sup>12</sup> describes accessibility as a product of several interwoven layers. **In a truly accessible dataset, each layer must be accessible, both individually and in combination with all other layers.**

Regardless of a dataset’s complexity, as they curate for accessibility, **curators should document their work.** Standards like WCAG are the result of years or decades of research. Documenting best practices and the reasons particular choices are made can inform future standards and make it easier to reproduce effective solutions.<sup>13</sup> When in doubt, It is generally advisable to follow proven best practices for a particular type of content, file format, etc., as these are most likely to be familiar to users, and there are more likely to be resources to reference. If no consensus on solutions exists, or if the existing solutions are not sufficient, curators can create workflows that can be reproduced and make these workflows publicly available. 


# Accessibility by data type

When curating for accessible files, it is important not only to look at the file’s format, but also at all of the types of information or data within or generated by the file. For example, a simple code file may be accessible as a plain text document, but any visualizations it generates may not be. The following guidelines for assessing both data and accompanying documentation files are based on the many data types one may find within various file formats, in the hopes that curators may transfer best practices to whatever data types they find within files. Curators may need to be creative in deciding how best to apply these guidelines when working with formats that might not accommodate necessary accessibility features like alt-text, changing color contrast, or screen reading. See also [Appendix B: Glossary](#appendix-b-glossary)) below for a primer-specific definition of the use of “data type” within this document. 

## Text

Curators should ensure that text content is organized and formatted in a way that supports step-by-step understanding by both humans and machines.

### Plain text

Plain text (.txt) is generally accessible to those using assistive technologies like screen readers. Additionally, curators can check for [WCAG-approved](https://www.w3.org/TR/WCAG20-TECHS/text) <sup>14</sup> formatting for human-readable headings, paragraphs, lists, and line breaks, including:

<li>Use one blank line before and after paragraphs in a sequence.</li>
<li>Use bullet points (like a dash) or sequential numbers and/or letters to indicate list items.</li>
<li>Ensure that there are TWO blank lines before each heading (end of a section) and ONE blank line after each heading.</li>

When generating plain text documents, Kozlowski and McLaren at Cornell <sup>15</sup> also suggest:
<li>Make sure there is one space after each colon (“: ”)</li>
<li>Include both MacIntosh and Unix line breaks ([Carriage Return and Line Feed](https://stackoverflow.com/questions/1552749/difference-between-cr-lf-lf-and-cr-line-break-types) <sup>16</sup> – this will likely be a setting in the text editor)</li>
<li>Ensure that lists are clearly titled or labeled to indicate their purpose</li>

Note that some types of plain text files (e.g., video captions, markdown (text-to-HTML–see also [Appendix B: Glossary](#appendix-b-glossary)) will have specific formatting requirements to allow successful interaction with the software used to display them. There may also be choices made upon saving or exporting about what type of text encoding standard to use; those that support Unicode and multilingual text capabilities  (such as UTF-8) are preferable.

### Formatted text

For formatted text (such as .docx or PDF files, or well-structured HTML rendered in a browser), accessibility depends on both the type(s) of content as well as the file format in which it is presented, and how contextual information (e.g., document metadata) is stored and presented. Plain text is generally the preferred format for both accessibility and preservation, although it may not be the best format for a particular work for other reasons (and lacks some information and navigation assistance that can be included in formatted text–for example, by permitting users to quickly review level 1 headings). If other types of content are included in a file (such as images), refer also to the appropriate section elsewhere in this primer.

[Understanding Document Accessibility](https://pressbooks.library.ryerson.ca/docs/)<sup>17</sup> from the Chang School at Ryerson University is a comprehensive guide for creating accessible text documents in a variety of formats and versions. In general, however, be mindful of the following:
<li>If the software necessary to interact with the document is itself inaccessible (due to being proprietary, having an inaccessible user interface, etc.), consider converting the document to a more accessibility-friendly format.</li>
<li>Use accessible formatting, including when utilizing [headings](https://accessibility.umn.edu/what-you-can-do/start-7-core-skills/headings),<sup>18</sup> [fonts](https://accessibility.psu.edu/legibility/fontface/),<sup>19</sup> and [colors](http://web-accessibility.carnegiemuseums.org/design/color/).<sup>20</sup> Make sure that no part of the document relies on visual formatting alone to convey meaning (i.e., that visual appearance is underlaid by appropriate use of features available within the file format, such as tagged tables with headers). </li>
<li>For screenreader users as well as human readers, headings are particularly important for scanning longer documents, and must be both consistent and meaningful to be useful.<sup>21</sup></li>
<li>Add metadata to the file itself (if it is not automatically generated) to facilitate accessibility. For example, it is possible to [add descriptive metadata to a Word or PDF document](https://www.open.ac.uk/libraryservices/documents/metadata-test/Adding%20metadata%20to%20documents%20pdf.pdf)<sup>22</sup> (such as title, author, and language).</li>
<li>If available, use automated tools to check document accessibility. There are some third-party tools available online, and many widely-used proprietary formats have software with built-in accessibility checkers (such as Adobe Acrobat for PDFs). (These can be very useful, but are generally better at catching some types of issues than others, and do not negate the need for human review of the document(s).)</li>
<li>If the formatted text contains images, make sure they are described either as [alt(ernative) text](https://webaim.org/techniques/alttext/)<sup>23</sup> or within the text itself per image description guidelines (see also section below on Images and [Appendix B: Glossary](#appendix-b-glossary)).</li>
<li>Any equations or expressions in mathematical notation should be rendered with [LaTeX](https://www.latex-project.org/)<sup>204</sup> or [MathML](https://www.w3.org/Math/)<sup>25</sup> to improve readability for those using screen readers. While guidance on which [math markup language](https://en.wikipedia.org/wiki/Mathematical_markup_language)<sup>26</sup> is best for accessibility is mixed, LaTeX and MathML are the most widely adopted and thus most likely to be familiar to users regardless of ability or assistive technology. [The Diagram Center](http://diagramcenter.org/specific-guidelines-g.html#74)<sup>27</sup> and [Accessibility and Usability at Penn State](https://accessibility.psu.edu/math/equations/)<sup>28</sup> have helpful guides for creating accessible mathematical notation.</li>
<li>Hyperlinked phrases used as links should be readable by screenreaders, and preferably unique within the document so they can be easily rediscovered.</li>

#### Microsoft Word

#### PDF

### Images of text

## Tabular

### Plain tabular data

### Formatted tabular data

## Code

### Scripts

### Markdown

## Images

### General guidance

### Maps

### 3D Images

### Data visualizations

## Time-based data

### Audio

### Moving image/video

# Accessible datasets

## Accessibility metadata

# Appendix A: Areas for further study

## Data type-specific considerations

## File formats

## Datasets

## Software and platforms

## Repositories


# Appendix B: Glossary

## Primer definitions

## WCAG definitions

# Appendix C: Freely available tools

## Specific tools

## Collections of tools or general guidance

# Bibliography



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


