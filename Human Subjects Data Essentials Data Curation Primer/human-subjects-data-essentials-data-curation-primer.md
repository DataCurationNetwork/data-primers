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

[Summary](summary)

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


# Publication in progress. Your patience is appreciated.

