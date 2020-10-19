![](DCNlogo.png)

# Human Subjects Data Essentials

## Overview

|   Topic   |   Description  |
| :------------- | :------------- |
|Primary fields or areas of use|Any research on information or physical samples taken from human beings that is either subject to IRB or other regulatory approval, used consent forms, or where the data presents ethical quandaries due to human subjects content.<p><p>Example fields:<br><ul><li>**Health Sciences:** Clinical, Public Health, Neuroscience, Biomedical Engineering <li>**Behavioral and Social Sciences:** Psychology, Sociology, Demography, Economics, Anthropology, Education, Social Work, etc. |
|Key questions for curation review|<ul><li>Is there indication the research was governed by a review board (e.g., institutional, community, tribal) or other regulatory protocol? <li>Is there a copy of the consent form included with the data? <li>Is the data de-identified in consideration of both direct and indirect identifiers? <li>Are other peripheral means of re-identification removed?|
|Metadata-specific considerations |The level of detail in the metadata (or any lack of clarity that impedes understanding what metadata are present) may increase disclosure risk. Some datasets may also include hidden or embedded metadata (e.g., geolocation on images) that constitute a disclosure risk. See Brief Introduction to Identifiers and Communicating about De-identification with a Depositor, below.|
|Context-specific considerations|<ul><li>Consent Form Review <li>Screening for De-identification <li>Suggesting Changes with Depositor|
|Tools for curation review|<ul><li>[ARX Data Anonymization Tool](https://arx.deidentifier.org): Full-featured freeware for statistical risk assessment and anonymization. Requires knowledge of techniques.<li>[The sdcMicro package in R](https://cran.r-project.org/web/packages/sdcMicro/) includes disclosure control and cell suppression techniques for tabular data.<li>[PARAT Core](https://privacy-analytics.com/health-data-privacy/health-data-software/eclipse-risk/) (Privacy Analytics Eclipse): Commercial service for risk analysis and anonymization oriented to structured medical records.Typically for an institutional subscription.<li>[Spirion.com](https://www.spirion.com): For fee. Covers only direct identifiers at enterprise network level. Not recommended.<li>[NLM-Scrubber](https://scrubber.nlm.nih.gov): Highlights direct identifiers and typical medical identifiers for redaction. ASCII text input.|
|Date Created|March 2, 2020|
|Created by|<ul><li>Jenn Darragh, Duke University<li>Alicia Hofelich Mohr, University of Minnesota<li>Shanda Hunt, University of Minnesota<li>Rachel Woodbrook, University of Michigan<li>Dave Fearon, Johns Hopkins University<li>Jennifer Moore, Washington University in St.Louis<li>Hannah Hadley, Pennsylvania State University|
|Date updated||

**Suggested Citation:** Darragh, Jen; Hofelich Mohr, Alicia; Hunt, Shanda; Woodbrook, Rachel; Fearon, Dave; Moore, Jennifer; and Hadley, Hannah. (2020). Human Subjects Data Essentials Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

_This work was created by the Data Curation Network’s curator subgroup (Human Subjects Interest) with the assistance of the Data Curation Network’s education coordinator._

# Table of Contents

[Summary](#summary)

[Introduction to Human Subjects](#introduction-to-human-subjects)

[Key Questions to Ask Yourself](#key-questions-to-ask-yourself)

[Brief Introduction to Consent Review and Communicating about Informed Consent with a Depositor](#brief-introduction-to-consent-review-and-communicating-about-informed-consent-with-a-depositor)

[Brief Introduction to Identifiers and Communicating about De-identification with a Depositor](#brief-introduction-to-identifiers-and-communicating-about-de-identification-with-a-depositor)

[Steps for Screening De-identified Data for Remaining Risk](#steps-for-screening-de-identified-data-for-remaining-risk)

[Next Steps](#next-steps)

[Other Considerations](#other-considerations)

[Glossary of terms](#glossary-of-terms)

[Bibliography and Further Reading](#bibliography-and-further-reading)

[Appendix A Links to sources on de-identification](#appendix-a-links-to-sources-on-de-identification)

[Appendix B Links to sources on consent documentation](#appendix-b-links-to-sources-on-consent-documentation)

[Appendix C Human Subjects CURATED checklist](#appendix-c-human-subjects-curated-checklist)

# Summary

**This primer is intended to assist curators with identifying sensitive content that may be present in human subjects data. It is not a complete guide to de-identification. However, it covers basic considerations for avoiding inappropriate identity disclosure and provides explanations for restricting content that can be discussed with data depositors.** Particular emphasis is given to understanding documents that should accompany this data, such as consent forms. This primer may also help curators identify data that are more appropriate for a restricted-access repository and/or cannot be accepted into an open access repository for public distribution. Additionally, it may be useful for restricted access repositories that require partial de-identification, often to [HIPAA "limited dataset" or "Safe Harbor" level."](https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/index.html) The laws and regulations mentioned in this primer are primarily situated within the U.S. context. The ethical considerations discussed may be broader and apply across jurisdictions, although some will be context or culture-specific.


# Introduction to Human Subjects 

This primer, when referring to human subjects data, regards information gathered from or about living people, or information about living people that is not considered knowable, or is non-public, or private. This definition is intentionally broader than the regulatory definitions of "human subject" from the Food and Drug Administration (FDA) and Department of Health and Human Services (DHHS) that are commonly used by the IRB. This is to ensure that data considered "not human subjects" research by the IRB or gathered for administrative purposes are also evaluated before being shared in a repository.

_Examples of human subjects data:_

- Survey data
- Interview data
- Images or audio of humans
- Data collected about humans from Internet sites
- Biological, behavioral, or health measures that could distinguish certain subjects.

Evaluating human subjects data introduces unique considerations and responsibilities regarding privacy and disclosure. Data disclosure risk can be defined as the amount of potential there is for a participant’s identity to be discovered and shared without his/her explicit permission. The amount of risk is lowest when the data do not contain any direct identifiers and the information collected could be considered benign - as in, it poses no reputational or financial risk, nor potential for prosecution.

Removing direct identifiers is only part of how inappropriate disclosure can be avoided. There are times when data are collected from a small or particular sample (not randomized), geographically limited or geographically specific (intended for geospatial analysis), contain several detailed demographics (age, race, sex, household size, military status, etc.), or collect information on illicit behaviors or taboo opinions. Even when data are stripped of direct identifiers, there might be enough details present (also known as quasi-identifiers or indirect identifiers) to link a participant’s identity with their data. In these cases, the data are not distributed openly for re-use, but are often housed in repositories that can provide mitigated access for qualified researchers who apply to use it. 

Although the central considerations for ethics in research conducted with human participants, the Belmont principles (respect for persons, beneficence, and justice) are primarily discussed in reference to individuals, it is also important to acknowledge that there are potentials for community-level as well as individual harm, and community-level identifiers have the potential to be problematic even when individuals may not be identifiable (Ross, 2018). Community-level harms can be physical, psychological, social, economic, legal, or relational (FNIGC, 2014).

_Example of community-level harm:_

Sometimes governments or private companies share or sell individually de-identified health data such as pharmaceutical claims (FNIGC, 2014) or metadata about mental health services (Osberg, 2020) to third parties who may use this information for their own research, marketing, or advertisement. This creates ethical problems when communities may receive different information or be targeted in specific ways based on group membership or other indicators. 

[The CARE Principles for Indigenous Data Governance](https://www.gida-global.org/care#:~:text=The%20CARE%20Principles%20for%20Indigenous%20Data%20Governance%20are%20people%20and,Indigenous%20innovation%20and%20self%2Ddetermination.) were developed to mitigate the potential for community harms (Research Data Alliance International Indigenous Data Sovereignty Interest Group, 2019): “Existing principles within the open data movement (e.g. FAIR: findable, accessible, interoperable, reusable) primarily focus on characteristics of data that will facilitate increased data sharing among entities while ignoring power differentials and historical contexts. The emphasis on greater data sharing alone creates a tension for Indigenous Peoples who are also asserting greater control over the application and use of Indigenous data and Indigenous Knowledge for collective benefit.”

# Key Questions to Ask Yourself

At each step in the curation process, it is important to be cognizant of ethical as well as regulatory considerations. While regulatory guidelines (such as from the IRB or HIPAA) provide some guidance to ensure data are shared without violating participant privacy, these regulations do not cover all cases you may encounter as a curator. For example, research determined NOT to be human subjects, exempt IRB studies, secondary data analyses (originally human subjects), web scraping, or administrative data could all contain disclosure risks. Reviewing human subjects' data submissions to a repository is contextual and will depend on the research, institution (including repository terms of service), discipline, norms, and participant expectations. With that in mind, some key questions for curators to ask include:

#### Is there indication the research was governed by a review board (e.g., institutional, community, tribal) or other regulatory protocol?
- Is there documentation of the requirements of this agreement included with the deposit? This could include community-level agreements on data collection, management, and/or sharing.

#### What was the consent process?
- Was a consent form, participant information sheet, or other participant agreement used during data collection? 
  - Seek this information in the documentation provided by the researcher with the dataset.
  - If the form itself is not included, we encourage requesting it (as with other standard documentation), or even requiring its submission.
  - Are there any other indications of how participant information will be used in other documentation of the dataset? (Focus group transcript, questionnaire, etc.?). Do they contradict consent documentation?
- Institutional or repository policies may differ, from simply storing the consent form as documentation to assessing its content. We suggest a minimum standard of checking that there is no language explicitly stating the data will not be shared. If vetting the consent form, see the section on “Brief Introduction to Consent Review,” below. Be sure to work with the depositor and involve their IRB and compliance offices whenever in doubt about permissions for releasing data.

#### Is any directly identifiable information present in the data?
- The [HIPAA privacy rule](https://privacyruleandresearch.nih.gov/pr_08.asp) is a good standard to follow when looking for direct identifiers, even if the data are not necessarily subject to the HIPAA privacy rule. However, be aware that these regulations were created in the 1990s, when information moved very differently than it does today, and there is evidence that even medical data de-identified to current HIPAA standards may expose patients to re-identification risks (Yoo, 2018).
- For qualitative data, any video or voice recordings are considered inherently identifiable.
  
#### Are there any indirect (quasi) identifiers present in the data?
- See “Brief Introduction to Identifiers” section below for more details and examples.
- ICPSR has a page on [Confidentiality](https://www.icpsr.umich.edu/web/pages/datamanagement/confidentiality/) that also defines indirect (quasi) identifiers.

#### Is enough context (documentation, metadata, etc.) included to allow full understanding of the data’s limitations or uncertainty, and determine responsible re-use?
- Is there a data use guideline or agreement?
- Is there enough information to determine that included variables do not include direct or indirect (quasi) identifiers?
- Is there any potential embedded metadata that could create additional disclosure risk for participants? (For example, geolocation information for images, tracked changes, hidden columns in Excel spreadsheets, or externally or internally linked files. See primers such as those on [NVivo](https://github.com/DataCurationNetwork/data-primers/blob/master/NVivo%20Data%20Curation%20Primer/NVivo-data-curation-primer.md) and [Atlas.ti](https://github.com/DataCurationNetwork/data-primers/blob/master/Atlas.ti%20Data%20Curation%20Primer/AtlasTI-data-curation-primer.md) for some software-specific suggestions).
- Are any limitations on appropriate uses of the data specified?

# Brief Introduction to Consent Review and Communicating about Informed Consent with a Depositor

In order to determine whether participants consented to data sharing, it is important to look at the informed consent, consent information sheet (for exempt studies), or participant agreement (for non-IRB reviewed studies) where one exists. Several repositories require these documents to be submitted along with the data at deposit. 

Example of required consent for deposit to repository: The National Institute of Diabetes and Digestive and Kidney Diseases (NIDDK) Central Repository states that “All requests for samples and data are carefully reviewed against the consent forms by the Repository and NIDDK staff members to ensure adherence.” (NIDDK, n.d.)

Other repositories ask for these documents upon submission of data that appear to be collected from humans. There are repositories that do not review or collect the consent form, but we do not recommend this practice.

### Reviewing the consent form - there are three common scenarios regarding the mention of data in consent forms:

#### Consent form does not mention data at all.

- Example language: “Records of the study will be kept private. In any sort of report we might publish, we will not include any information that will make it possible to identify you. Research records will be stored securely and only researchers will have access to the records.”

#### Data is mentioned, but language is potentially problematic. 

- Example language: "Data will only be shared in aggregate," "Data will be shared with other researchers," "Only anonymized data will be shared," “Data will be destroyed.”

#### Consent language explicitly states that the data will be shared. This is the ideal, and the most uncommon scenario.

- Example language: “A de-identified dataset will be prepared for public sharing in a data repository. The de-identified data can be discovered and used by other researchers and any member of the public for any reason. The purpose of sharing the data publicly is to promote the transparency of research and reduce the costs associated with future research. For more information, please see the [Data Sharing Information Sheet](https://docs.google.com/document/d/19GuL5TJCDx3DiU59kWmiTh_E64O1pSZ40uCQvyBW0Ns/edit).”

### Potential solutions to issues in the consent form:

- Bring your concerns back to the researcher who submitted the data.
- Repositories may consider a formal policy regarding the review of the consent form.
- Data deposit agreements may include a statement that appropriate consent for data sharing has been obtained from all participants.
- Depositors may be required to upload the consent form template as part of the data submission process, either for public dissemination or internal curation reference.
- Repositories may offer consent consulting services to ensure depositors use appropriate language in consent forms.
- IRBs are the authority on consent forms and should be consulted whenever in doubt about permissions to share data.

For greater detail and more resources on reviewing the consent form as part of the curation process, please see the primer on Curation of Data Collected via Informed Consent (Please check back, this primer is coming soon!).

# Brief Introduction to Identifiers and Communicating about De-identification with a Depositor

De-identification is performed by the depositor or their proxy, but the data curator should be aware of considerations for this process that may need to be discussed with depositors. Human subjects data that has not been de-identified may not be shared openly or even under restricted access conditions in many cases. This section will therefore introduce a high-level description of content that can be shown to the depositor as evidence of the need for de-identifying actions. This is an introduction to a complex subject, and de-identification methods depend entirely on the data content and context.

### Types of identifiers 

#### Direct

Direct identifiers include names, addresses (digital and physical), and ID numbers that link directly to identifying information (medical record numbers, drivers license numbers, etc.) Direct identifiers are never needed for analysis, and should be removed or substituted with codes.

#### Indirect or Quasi-identifiers

These tend to be more nuanced and may be difficult for you, as a curator, to recognize easily without expert knowledge of the data. They may be details such as dates or demographics the depositors consider necessary for data reuse, but still requiring sufficient anonymization for public release. Some things to look out for include very detailed or granular demographic details (exact age, specific geography such as zip code, detailed race and ethnicity) or other unique details. Full text responses included verbatim can also be problematic. When these types of information are present, knowing what the participants consented to sharing is important.

### Examples of potential identifiers

- One study found that 87% of the U.S. population were identifiable based only on their 5-digit ZIP code, gender, and date of birth as reported in the 1990 Census (Sweeney, 2000).
- A dataset that contains age, marital status, and level of education might identify a person living in a close-knit immigrant population.
- A dataset that contains job title, city of employment, and birthplace could potentially identify a person who was not born in the United States who now works in a rural area in Minnesota. 

### Removing or recoding identifiers

- If there is a particular variable in the dataset that could lead to re-identification of participants and is not essential information, the entire variable could be removed.
- The dataset might contain individual answers to open-ended questions. Some of these answers might identify a participant based on the other information they provided in the dataset. Researchers might “code” these answers into generic categories so that the data is less personalized, or for qualitative data, redact and replace specific facts with more general descriptors (e.g., “[job title]” instead of “nurse”).
- Some indirect (quasi) identifiers can be coded, re-coded, aggregated, or dropped. You will likely need clarification from the depositor on what level of detail is necessary for analysis.
- More details on screening for identifiers below.

### Metadata considerations

- There are occasions when information will be retracted out of the dataset, but information is left in the codebook or data dictionary that gives away certain details - such as low frequency of occurrence (aka unique).
- Some types of data may contain hidden metadata--that is, metadata not easily discernible to a human viewer--that could create potential disclosure risk, e.g. dates in radiography image files.

### Example Communications with Depositors

- Data contains direct identifiers: “I wanted to alert you to the fact that your data currently contains directly identifiable information about your participants - I noted exact dates for birth, treatment date, hospitalization date, and discharge date. This information needs to be de-identified if it is important for analysis or should be dropped if it is not needed. If you need assistance with de-identification you may want to consult with a statistician or honest broker.”* 
- Data contains indirect identifiers: “I wanted to alert you to the fact that your data currently contains text responses in several ‘Other’ optional response fields. Typically this information is recorded verbatim, and is therefore unique to each participant. I would suggest either dropping this information if not needed for analysis, or coding it in a standardized fashion to mask the more unique nature of a verbatim response.”*

*These are sample issues and responses. As a curator you know your own comfort level with the materials and what you decide to suggest. If you aren’t sure about the level of disclosure risk, it is OK to say so, and refer to other resources, both internal and external for assistance. Follow your repository policies and only offer what you are permitted and are able to offer.



# Publication in progress. Your patience is appreciated.

