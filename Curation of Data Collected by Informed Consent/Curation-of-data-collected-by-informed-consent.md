![](DCNlogo.png)

# Curation of Data Collected by Informed Consent


# Format Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| Primary fields or areas of use | Any research that was collected with the use of consent forms, participant agreements, or consent information sheets. All of these items refer to “informed consent,” and they notify study participants how their information is being used by the research team and beyond. <br> Example fields: <br> Clinical, Public Health, Neuroscience, Biomedical Engineering, Psychology, Sociology, Demography, Economics, Anthropology, Education, Social Work, etc.|
| Key questions for curation review | <ul><li>Is the consent form included with the data?</li> <li>Does the consent form mention data at all?</li> <li>If so, what does the consent form say about how data will be stored and/or shared?</li></ul> |
| Metadata-specific considerations | Collecting the consent form as internal metadata |
| Context-specific considerations | Consider institutional regulations, norms, and expectations. |
| Tools for curation review | Human eye and intellect; example language |
| Date Created | 20191213 |
| Created by | Shanda Hunt, Alicia Hofelich Mohr, Rachel Woodbrook |
| Date updated and summary of changes made |  |


# Table of Contents

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:undetermined orderedList:0 -->

- [Summary](#Summary)
- [Introduction to Informed Consent](#Introduction-to-Informed-Consent)
- [Introduction to Assessing Consent Forms for Data Curation](#Introduction-to-Assessing-Consent-Forms-for-Data-Curation)
- [Steps for Reviewing Consent Forms](#Steps-for-Reviewing-Consent-Forms)
- [Potential Solutions to Problematic Consent Form Language](#Potential-Solutions-to-Problematic-Consent-Form-Language)
- [Completion of Consent Form Assessment](#Completion-of-Consent-Form-Assessment)
- [Glossary of Terms](#Glossary-of-Terms)

<!-- /TOC -->


# Summary

This primer will address the specific considerations for assessing informed consent of a dataset. Informed consent is the process by which researchers gain permission to conduct research with human participants, and that process includes how the data collected will be used, and possibly shared, by the research team. This document may be useful for data curators at the point of assessing data for acceptance into a repository; for repositories considering setting policy around data obtained using the subject consent process; or for data professionals working with researchers on education around consent form language prior to data collection For more information on the curation of human subjects data, please see the [Human Subjects Data Essentials Primer (https://docs.google.com/document/d/1DVm2SYZO5NK1ydk8H_eF89-XxQsLk0sqs3hi6gD3RoI/edit?usp=sharing).


# Introduction to Informed Consent

More often than not, research being conducted with human participants (subjects) undergoes evaluation by an ethics committee. At universities in the United States, this committee is often called an Institutional Review Board (IRB). The IRB determines if the research needs to be reviewed at all, if it requires expedited review, or if it requires full review - the determination is made according to Department of Health & Human Services regulations and other factors, such as potential risks to the participants.

**Example** [University of Minnesota Human Research Determination Worksheet](https://drive.google.com/file/d/0Bw4LRE9kGb69Mm5TbldxSVkwTms/view)

If the research requires full review, then the researchers must present an informed consent form (a.k.a. consent form) to the participants. If the research requires expedited review (a shortened and less extensive review), then the researchers must present a consent information sheet to the participants. This provides much of the same information as the consent form, but using summarized language. An information sheet does not require the signature of the participant

**Example**: [University of Minnesota Informed Consent](https://drive.google.com/file/d/0B7644h9N2vLcbEJ3U2gyZ2kxY0E/view) (for social/behavioral research)

**Example**: [University of Minnesota Consent Information Sheet](https://drive.google.com/file/d/1qAWYYH_KzWxaciHNQSiWrbTRtQYd6tDh/view)

Minors cannot consent to participate in research. Instead, minors sign an assent form to participate in research, while their legal guardian signs a consent form for the minor’sparticipation.

**Example**: [University of Minnesota Assent Form](https://drive.google.com/file/d/0B7644h9N2vLcd2NFU2I3LWRYSTQ/view)

In some circumstances, when consent is not legally required, there might instead be a participant agreement. If there is a participant agreement, or if a consent form was presented to participants even when not legally required, there is an ethical responsibility for researchers to adhere to what was presented in these forms.


# Introduction to Assessing Consent Forms for Data Curation

In order to determine whether participants consented to data sharing, it is important to look at the informed consent, consent information sheet (for exempt studies), or participant agreement (for non-IRB reviewed studies). Several repositories, such as [ICPSR](https://www.icpsr.umich.edu/web/pages/) and [TalkBank](https://talkbank.org/), require these documents to be submitted along with the data at deposit. Other repositories ask for these documents upon submission of data that appear to be collected from humans.


# Steps for Reviewing Consent Forms

    1. Check for language referring to how the data will be handled. Consent forms often don’t mention the data at all.
        a. Common language: “Records of the study will be kept private. In any sort of report we might publish, we will not include any information that will make it possible to identify you. Research records will be stored securely and only researchers will have access to the records.”
            i. Problem #1: It’s problematic that the data is not mentioned at all. This leaves the curator to read between the lines, and consider what the participant expectations about their data might be.
            ii. Problem #2: “Records,” traditionally, refers to the data collection records rather than the data itself.
            iii. Problem #3: The statement “In any sort of report we might publish, we will not include any information that will make it possible to identify you,” is often used as justification for sharing data. While it’s true that it’s vague and doesn’t exclude data, we again must consider whether the participant anticipated that this statement meant their data would be shared in a repository. Also, traditionally, this statement was included in consent forms to address publication of results in a manuscript or report.
    
    2. Even when the data is mentioned, the language can be problematic.
        a. Common language: "Data will only be shared in aggregate," "Data will be shared with other researchers," "Only anonymized data will be shared," and “Data will be destroyed.”
            i. Problem #1: A dataset is nearly always individual-level data rather than aggregate. Aggregating data often makes it less useful for future research.
            ii. Problem #2: It is great when participants are told their data will be shared with other researchers (and even better when the purpose is stated as well), but this statement doesn’t include sharing data in a public repository.
            iii. Problem #3: Anonymization cannot be guaranteed; there is always a risk (even if small) that participants can be re-identified.
            iv. Problem #4: Promising that the data will be destroyed is especially problematic for data sharing.
  
    3. Consent language explicitly states that the data will be shared. This is the ideal.
        a. “We may publish the results of this research or share the resulting data. However, we will keep your name and other identifying information confidential.”
        b. “We will use and may share data for future research. They may be shared with researchers/institutions outside of the University of Minnesota. We will not ask for your consent before using or sharing them. We will remove identifiers from your data and/or specimens, which means that nobody who works with them for future research will know who you are.”
        c. “A de-identified dataset will be prepared for public sharing in a data repository. The de-identified data can be discovered and used by other researchers and any member of the public for any reason. The purpose of sharing the data publicly is to promote the transparency of research and reduce the costs associated with future research. For more information, please see the [Data Sharing Information Sheet](https://docs.google.com/document/d/19GuL5TJCDx3DiU59kWmiTh_E64O1pSZ40uCQvyBW0Ns/edit).”


# Potential Solutions to Problematic Consent Form Language

    1. Bring your concerns back to the researcher who submitted the data.
        a. Most researchers were not thinking about sharing their data at the time they wrote the consent form, and pointing out the conflicting language is often received well, especially when you can offer them alternatives.
            i. They can re-consent participants.
            ii. They can send out a notification to participants that their data will be shared.
            iii. They can bring this issue back to the IRB; however, IRBs at this time are not well versed in the issues surrounding data sharing (Mozersky, 2020).
            iv. They can share the data in a repository that offers restricted access so that researchers can vet who accesses the data.
        b. You might recommend changes to the dataset which make it more shareable.
            i. Collapsing or removing variables can protect the identity of participants.
            ii. See [Human Subjects Data Essentials Primer](https://docs.google.com/document/d/1DVm2SYZO5NK1ydk8H_eF89-XxQsLk0sqs3hi6gD3RoI/edit) for more information on de-identification and dataset manipulation.

     2. Repositories may consider a formal policy regarding the review of the consent form.
         a. Data deposit agreements may include a statement that appropriate consent has been obtained from all participants in the data.
  
     Example: Open ICPSR uses the following language in their deposit agreement form: "I assert that all research subjects (living persons or active organizations) whose information is represented in this Data Collection have consented to sharing these data in an appropriate manner and/or I have institutional approval to share these data (e.g., waiver of consent from your IRB)."
  
     Example: The National Database for Autism Research (NDAR) includes in the submitter agreement: "Submitter further acknowledges that the data were collected pursuant to an informed consent that is consistent with the data submission."
       
         b. Depositors may be required to upload the consent form template as part of the data submission process.
     Example: BioLINCC and other repositories require informed consent templates. Specifically, [BioLINCC requires](https://biolincc.nhlbi.nih.gov/media/guidelines/handbook.pdf?link_time=2019-12-11_13:15:00.238612)  “approval from the institutional IRB for sharing of the study data or language within the informed consent permitting sharing study data with investigators not originally affiliated with the study.”
   
     3. Repositories may offer consent consulting services to ensure depositors use appropriate language in consent forms.
   
     Example: The National Addiction & HIV Data Archive Program (NAHDAP) offers review of and feedback on informed consent forms for data sharing and provides assistance for researchers trying to share data from studies that consent forms with less open language.
  
     4. Repositories may consider including the consent form as internal metadata/record.
    
     Example: The University of Minnesota includes the informed consent or participant agreement with the record as internal metadata in case we need to reference it later. We also track decisions made and specific consent issues to aid future decision making.


# Gray Areas

     1. There will be many scenarios not addressed explicitly by this guide. When responding to cases that are less than clear-cut, establish priorities and considerations on which you will make your determination. For example, the following list (Meyer, 2018) provides a set of conditions that may provide a helpful framework when considering data sharing incases where consent for such was not explicitly collected:
          a. “[...] in general, the argument for sharing will be stronger the more of the following conditions are met:
                i. The original consent form was merely silent about data sharing, and did not include a promise not to share data
                ii. The data are not especially sensitive (i.e., re-identification would be unlikely to cause significant harm to participants)
                iii. The data are not individually identified and are not especially likely to be re-identified (i.e., there are low incentives for anyone to re-identify the data or the data are unlikely to be re-identifiable alone or in combination with other available datasets)
                iv. The shared data will be accessible only under restricted conditions, protected by agreements prohibiting re-identification
                v. Sharing will be limited to secondary research purposes that fall within the scope of the research described in the original consent form
                vi. Sharing will be limited to secondary research purposes participants are not known to object to.”


# Completion of Consent Form Assessment

There are many potential outcomes after assessing consent forms that were used to collect data being ingested into a public repository. Use this guide, with the [ Human Subjects Data Essentials Primer](https://docs.google.com/document/d/1DVm2SYZO5NK1ydk8H_eF89-XxQsLk0sqs3hi6gD3RoI/edit),  to determine the best next steps for your repository and institution. You can ensure you have completed a job-well-done with the Data Curation Network’s CURATE checklist:

❏ Check files and read documentation
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

*Informed consent*: A voluntary agreement to participate in research. It is not merely a form that is signed but is a process in which the subject has an understanding of the research and its risks. Informed consent is essential before enrolling a participant and ongoing once enrolled. Informed Consent must be obtained for all types of human subjects research including; diagnostic, therapeutic, interventional, social and behavioral studies, and for research conducted domestically or abroad. Obtaining consent involves informing the subject about his or her rights, the purpose of the study, the procedures to be undergone, and the potential risks and benefits of participation. Subjects in the study must participate willingly. Vulnerable populations (i.e. prisoners, children, pregnant women, etc.) must receive extra protections. The legal rights of subjects may not be waived and subjects may not be asked to release or appear to release the investigator, the sponsor, the institution or its agents from liability for negligence.[https://oprs.usc.edu/files/2017/04/Informed-Consent-Booklet-4.4.13.pdf]

*Consent form*: This is the form signed by study participants after receiving informed consent. It must be written in a language easily understood by the participant, minimize the possibility of coercion or undue influence, and the subject must be given sufficient time to consider participation. [https://oprs.usc.edu/files/2017/04/Informed-Consent-Booklet-4.4.13.pdf]

*Consent information sheet*: Also called an information sheet for exempt research, this form does not require the study participant’s signature, but shares with them the study process, confidentiality notices, voluntary nature of the study, and contact information for any questions or concerns that might arise.

*Assent*: Agreement by an individual not competent to give legally valid informed consent (e.g., a child or adult who is cognitively impaired) to participate in research. A legal guardian or other representative must still provide consent on behalf of the participant. [https://www.msudenver.edu/irb/guidance/irbglossaryofterms/]

*Participant agreement*: If a legal consent form or consent information sheet is not required, researchers may still request that participants sign a participant agreement. Since a participant agreement is not regulated, the information in it will vary, but it commonly contains similar content to a consent form (i.e., reasons for research, harms/benefits, confidentiality, contact information, etc.).


# Bibliography

Meyer, M. N. (2018). Practical Tips for Ethical Data Sharing. Advances in Methods and Practices in Psychological Science, 1(1), 131–144. https://doi.org/10.1177/2515245917747656

Mozersky, J., Walsh, H., Parsons, M., McIntosh, T., Baldwin, K., & DuBois, J. M. (2020). Are we ready to share qualitative research data? Knowledge and preparedness among qualitative researchers, IRB Members, and data repository curators. IASSIST quarterly, 43(4), 952. https://doi.org/10.29173/iq952


# Appendix A - Links to sources on consent documentation

ICPSR [Recommended Informed Consent Language for Data Sharing](https://www.icpsr.umich.edu/web/pages/datamanagement/confidentiality/conf-language.html)

Qualitative Data Repository (QDR) [Sample Informed Consent Language](https://qdr.syr.edu/guidance/templates)

University of Michigan [IRB-HSBS Biospecimen Consent Template](https://research-compliance.umich.edu/new-irb-hsbs-biospecimen-consent-template) with data sharing language

University of Michigan [IRB-HSBS General Informed Consent Template](https://research-compliance.umich.edu/new-irb-hsbs-general-informed-consent-template) with data sharing language


