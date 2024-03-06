![](DCNlogo.png)

# Curation of Data Collected by Informed Consent


# Format Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| Primary fields or areas of use | Any research that was collected with the use of consent forms, participant agreements, or consent information sheets. All of these items refer to “informed consent” and they notify study participants how their information is being used by the research team and beyond. <br><br> Example fields: <br> Clinical, Public Health, Neuroscience, Biomedical Engineering, Psychology, Sociology, Demography, Economics, Anthropology, Education, Social Work, etc.|
| Key questions for curation review | <ul><li>Is the consent form included with the data?</li> <li>Does the consent form mention data at all?</li> <li>If so, what does the consent form say about how data will be stored and/or shared?</li></ul> |
| Metadata-specific considerations | Collecting the consent form as internal metadata |
| Context-specific considerations | Consider institutional regulations, norms, and expectations. |
| Tools for curation review | Human review and intellect; example language |
| Date created | 20191213 |
| Created by | [Shanda Hunt](https://orcid.org/0000-0002-4131-7333), [Alicia Hofelich Mohr](https://orcid.org/0000-0002-7644-4105), [Rachel Woodbrook](https://orcid.org/0000-0002-4548-944X) |
| Date updated and summary of changes made | 20231204 by Shanda Hunt, Alicia Hofelich Mohr, Rachel Woodbrook, Michelle Yee, and [Mikala Narlock](https://orcid.org/0000-0002-2730-7542); revised "Tools for curation review" <br><br>20230705 by [Michelle Yee](https://orcid.org/0000-0003-3756-6780): Updated markdown format and links (broken links and redirects); added resource from the NIH on informed consent and data sharing. |

**Suggested Citation:** Hunt, Shanda; Hofelich Mohr, Alicia; and Woodbrook, Rachel. (2019). Curation of Data Collected by Informed Consent. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)  


# Table of Contents

- [Summary](#Summary)
- [Introduction to Informed Consent](#Introduction-to-Informed-Consent)
- [Introduction to Assessing Consent Forms for Data Curation](#Introduction-to-Assessing-Consent-Forms-for-Data-Curation)
- [Steps for Reviewing Consent Forms](#Steps-for-Reviewing-Consent-Forms)
- [Potential Solutions to Problematic Consent Form Language](#Potential-Solutions-to-Problematic-Consent-Form-Language)
- [Completion of Consent Form Assessment](#Completion-of-Consent-Form-Assessment)
- [Glossary of Terms](#Glossary-of-Terms)




# Summary

This primer will address the specific considerations for assessing informed consent of a dataset. Informed consent is the process by which researchers gain permission to conduct research with human participants, and that process includes how the data collected will be used, and possibly shared, by the research team. This document may be useful for data curators at the point of assessing data for acceptance into a repository; for repositories considering setting policy around data obtained using the subject consent process; or for data professionals working with researchers on education around consent form language prior to data collection For more information on the curation of human participants data, please see the [Human Participants Data Essentials Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Human%20Participants%20Data%20Essentials%20Data%20Curation%20Primer/human-participants-data-essentials-data-curation-primer.md).


# Introduction to Informed Consent

More often than not, research being conducted with human participants (subjects) undergoes evaluation by an ethics committee. At universities in the United States, this committee is often called an Institutional Review Board (IRB). The IRB determines if the research needs to be reviewed at all, if it requires expedited review, or if it requires full review - the determination is made according to Department of Health & Human Services regulations and other factors, such as potential risks to the participants.

**Example**: [University of Minnesota Human Research Determination Worksheet](https://github.com/DataCurationNetwork/data-primers/blob/master/Consent%20Forms%20Data%20Curation%20Primer/hrp-503_-_human_research_determination_form_2023-03.pdf)

If the research requires full review, then the researchers must present an informed consent form (a.k.a. consent form) to the participants. If the research requires expedited review (a shortened and less extensive review), then the researchers must present a consent information sheet to the participants. This provides much of the same information as the consent form, but using summarized language. An information sheet does not require the signature of the participant

**Example**: [University of Minnesota Informed Consent](https://github.com/DataCurationNetwork/data-primers/blob/master/Consent%20Forms%20Data%20Curation%20Primer/hrp-582-template-social-behavioral-consent-form_2023-12.pdf) (for social/behavioral research)

**Example**: [University of Minnesota Consent Information Sheet](https://research.umn.edu/sites/research.umn.edu/files/hrp-587_-_template_-_information_sheet_for_exempt_research.docx)

Minors cannot consent to participate in research. Instead, minors sign an assent form to participate in research, while their legal guardian signs a consent form for the minor’sparticipation.

**Example**: [University of Minnesota Assent Form](https://github.com/DataCurationNetwork/data-primers/blob/master/Consent%20Forms%20Data%20Curation%20Primer/hrp-583-template-assent-form_2023-12.pdf)

In some circumstances, when consent is not legally required, there might instead be a participant agreement. If there is a participant agreement, or if a consent form was presented to participants even when not legally required, there is an ethical responsibility for researchers to adhere to what was presented in these forms.


# Introduction to Assessing Consent Forms for Data Curation

In order to determine whether participants consented to data sharing, it is important to look at the informed consent, consent information sheet (for exempt studies), or participant agreement (for non-IRB reviewed studies). Several repositories, such as [ICPSR](https://www.icpsr.umich.edu/web/pages/) and [TalkBank](https://talkbank.org/), require these documents to be submitted along with the data at deposit. Other repositories ask for these documents upon submission of data that appear to be collected from humans.


# Steps for Reviewing Consent Forms

1. Check for language referring to how the data will be handled. Consent forms often don’t mention the data at all.
   - Common language: “Records of the study will be kept private. In any sort of report we might publish, we will not include any information that will make it possible to identify you. Research records will be stored securely and only researchers will have access to the records.”
      - **Problem #1**: It’s problematic that the data is not mentioned at all. This leaves the curator to read between the lines, and consider what the participant expectations about their data might be.
      - **Problem #2**: “Records,” traditionally, refers to the data collection records rather than the data itself.
      - **Problem #3**: The statement “In any sort of report we might publish, we will not include any information that will make it possible to identify you,” is often used as justification for sharing data. While it’s true that it’s vague and doesn’t exclude data, we again must consider whether the participant anticipated that this statement meant their data would be shared in a repository. Also, traditionally, this statement was included in consent forms to address publication of results in a manuscript or report.
    
2. Even when the data is mentioned, the language can be problematic.
   - Common language: "Data will only be shared in aggregate," "Data will be shared with other researchers," "Only anonymized data will be shared," and “Data will be destroyed.”
      - **Problem #1**: A dataset is nearly always individual-level data rather than aggregate. Aggregating data often makes it less useful for future research.
      - **Problem #2**: It is great when participants are told their data will be shared with other researchers (and even better when the purpose is stated as well), but this statement doesn’t include sharing data in a public repository.
      - **Problem #3**: Anonymization cannot be guaranteed; there is always a risk (even if small) that participants can be re-identified.
      - **Problem #4**: Promising that the data will be destroyed is especially problematic for data sharing.
  
3. Consent language explicitly states that the data will be shared. This is the ideal.
   - “We may publish the results of this research or share the resulting data. However, we will keep your name and other identifying information confidential.”
   - “We will use and may share data for future research. They may be shared with researchers/institutions outside of the University of Minnesota. We will not ask for your consent before using or sharing them. We will remove identifiers from your data and/or specimens, which means that nobody who works with them for future research will know who you are.”
   - “A de-identified dataset will be prepared for public sharing in a data repository. The de-identified data can be discovered and used by other researchers and any member of the public for any reason. The purpose of sharing the data publicly is to promote the transparency of research and reduce the costs associated with future research. For more information, please see the [Data Sharing Information Sheet](https://docs.google.com/document/d/19GuL5TJCDx3DiU59kWmiTh_E64O1pSZ40uCQvyBW0Ns/edit).”


# Potential Solutions to Problematic Consent Form Language

1. Bring your concerns back to the researcher who submitted the data.
   - Most researchers were not thinking about sharing their data at the time they wrote the consent form, and pointing out the conflicting language is often received well, especially when you can offer them alternatives.
      - They can re-consent participants.
      - They can send out a notification to participants that their data will be shared.
      - They can bring this issue back to the IRB; however, IRBs at this time are not well versed in the issues surrounding data sharing (Mozersky, 2020).
      - They can share the data in a repository that offers restricted access so that researchers can vet who accesses the data.
   - You might recommend changes to the dataset which make it more shareable.
      - Collapsing or removing variables can protect the identity of participants.
      - See [Human Participants Data Essentials Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Human%20Participants%20Data%20Essentials%20Data%20Curation%20Primer/human-participants-data-essentials-data-curation-primer.md) for more information on de-identification and dataset manipulation.

2. Repositories may consider a formal policy regarding the review of the consent form.
   - Data deposit agreements may include a statement that appropriate consent has been obtained from all participants in the data.

       **Example**: Open ICPSR uses the following language in their [deposit agreement](https://www.openicpsr.org/openicpsr/faqs): "I assert that all research subjects (living persons or active organizations) whose information is represented in this Data Collection have consented to sharing these data in an appropriate manner and/or I have institutional approval to share these data (e.g., waiver of consent from your IRB)."
  
     **Example**: The National Database for Autism Research (NDAR) includes in their [data submission agreement](https://nda.nih.gov/nda/data-submission-agreement.html): "Submitter acknowledges that data are submitted to the NIMH Data Archive in accordance with informed consent of research participants and/or with the approval of the Institutional Review Board."
       
   - Depositors may be required to upload the consent form template as part of the data submission process.

     **Example**: BioLINCC and other repositories require informed consent templates. Specifically, [BioLINCC](https://biolincc.nhlbi.nih.gov/media/guidelines/handbook.pdf?link_time=2019-12-11_13:15:00.238612) requires “approval from the institutional IRB for sharing of the study data or language within the informed consent permitting sharing study data with investigators not originally affiliated with the study.”
   
3. Repositories may offer consent consulting services to ensure depositors use appropriate language in consent forms.

    **Example**: The National Addiction & HIV Data Archive Program (NAHDAP) offers review of and feedback on informed consent forms for data sharing and provides assistance for researchers trying to share data from studies that consent forms with less open language.
  
4. Repositories may consider including the consent form as internal metadata/record.

    **Example**: The University of Minnesota includes the informed consent or participant agreement with the record as internal metadata in case we need to reference it later. We also track decisions made and specific consent issues to aid future decision making.


# Gray Areas

1. There will be many scenarios not addressed explicitly by this guide. When responding to cases that are less than clear-cut, establish priorities and considerations on which you will make your determination. For example, the following list (Meyer, 2018) provides a set of conditions that may provide a helpful framework when considering data sharing incases where consent for such was not explicitly collected:
   - “[...] in general, the argument for sharing will be stronger the more of the following conditions are met:
      - The original consent form was merely silent about data sharing, and did not include a promise not to share data
      - The data are not especially sensitive (i.e., re-identification would be unlikely to cause significant harm to participants)
      - The data are not individually identified and are not especially likely to be re-identified (i.e., there are low incentives for anyone to re-identify the data or the data are unlikely to be re-identifiable alone or in combination with other available datasets)
      - The shared data will be accessible only under restricted conditions, protected by agreements prohibiting re-identification
      - Sharing will be limited to secondary research purposes that fall within the scope of the research described in the original consent form
      - Sharing will be limited to secondary research purposes participants are not known to object to.”


# Completion of Consent Form Assessment

There are many potential outcomes after assessing consent forms that were used to collect data being ingested into a public repository. Use this guide, with the [Human Participants Data Essentials Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Human%20Participants%20Data%20Essentials%20Data%20Curation%20Primer/human-participants-data-essentials-data-curation-primer.md),  to determine the best next steps for your repository and institution. You can ensure you have completed a job well-done with the Data Curation Network’s [CURATE(D) checklist](https://datacurationnetwork.org/outputs/workflows/):

❏ Check files/code and read documentation
- ❏ Check all files submitted and assess the type of data presented.
           
❏ Understand the data
- ❏ Understand the type of data submitted and the likelihood of whether it was obtained using informed consent, a consent information sheet, participant agreement, or nothing.

❏ Request missing information or changes
- ❏ Request the consent form or other agreement if it was not submitted with the data, but you believe the data may have been obtained with one.

❏ Augment metadata for findability
- ❏ Augment the internal record with a copy of the consent form or agreement and potentially note in the readme file that the consent indicated public sharing of the data.

❏ Transform file formats for reuse
- ❏ Transform the consent form or agreement to a text or pdf file for preservation.

❏ Evaluate for FAIRness
- ❏ Evaluate the record to ensure the data is findable, accessible, interoperable, and reusable - in terms of the consent form, this means that the consent process is documented either internally as part of the repository’s metadata record or publicly as part of the readme file. This ensures that, if needed, future researchers can be sure of the data’s ethical reuse.


# Glossary of Terms

*Informed consent*: A voluntary agreement to participate in research. It is not merely a form that is signed but is a process in which the subject has an understanding of the research and its risks. Informed consent is essential before enrolling a participant and ongoing once enrolled. Informed consent must be obtained for all types of human participants research including; diagnostic, therapeutic, interventional, social and behavioral studies, and for research conducted domestically or abroad. Obtaining consent involves informing the subject about his or her rights, the purpose of the study, the procedures to be undergone, and the potential risks and benefits of participation. Subjects in the study must participate willingly. Vulnerable populations (i.e. prisoners, children, pregnant women, etc.) must receive extra protections. The legal rights of subjects may not be waived and subjects may not be asked to release or appear to release the investigator, the sponsor, the institution or its agents from liability for negligence. [https://www.hhs.gov/ohrp/regulations-and-policy/guidance/faq/informed-consent/index.html](https://www.hhs.gov/ohrp/regulations-and-policy/guidance/faq/informed-consent/index.html)

*Assent*: Agreement by an individual not competent to give legally valid informed consent (e.g., a child or adult who is cognitively impaired) to participate in research. A legal guardian or other representative must still provide consent on behalf of the participant. [https://oprs.research.illinois.edu/glossary/assent](https://oprs.research.illinois.edu/glossary/assent)

*Consent form*: This is the form signed by study participants to document their agreement to participate. It must be written in a language easily understood by the participant, minimize the possibility of coercion or undue influence, and the subject must be given sufficient time to consider participation. 

*Consent information sheet*: Also called an information sheet for exempt research, this form does not require the study participant’s signature, but shares with them the study process, confidentiality notices, voluntary nature of the study, and contact information for any questions or concerns that might arise.

*Participant agreement*: If a legal consent form or consent information sheet is not required by the IRB, researchers may still request that participants sign a participant agreement. Since a participant agreement is not regulated, the information in it will vary, but it commonly contains similar content to a consent form (i.e., reasons for research, harms/benefits, confidentiality, contact information, etc). [https://research.virginia.edu/irb-sbs/when-consent-not-required](https://research.virginia.edu/irb-sbs/when-consent-not-required)


# Bibliography

Meyer, M. N. (2018). Practical Tips for Ethical Data Sharing. Advances in Methods and Practices in Psychological Science, 1(1), 131–144. [https://doi.org/10.1177/2515245917747656](https://doi.org/10.1177/2515245917747656)

Mozersky, J., Walsh, H., Parsons, M., McIntosh, T., Baldwin, K., & DuBois, J. M. (2020). Are we ready to share qualitative research data? Knowledge and preparedness among qualitative researchers, IRB Members, and data repository curators. IASSIST quarterly, 43(4), 952. [https://doi.org/10.29173/iq952](https://doi.org/10.29173/iq952)


# Appendix A - Links to sources on consent documentation
National Institutes of Health (NIH) [Informed Consent for Secondary Research with Data and Biospecimens: Points to
Consider and Sample Language for Future Use and/or Sharing](https://osp.od.nih.gov/wp-content/uploads/Informed-Consent-Resource-for-Secondary-Research-with-Data-and-Biospecimens.pdf)

Inter-university Consortium for Political and Social Research (ICPSR) [Recommended Informed Consent Language for Data Sharing](https://www.icpsr.umich.edu/web/pages/datamanagement/confidentiality/conf-language.html)

Qualitative Data Repository (QDR) [Sample Informed Consent Language](https://qdr.syr.edu/guidance/templates)

University of Michigan [IRB-HSBS Biospecimen Consent Template](https://az.research.umich.edu/medschool/templates/specialty-informed-consent-templates) with data sharing language

University of Michigan [IRB-HSBS General Informed Consent Template](https://az.research.umich.edu/medschool/templates/standard-informed-consent-template) with data sharing language
