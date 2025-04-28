![](DCNlogo.png)

# Google Docs Primer

|   Topic   |   Description   |
| :------------- | :------------- |
| File Extensions | .gdoc |
| MIME Type | application/vnd.google-apps.document |
| Structure | https://developers.google.com/docs/api/concepts/structure |
| Versions | |
| Primary fields or areas of use | General office use |
| Source and affiliation | Google |
| Metadata | DublinCore, or metadata standards to describe collections of records as used in the institutional repository. |
| Key questions for curation review | Who created the documents? Who had access to edit and comment?  What was the purpose of the documents?  What is the best way to export these documents from google docs? How were the docs being used in internal workflow? |
| Tools for curation review | Browser, and any word processing program |
| Date Created | August 2019 |
| Created by | Nadia Dixson, City of Somerville (ndixson@somervillema.gov)
| | Adam Kriesberg, Simmons University (adam.kriesberg@simmons.edu) |
| Date updated and summary of changes made | |

---------------------------------------

**Suggested Citation:** Dixson, Nadia; Kriesberg, Adam (2019) Google Docs Curation Primer Data Curation Network GitHub Repository.

This work was created as part of the “Specialized Data Curation” Workshop #2 held at Johns Hopkins University in Baltimore, MD on April 17-18, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

-----------------------------------------

## Table of Contents

[Description of format](#description-of-format)

[Key questions to ask yourself, and clarifications from the researcher](#key-questions-to-ask-yourself-and-clarifications-from-the-researcher)

[Applicable metadata standard, core elements and readme requirements](#applicable-metadata-standard-core-elements-and-readme-requirements)

[Preservation Actions](#preservation-actions)
> [Exporting Multiple Files](#exporting-multiple-files) <br> [Comments and Versioning](#comments-and-versioning)

[Google Docs CURATED Checklist and FAIR Principles](#google-docs-curated-Checklist-and-fair-principles)

# Description of format

## Description of Format

Objects created in Google Drive imitate the familiar formats of productivity suite files such as Microsoft Office documents. However, Google Drive files are structured to be accessed and edited via a browser-based tool, and to be exported to a variety of file formats. This creates a variety of complications. Google Drive documents exist in a continually changing environment; behavior and functionality will change. Although the behavior of Google Docs will fluctuate, Google provides a detailed description of the structure of documents here: https://developers.google.com/docs/api/concepts/structure

This Primer currently only refers to the free version of Google Docs.  G-Suite accounts, which are business and institutional subscription-based Drive accounts, may have different functionality, though the majority of the issues encountered are very likely to be the same. 
Exporting is an inbuilt tool in Google Docs. Each export format can create complications. A simple text document will have few changes when exported in any formats Google provides: docx, odt, pdf, rtf, html, and epub as standard export formats. See the preservation actions section for additional information about exporting in each of these formats, as well as issues regarding exporting single files versus collections of files.

## Key questions to ask yourself, and clarifications from the researcher

The following questions are designed to help you better understand the nature of Google Docs use in the research process. Docs files are often used because of convenience and can function very differently from project to project. These questions can be the start of a conversation to determine if Google Docs files are appropriate for retention in a repository.

- In what context were the documents created?  
  - What indicates a final draft?
 
- Who had access to edit, who has made changes? 
  - Should prior versions be exported?
  - Do prior versions affect the context of the document?
 
- Are comments critical to understanding the documents?

- How are these documents related to documents created by other users, or other files in Google Drive?

- How does exporting affect the content of the document?

- Are there features used that may affect display when exported to a different file type?

## Applicable metadata standard, core elements, and readme requirements 

Google Drive files are not natively embedded with any metadata standard, and can range from spreadsheets that may contain data to text files that describe data or research methods. DublinCore can be used to describe Google Doc files. If a potential dataset includes a collection of inter-related documents, METs (http://www.loc.gov/standards/mets/METSOverview.v2.html) can be used to describe the relationship between files, as well as administrative data regarding file transformations and preservation actions. As general good practice, datasets that include Google Drive files should be deposited alongside a Readme file with information including the reason the documents were created, date of creation, authors' names, the original accounts the documents were associated with, the original format, and, if available, funding information. Note the use of special characters. 

## Preservation Actions

Google Docs provides the ability to export files in Microsoft Word, OpenDocument Format, Rich Text Format, PDF, Plain Text, HTML, and EPub.  In 2017, Jenny Mitcham of York University published the results of exporting Google documents in a blog post for York University's digital archives. Mitcham found that the majority of the format types largely preserved the original, with some changes to the number of pages and locations of footnotes. The exception is Plain Text which will strip images, charts, graphs, and other features. [^1] You can also see the results of exporting files in the appendices to this document.  These files were exported from Google Drive in December 2019, so keep in mind that functionality may change over time, and you should check the quality of your exports with each project. Special characters may not be supported in exported documents.

[^1]: Mitcham, Jenny. http://digital-archiving.blogspot.com/2017/04/how-can-we-preserve-google-documents_35.html accessed 12/04/2019

### Exporting multiple files

Individual files can be exported from Google Docs via the dropdown menus in the browser-based editor. Exporting as a PDF, and then converting that file to PDF/A is recommended for preservation. See the Library of Congress documentation for more information on the PDF/A standard.[^2] Exporting a folder from Google Drive will produce a zipped file. A utility created by Google called Google Take Out (https://opensource.googleblog.com/2018/07/introducing-data-transfer-project.html) gives you more options when exporting multiple files.  It is important to note that this will not work on folders in the “Shared with Me” drive, but only for those owned by a given account. 

[^2]: Library of congress,  https://www.loc.gov/preservation/digital/formats/fdd/fdd000318.shtml accessed 12/04/2019

### Comments and Versioning

As of December 2019, comments are preserved in docx, but the identities of the authors of the comments are only visible in the metadata. The OpenDocument format preserves usernames, but not the date and time of the comments. Comments are not preserved in the PDF format. Versioning can be exported by accessing the API: https://developers.google.com/drive/api/v3/manage-revisions?hl=en

## Google Docs CURATED Checklist and FAIR Principles

The following checklist is adapted from the original Data Curation Network (2018) checklist to assist curators when encountering diverse formats of digital objects. The modified version below includes considerations for Google Docs in order to guide you when working with files exported from this system and provided by research stakeholders in your organization. It includes questions to ask and steps to take which will help ensure that documents meet expectations according to The FAIR Data Principles and data curation good practices before bringing them into a curatorial or preservation environment. 

**First figure out the purpose of files as Google Docs documents in the larger research workflow.** Were they used as collaboration spaces, data sharing portals, or collection sites? Once this is understood and the files are deemed appropriate for your repository, refer to the steps below:

**Check** data files and read documentation 

- Files open as expected 
- File does not have inappropriate protections or security features enabled that prevent curation
- Metadata quality is rich, accurate, and complete 
- Documentation Type (circle)
	- ReadMe / Codebook / Data Dictionary / Other:
	- Missing / None
	- Needs work
- Human subjects data, if present
	- Request consent form / participation agreement

**Understand** the data (or try to)

- Organization of data well-structured
- Headers clearly defined
	- Define headers 
	- Clarify use of "blanks" 
	- Clarify units of measurement 
- Quality control clearly defined 
	- Unclear quality control 
	- Update/add Methodology 

**Request** missing information or changes 

- Describe concerns, issues, and needed improvements to the data submission.
- If content is unfamiliar, recommend changes to the creator for reusability (Janée et al., 2019)

**Augment** the submission

- Discoverability sufficient
	- Recommend (circle one) full-text index / file rename / file reorder / file descriptions / zip files 
	- Other:
- Keywords sufficient
	- Suggestions:
- Linkages Sufficient
	- Link to report/paper 
	- Link to related data sets 
	- Link to source data 
	- Link to other:

**Transform** file formats

- Preferred file formats in use
	- Convert to PDF/A-3, compliant with ISO-32000-2 (PDF/A-3 allows for embedding files.) (Arms et al., 2019) 
	- Retain original formats along with PDF/A or another format as appropriate
- Visualization of data easily accessible
	- Recommend graphical representation:
	- Recommend web-accessible surrogate:

**Evaluate** and rate the overall data record for FAIRness. 

(Rubric evaluating the FAIR principles are based on the scoring matrix by Dunning et al. (2017).) 

- Findable
	- Metadata exceeds author / title / date. 
	- Unique PID (DOI, Handle, PURL, etc.). 
	- Discoverable via web search engines. 
- Accessible 
	- Retrievable via a standard protocol (e.g., HTTP). 
	- Free, open (e.g., download link). 
	- Embedded files comply with requirements of PDF/A-compliant attachments. 
- Interoperable 
	- Metadata formatted in a standard schema (e.g., Dublin Core). 
	- Metadata provided in machine-readable format (OAI feed). 
- Reusable 
	- Data include sufficient metadata about the data characteristics to reuse. 
	- Contact info displayed if the direct assistance of the author needed.
	- Clear indicators of who created, owns, and stewards the data.
	- Data are released with clear data usage terms (e.g., a CC License). 

**Document** throughout curation activities

- Accessioning & deposit records
	- Names, dates, contact information, submission agreements, etc 
- Repository collection metadata
- Provenance logs
- Service workflow 
- Preservation packaging
- Any additional requirements at your institution 
