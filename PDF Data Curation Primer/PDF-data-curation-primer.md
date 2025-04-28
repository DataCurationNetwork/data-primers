![](DCNlogo.png)

# Primer for Data Curators <br> PDF Documents

## Overview

**Portable Document Format (PDF)**

|   Topic   |   Description   |
| :------------- | :------------- |
| Extension | .pdf  |
| MIME Type | <p> application/pdf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; application/x-bzpdf <br> application/x-pdf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; application/x-gzpdf <br> application/acrobat &nbsp; &nbsp; &nbsp; &nbsp; text/pdf <br> application/vnd.pdf &nbsp; &nbsp; &nbsp; &nbsp; text/x-pdf</p> |
| Structure | 7-bit ASCII file that consists of a subset of PostScript for layout and graphics along with a  font-embedding/replacement system and a structured storage system bundling embedded elements  and associated content into one file. |
| Versions | <p> Recent versions: PDF 1.7 (ISO 32000:1:2008) does not include Adobe Extensions; however, PDF 2.0 (ISO 32000-2:2017) is fully inclusive and open technology (PDF Association, 2017). <br> <br> **Notable Past Versions**<br> <sub>**Version(Year)**</sub> <li> __Version 1.0 (1993)__ <br> __Significant Features Added__: Hyperlinks, bookmarks <br> __Acrobat Reader Version (No.)__: Carousel </li> <br> <li> __Version 1.2 (1996)__ <br> __Significant Features Added__: Interactive page elements (radio buttons, checkboxes), AcroForm and FDF <br> __Acrobat Reader Version (No.)__: 3.0 </li> <br> <li> __Version 1.3 (2000)__ <br> __Significant Features Added__: Digital signatures; capture, conversion, and mapping functionality <br> __Acrobat Reader Version (No.)__: 4.0 </li> <br> <li> __Version 1.4 (2001)__ <br> __Significant Features Added__: RC4 encryption key lengths 40-128 bits, embedded FDF files, accessibility features, XMP metadata streams, importing content from other PDF documents <br> __Acrobat Reader Version (No.)__: 5.0 </li> <br> <li> __Version 1.5 (2003)__ <br> __Significant Features Added__: XML FDF (XFDF) <br> __Acrobat Reader Version (No.)__: 6.0 </li> <br> <li> __Version 1.6 (2004)__ <br> __Significant Features Added__: OpenType font embedding, cross-document linking <br> __Acrobat Reader Version (No.)__: 7.0 </li> <br><br> <sub>*Information adapted from​ https://en.wikipedia.org/wiki/History_of_the_Portable_Document_Format_(PDF)*</sub> </p> |
| Primary fields or areas of use | Ubiquitous use |
| Source and affiliation | Versions 1.0 -1.6 were proprietary - developed and managed by Adobe Systems, adding new features  from 1993-2006. Versions 1.7 and onward are open standards, managed by ISO. |
| Metadata | |
| Key questions for curation review | |
| Tools for curation review | |
| Date Created | |
| Created by | <p> Peace Ossom-Williamson (​peace@uta.edu​) <br>Nicole Contaxis (​nicole.contaxis@nyulangone.org​) <br>Margaret Lam (​mlam3@gmu.edu​) <br>Adam Kriesberg (​akriesberg@gmail.com​) <br><br> **Mentor**: ​Jake Carlson (​jakecar@umich.edu​) </p> |
| Date updated and summary of changes made | |

---------------------------
**Suggested Citation:** Ossom-Williamson, Peace; Contaxis, Nicole; Lam, Margaret; Kriesburg, Adam. (2019). PDF Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

This work was created as part of the “Specialized Data Curation” Workshop #2 held at Johns Hopkins University in Baltimore, MD on April 17-18, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

----------------------------

### Table of Contents

[**Overview**](#overview)

[**Table of Contents**](#table-of-contents)

[**Primer for Data Curators: PDF Documents**](#primer-for-data-curators-documents)

> [Description of Format](#description-of-format)  
>> [Overview](#overview) <br> [Features](#features) <br> [Standards, Specifications, and Subsets](#standards-specifications-and-subsets)

> [Typical Purposes and Functions](#typical-purposes-and-functions)
>> [Data Description](#data-description) <br> [Reporting Related Methods and Results](#reporting-related-methods-and-results) <br> [Data Storage and sharing](#data-storage-and-sharing)

> [Software for Viewing of Analyzing data](#software-for-viewing-of-analyzing-data)

> [PDF CURATED checklist](#pdf-curated-checklist)

> [Additional Resources](#additional-resources)

> [References](#references)

## Description of Format

### Overview

 The Portable Document Format (PDF) created by Adobe Systems is currently the de facto standard for fixed-format  electronic documents (Johnson, 2014). This format was developed and primarily used for desktop publishing because it  allows for reliable and consistent display and printing, regardless of the computer opening the document (Adobe Systems,  n.d.a). It was initially a less commonly used format until the integration of increased functionality (external hyperlinks)  and freely available software (Adobe Reader version 2.0 and onward, which became Acrobat Reader) (“History of the  Portable Document Format (PDF)”, n.d.). PDF documents may be created natively, converted from other electronic  formats, or digitized from paper, microform, or other hard copy format while keeping the data in originating files  integrated into the document, including text, graphics, spreadsheets, and other integrations. PDF documents typically  contain a combination of vector graphics, text, and bitmap graphics (Adobe Systems, Inc., 2008). Some may contain  multimedia objects and other content. As a highly-used document publication format, PDF documents represent  considerable bodies of important information globally and have become commonly used for publishing data and related  files.

### Features

 As a format, the PDF is preferred for document sharing and e-publishing due to the following features:

- preservation of document fidelity independent of the housing or viewing device or platform,

- merging of content from diverse sources and file types into one self-contained document while maintaining the  integrity of all original source documents, 

- digital signatures to certify authenticity, 

- security and permissions to allow the creator to retain control of the document and associated rights, 

- accessibility of content to those with disabilities, 

- extraction and reuse of content for use with other file formats and applications, and 

- electronic forms to gather data and integrate with business systems.

<sub>*List adapted from [https://www.adobe.com/acrobat/about-adobe-pdf.html](https://www.adobe.com/acrobat/about-adobe-pdf.html)​, p vii.*</sub>

### Standards, Specifications, and Subsets

PDF versions, beginning with 1.7, are published by the International Organization for Standardization (ISO), with Adobe  as one of the technical committee members. Full Function PDF documents conforming to ISO 32000-1 carry the PDF  version number 1.7 (Adobe Systems, Inc., n.d.b). PDF standards are published under ISO specifications and are backward  inclusive; therefore, the PDF 1.7 specification includes the functionality of versions 1.0 through 1.6. Some features are  marked as deprecated. Where Adobe removed certain features of PDF from their standard, they are not contained in ISO  32000-1; however, future versions, beginning from ISO 32000-2 (PDF 2.0), will no longer include proprietary  functionality. PDF documents conforming to ISO 32000-2 are known as “PDF 2.0 documents” or “PDF-2.0”  (“History  of the Portable Document Format (PDF)”, 2018).

Subsets of the PDF standard include: 

- PDF for Archive (PDF/A) 

- PDF for Exchange (PDF/X) 

- PDF for Engineering (PDF/E) 

- PDF for Universal Access (PDF/UA)

- PDF for Healthcare (PDF/H) 

- PDF for Variable and Transactional Printing  (PDF/VT) 

It is important to note that the preferred subset of the PDF format to use for preservation is PDF/A. PDF/A is designed  for long-term preservation and archiving and does not include features that would make the format unsuitable for  preservation, such as encryption, including audio or video objects in the PDF/A file, or allowing for the use of copyrighted  fonts (Arm & Fleischhauer, 2019). 

## Typical Purposes and Functions 

PDF documents are used for a variety of purposes - the three most common being (1) data description, (2) reporting  related methods and results, and (3) data storage and sharing. Below are recommendations along with examples and  templates.

### Data Description

Data description documents provide additional details relating to the data to allow other users to understand how the data  were collected, defined, and structured and the relationships between this dataset and other data. Data description  documents include data dictionaries, codebooks, and survey instruments. Easily editable files (e.g. TXT) are  recommended along with providing the file duplicated in PDF, formatted for ease of referral. Machine-actionable files are  recommended to allow for reproducing and adapting surveys and codebooks. (See the “Reporting Related Methods and  Results” section for these uses.)  

**Recommended Components**

- Creator(s) names, contact information, and affiliation.

- Description of the project.

- Description of the data files with each file name listed along with its description and how each dataset/database  relates to one another and to other existing datasets/databases. 

- Specific definitions of all  abbreviations, measurements, and any detail necessary for interpretation.

- For all the variables, the exact name as it appears in the dataset or database, its full description, data type, and  acceptable and null values. 

**Common Types**

- Codebooks and Data Dictionaries:  
  - Additional Recommendations:  [https://dataoneorg.github.io/Education/bestpractices/create-a-data](https://dataoneorg.github.io/Education/bestpractices/create-a-data)
  - Example: American Time Use Survey data dictionaries:  [https://www.bls.gov/tus/dictionaries.htm​](https://www.bls.gov/tus/dictionaries.htm​) 
  - Blank Template: [https://data.nal.usda.gov/data-dictionary-blank-template](https://data.nal.usda.gov/data-dictionary-blank-template)

- README Files: 
  - Additional Recommendations: [https://data.research.cornell.edu/content/readme](https://data.research.cornell.edu/content/readme)
  - Example: Implicit Association Test README - [https://osf.io/s27xd/](https://osf.io/s27xd/)
  - Blank Template: [https://cornell.app.box.com/v/ReadmeTemplate](https://cornell.app.box.com/v/ReadmeTemplate)

- Survey Instruments - usually exported from the program
  - Additional Recommendations:<br> [https://res.mdpi.com/data/data-03-00045/article_deploy/data-03-00045-v2.pdf?filename=&attachment=1](https://res.mdpi.com/data/data-03-00045/article_deploy/data-03-00045-v2.pdf?filename=&attachment=1)​ (Section 3.1.3. Survey Instrument)
  - Example: Child Care Market Rate Survey instrument - ​ [https://doi.org/10.3886/ICPSR23262.v2](https://doi.org/10.3886/ICPSR23262.v2) (Questionnaire.pdf)  

## Reporting Related Methods and Results

Other related files that are often stored as PDF documents are those describing or including the research methods or  findings. These include protocols, figures, and the research manuscript or article itself. See below for examples.

- Data collection methods
  - Example 1: computational biology research steps: [http://dx.doi.org/10.13020/D6QG61](http://dx.doi.org/10.13020/D6QG61)
  - Example 2: systematic review search strategy, quality appraisal, etc.: [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5008964/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5008964/) (Supplementary Materials)

- Charts, tables, and visualizations of findings
  - Example: figures from a geohistorical immigrant study: [https://doi.org/10.7910/DVN/8PY6Q6/0VO9FK](https://doi.org/10.7910/DVN/8PY6Q6/0VO9FK) 

Sharing the underlying data as only the publication or in graphs or charts is common but impractical or labor-intensive.  “‘Send me your data—pdf is fine,’ said no one ever” by Rivers (2013) details basic steps to better share these files along  with the machine-actionable data. These supplemental files reporting methods and findings, including the manuscript  itself, as PDF documents along with the data files can assist with interpretation of the data and related findings. 

## Data Storage and Sharing

PDF documents are not recommended for sharing data because  it “restricts reuse by encapsulating otherwise useful data  in this traditional publication format” (Johnston, 2017, p. 127), and data should be made available through “‘reuse-ready  sharing,’ ‘fit-for-purpose sharing,’ or ‘source file sharing.’”​ ​ (p. 132). However, many tools only allow for export of the data  in proprietary formats or in PDF. In these particular cases, the PDF documents, provided along with the proprietary file,  allows for viewing of the data by a larger number of users.

## Software for Viewing or Analyzing Data

Adobe has several programs used most commonly for PDF documents: Acrobat Reader - only for viewing and signing  PDF documents, Acrobat Pro, InDesign, Illustrator, and Photoshop. However, since PDF is an open format, there are  thousands of software that can be used. Adobe Systems holds the PDF patents but licenses them for royalty-free use for  PDF software development.

The table below lists ​other **commonly used tools​**:  


| **Software** | **Uses*** | **Notes** |
| :------------- | :------------- | :------------- |
| Microsoft Office 2007 and later | creating  | |
| Google Docs | creating, reading | |
| LibreOffice (GNU LGPLv3 /  MPLv2.0) | reading, creating, converting  | |
| PDFBox (Apache) | converting | not available for Mac OS, converts PDF  documents to text, images, html, and other  file types |
| Pdf-parser (public domain) | reading, analyzing | extraction and analysis tppl, handles corrupt  and malicious PDF documents |
| Google Chrome | reading, converting | built-in PDF document viewer in web  browser, converts HTML to PDF via “print  to PDF” functionality |
| Mozilla Firefox (MPL 2.0) | reading | built-in PDF document viewer (PDF.js) in  web browser |
| Nitro PDF Reader (freeware) | reading, creating, converting | allows for limited editing - text highlighting,  drawing lines, and measuring distances;  extracts images from PDF documents |
| Bluebeam Revu | reading, creating, editing, converting | |
| Nitro PDF Pro | reading, creating, editing, converting | |
| PDF Studio | reading, creating, editing | |
| pdftk (GPL) | reading, creating, editing, analyzing, converting | Command-line tools for manipulating PDF documents and filling PDF forms with  FDF/XFDF data |

Mobile applications allowing for reading PDF documents include Amazon Kindle app, Google Drive app, iBooks, and Hancom  Office Editor. Web tools include Smallpdf (conversion); PDFVue, A.nnotate, DigiSigner (reading, annotating, filling out forms,  signing); and Docstoc, Issuu, PDF.js, and PDFTron Systems (reading).

***__Uses Definitions__: ​ creating - saving a document as .pdf, editing - editing a document that began as a .pdf and saving it as .pdf,  reading - opening and viewing .pdf files, converting - converting content from a .pdf file to another type, analyzing - analyzing  content in .pdf files.**

<sub>*Information adapted from [https://en.wikipedia.org/wiki/List_of_PDF_software](https://en.wikipedia.org/wiki/List_of_PDF_software)*</sub>

## PDF CURATED Checklist

The following checklist is adapted from the original Data Curation Network (2018) checklist to assist curators when  encountering diverse formats of digital objects. The modified version below includes considerations for the PDF  document in order to guide you when working with PDF files provided by research stakeholders in your organization. It  includes questions to ask and steps to take which will help ensure that documents meet expectations according to The  FAIR Data Principles and data curation best practices before bringing them into a curatorial or preservation environment. 

**First figure out the purpose of files as PDF documents in the larger research workflow** ​and determine whether the information in PDF could be more useful in a machine-readable format. If PDF is appropriate (or there is a duplicate in another file type), refer to the steps below: 

<p><ul><li>

**Check**​ data files and read documentation <ul><li> Files open as expected </li> <input type="checkbox"> Troubleshooting Issues: <br> &nbsp; &nbsp; <input type="checkbox"> Cannot open PDF file in browser/on computer: <br> &nbsp; &nbsp; &nbsp; &nbsp; [https://helpx.adobe.com/acrobat/kb/cant-open-pdf.html](https://helpx.adobe.com/acrobat/kb/cant-open-pdf.html)  <br> &nbsp; &nbsp; <input type="checkbox"> Cannot open PDF file in Acrobat created from InDesign or Illustrator: <br> &nbsp; &nbsp; &nbsp; &nbsp; [https://helpx.adobe.com/indesign/kb/cannot-open-pdf-file-acrobat.html](https://helpx.adobe.com/indesign/kb/cannot-open-pdf-file-acrobat.html) <br> &nbsp; &nbsp; <input type="checkbox"> Lack of embedded fonts renders PDF incorrectly (not relevant if transforming to PDF/A, see below  for additional information): <br>  &nbsp; &nbsp; &nbsp; &nbsp; [https://helpx.adobe.com/acrobat/kb/missing-or-garbled-text-converting.html](https://helpx.adobe.com/acrobat/kb/missing-or-garbled-text-converting.html) <br> &nbsp; &nbsp; <input type="checkbox"> Find solutions to additional issues on the Adobe Support Community Forum: <br> &nbsp; &nbsp; &nbsp; &nbsp; [https://community.adobe.com/](https://community.adobe.com/) <br> &nbsp; &nbsp; <input type="checkbox"> Use third-party services/tools to repair PDF files. Please note that these are examples of tools to  work with PDF files and not an exhaustive list. You should experiment with these and/or other tools before implementing in your organization. <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="checkbox"> SysInfoTools PDF Recovery Tool: [https://www.sysinfotools.com/recovery/pdf-recovery.php](https://www.sysinfotools.com/recovery/pdf-recovery.php)  <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="checkbox"> Sejda Repair PDF: [https://www.sejda.com/repair-pdf](https://www.sejda.com/repair-pdf)  <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="checkbox"> Kernel for PDF Repair: [https://www.nucleustechnologies.com/pdf-repair.html](https://www.nucleustechnologies.com/pdf-repair.html) <br> &nbsp; &nbsp; <input type="checkbox"> Other Issues __________ <li> File does not have inappropriate protections or security features enabled preventing curation (not relevant if  transforming to PDF/A, see below for additional information) </li> &nbsp; &nbsp; <input type="checkbox"> Troubleshooting Issues: <br> &nbsp; &nbsp; &nbsp; &nbsp; <input type="checkbox"> Remove password protection on PDF files if you have access to Acrobat Pro: <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [https://acrobat.adobe.com/us/en/acrobat/how-to/unlock-pdf.html](https://acrobat.adobe.com/us/en/acrobat/how-to/unlock-pdf.html) <br> &nbsp; &nbsp; &nbsp; &nbsp; <input type="checkbox"> Find information on security for PDFs on the Adobe website: <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; [https://helpx.adobe.com/acrobat/using/overview-security-acrobat-pdfs.html#overview_of_security_in_acrobat_and_pdfs](https://helpx.adobe.com/acrobat/using/overview-security-acrobat-pdfs.html#overview_of_security_in_acrobat_and_pdfs) <li> Metadata quality is rich, accurate, and complete </li> &nbsp; &nbsp; <input type="checkbox"> Metadata has issues _________ <li> Documentation Type (circle) </li> &nbsp; &nbsp; <input type="checkbox"> Readme / Codebook / Data Dictionary / Other: ________________________ <br> &nbsp; &nbsp; <input type="checkbox"> Missing/None <br> &nbsp; &nbsp; <input type="checkbox"> Needs work <li> Human subjects data, if present </li> &nbsp; &nbsp; <input type="checkbox"> Request consent form / participation agreement </ul></li><li>

**Understand** ​the data (or try to) <ul><li> Organization of data well-structured </li><li> Headers clearly defined </li> &nbsp; &nbsp; <input type="checkbox"> Define headers <br> &nbsp; &nbsp; <input type="checkbox"> Clarify use of “blanks” <br> &nbsp; &nbsp; <input type="checkbox"> Clarify units of measurement <li> Quality control clearly defined </li> &nbsp; &nbsp; <input type="checkbox"> Unclear quality control <br> &nbsp; &nbsp; <input type="checkbox"> Update/add Methodology </ul></li><li>

**Request**​ missing information or changes <ul><li> Describe concerns, issues, and needed improvements to the data submission. </li><li> If content is unfamiliar, recommend changes to the creator for reusability (Janée et al,, 2019). </ul></li><li>

**Augment**​ the submission <ul><li> Discoverability sufficient </li> &nbsp; &nbsp; <input type="checkbox"> Recommend (circle one) full-text index / file rename / file reorder / file descriptions / zip files <br> &nbsp; &nbsp; <input type="checkbox"> Other  ______________ <li> Keywords Sufficient </li> &nbsp; &nbsp; <input type="checkbox"> Suggestions _______________ <li> Linkages Sufficient </li> &nbsp; &nbsp; <input type="checkbox"> Link to report/paper <br> &nbsp; &nbsp; <input type="checkbox"> Link to related data sets <br> &nbsp; &nbsp; <input type="checkbox"> Link to source data <br> &nbsp; &nbsp; <input type="checkbox"> Link to other ____________  </ul></li><li>

**Transform**​ file formats <ul><li> Preferred file formats in use </li> &nbsp; &nbsp; <input type="checkbox"> Convert to PDF/A-3, compliant with ISO-32000-2. <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (PDF/A-3 allows for embedding files.) (Arms et al., 2019) <br> &nbsp; &nbsp; <input type="checkbox"> Convert embedded files if they include the informational content of the document. <br> &nbsp; &nbsp; <input type="checkbox"> Recommend conversion from PDF to   _________ <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (Depends on purpose - see “​Typical Purposes and Functions​” section) <br> &nbsp; &nbsp; <input type="checkbox"> Retain PDF along with original formats <li>Software needed is readily available <br> &nbsp; &nbsp; <input type="checkbox"> Unclear version of software <br> &nbsp; &nbsp; <input type="checkbox"> Unclear software used <li> Visualization of data easily accessible </li> &nbsp; &nbsp; <input type="checkbox"> Recommend graphical representation ____________ <br> &nbsp; &nbsp; <input type="checkbox"> Recommend web-accessible surrogate ____________ </ul></li><li>

**Evaluate**​ and rate the overall data record for FAIRness. <br> (Rubric evaluating the FAIR principles are based on the scoring matrix by Dunning et al. (2017).) <ul><li> Findable </li> &nbsp; &nbsp; <input type="checkbox"> Metadata exceeds author/ title/ date, <br> &nbsp; &nbsp; <input type="checkbox"> Unique PID (DOI, Handle, PURL, etc.). <br> &nbsp; &nbsp; <input type="checkbox"> Discoverable via web search engines. <li> Accessible </li> &nbsp; &nbsp; <input type="checkbox"> Retrievable via a standard protocol (e.g., HTTP). <br> &nbsp; &nbsp; <input type="checkbox"> Free, open (e.g., download link). <br> &nbsp; &nbsp; <input type="checkbox"> Embedded files comply with requirements of PDF/A-compliant attachments. <li> Interoperable </li> &nbsp; &nbsp; <input type="checkbox"> Metadata formatted in a standard schema (e.g., Dublin Core). <br> &nbsp; &nbsp; <input type="checkbox"> Metadata provided in machine-readable format (OAI feed). <li> Reusable </li> &nbsp; &nbsp; <input type="checkbox"> Data include sufficient metadata about the data characteristics to reuse. <br> &nbsp; &nbsp; <input type="checkbox"> Contact info displayed if the direct assistance of the author needed. <br> &nbsp; &nbsp; <input type="checkbox"> Clear indicators of who created, owns, and stewards the data. <br> &nbsp; &nbsp; <input type="checkbox"> Data are released with clear data usage terms (e.g., a CC License). </ul></li><li>

**Document​** throughout curation activities <ul><li> Accessioning & deposit records </li> &nbsp; &nbsp; <input type="checkbox"> Names, dates, contact information, submission agreements, etc <li> Repository collection metadata </li><li> Provenance logs </li><li> Service workflow </li><li>
 Preservation packaging </li><li> Any additional  requirements at your institution </li></li></ul></p> 

## Additional Resources

1. The FAIR Data Principles (2016). Available at ​ https://www.force11.org/group/fairgroup/fairprinciples

2. PDF/A Family, PDF for Long-term Preservation (2019). Available at https://www.loc.gov/preservation/digital/formats/fdd/fdd000318.shtml

## References 

> Adobe Systems, Inc. (n.d.a). ​About Adobe PDF.​ Retrieved from [https://acrobat.adobe.com/us/en/acrobat/about-adobe-pdf.html](https://acrobat.adobe.com/us/en/acrobat/about-adobe-pdf.html)

> Adobe Systems, Inc. (n.d.b). PDF Reference and Adobe Extensions to the PDF Specification. Retrieved from [https://www.adobe.com/devnet/pdf/pdf_reference.html](https://www.adobe.com/devnet/pdf/pdf_reference.html)

> Adobe Systems, Inc. (2008). ​Document management - Portable document format - Part 1: PDF 1.7. ​Retrieved from [https://opensource.adobe.com/dc-acrobat-sdk-docs/pdfstandards/PDF32000_2008.pdf](https://opensource.adobe.com/dc-acrobat-sdk-docs/pdfstandards/PDF32000_2008.pdf)

> Arms, C. R., & Fleischhauer, C. (2019). PDF/A-3, PDF for long-term preservation, use of ISO 32000-1, with  embedded files. Retrieved from [https://www.loc.gov/preservation/digital/formats/fdd/fdd000360.shtml](https://www.loc.gov/preservation/digital/formats/fdd/fdd000360.shtml)

> Data Curation Network. (2018). ​Checklist of CURATED steps. ​Retrieved from [http://z.umn.edu/curate](http://z.umn.edu/curate)

> Dunning, A., de Smaele, M., & Böhmer, Jasmin. (2017). Are the FAIR Data Principles fair? ​International Journal of  Digital Curation. 12​(2) . Retrieved from [https://doi.org/10.2218/ijdc.v12i2.567](https://doi.org/10.2218/ijdc.v12i2.567)

> History of the Portable Document Format (PDF). (2018, December 16). In ​Wikipedia​. Retrieved from [https://en.wikipedia.org/wiki/History_of_PDF](https://en.wikipedia.org/wiki/History_of_PDF)

> Janée, G., Sawchuk, S., & Yoo, H. J. (2019). Microsoft Excel data curation primer. ​Data Curation Network Primers, 1​. Retrieved from [https://hdl.handle.net/11299/202816](https://hdl.handle.net/11299/202816)

> Johnson, D. (2014, February 17). The 8 most popular document formats on the web [Blog post]. Retrieved from [https://web.archive.org/web/20141202155936/http://duff-johnson.com/2014/02/17/the-8-most-popular-document-formats-on-the-web/](https://web.archive.org/web/20141202155936/http://duff-johnson.com/2014/02/17/the-8-most-popular-document-formats-on-the-web/)

> Johnston, L. (Ed.). (2017). ​Curating research data. Volume one: Practical strategies for your digital repository​.  Chicago, Illinois: Association of College and Research Libraries, a division of the American Library Association. Retrieved from [https://hdl.handle.net/11299/185335](https://hdl.handle.net/11299/185335)

> PDF Association. (2017, July 31).​ ISO 32000-2 (PDF 2.0)​. Retrieved from [https://pdfa.org/resource/iso-32000-pdf/](https://pdfa.org/resource/iso-32000-pdf/)

> Rivers, C. (2018, April 8). “Send me your data: PDF is fine” said no one ever (how to share your data effectively)  [Blog post]. Retrieved from [https://web.archive.org/web/20180428173004/http://www.caitlinrivers.com/blog/send-me-your-data-pdf-is-fine-said-no-one-ever-how-to-share-your-data-effectively](https://web.archive.org/web/20180428173004/http://www.caitlinrivers.com/blog/send-me-your-data-pdf-is-fine-said-no-one-ever-how-to-share-your-data-effectively)

 



 
