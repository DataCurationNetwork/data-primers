![](DCNlogo.png)

# .R Primer

Scope: text files with a “.R” extension that contain code for executing programs in the R language 

|   Topic   |   Description   |
| :------------- | :------------- |
| File Extensions | .R |
| MIME Type | text/plain |
| Structure | unstructured |
| Versions | |
| Primary fields or areas of use | Data analytics, statistics, bioinformatics, text mining, data science,  digital humanities |
| Source and affiliation | The R Foundation (https://www.r-project.org/foundation/) |
| Metadata | NA |
| Key questions for curation review | What is the purpose of the file? Are any data associated with the  file? Are the referenced data present at the indicated location? |
| Tools for curation review | Any text editor, RStudio |
| Date Created | 20191121 |
| Created by | <p> Creators: Lynda Kellam, Cornell University <br> Katherine Koziar, University of California, Riverside <br> Stanislav Pejša, Purdue University </p> <br> Mentor: Joel Herndon, Ph.D. |
| Date updated and summary of changes made | |

**Table of Contents**

[Description of format](#description-of-format)  

[Examples](#examples) 

[Sample data set citations](#sample-data-set-citations) 

[Key questions to ask yourself](#key-questions-to-ask-yourself) 

[Key clarifications to get from researcher](#key-clarifications-to-get-from-the-researcher) 

[Applicable metadata standard, core elements and readme requirements](#applicable-metadata-standard)

[Resources for reviewing data](#resources-for-reviewing-data) 

[Software for viewing or analyzing data](#software-for-viewing-or-analyzing-data) 

[Preservation actions](#preservation-actions) 

[What to look for to make sure this file meets FAIR principles](#what-to-look-for-to-make-sure-this-file-meets-fair-principles) 

[Ways in which fields may use this format](#ways-in-which-fields-may-use-this-format) 

[Documentation of curation process: What do we capture from curation process](#documentation-of-curation-process-what-do--we-capture-from-curaiton-process)

[Appendix A - filetype CURATED checklist](#appendix-a)

 # Description of Format

 The file with the extension R (.R) typically contains a script written in R, which is a programming language and  environment for statistical computing and graphics. An R script file is a plain text file that stores the R code. R  script contains only instructions for analysing, manipulating, and visualising data, and optionally comments  explaining the code. The data are usually stored elsewhere and have to be loaded first, as well as optional R  packages that are often needed, so that script runs successfully.

 ![](Rprimer1.jpeg)

# Example .R File

[WUSTL University Libraries](https://libguides.wustl.edu/c.php?g=385216&p=3093966) created a good [sample R code](  ) file that includes common R syntax including assignment statements, arithmetic functions, basic vectors and structures, and how to access data. Information about reading R code is included in the Resources for Reviewing Data section of this primer

# Sample data set citation

Hall, H., Ma, J., Shekhar, S., Leon-Salas, W. D., Weake, V. M. (2018). Blue light induces a neuroprotective gene  expression program in Drosophila photoreceptors - Supporting data for Hall and Ma et al. (2018). Purdue  University Research Repository. doi:10.4231/R77W69FM  (https://purr.purdue.edu/publications/3003/1)

Seliger, C. S. (2018). Text Mining and Plotting Tools for KSA / DS / HEI Research Study. Purdue University  Research Repository. doi:10.4231/R7MK6B49  (https://purr.purdue.edu/publications/3041/1)  

# Key questions to ask yourself

- Are all the packages available? Are all the listed packages used? Which version of the listed packages  were used? 

- Are all data referenced in script available? Typically, references to data follow function calls such as  ‘*read*’ or ‘*load*’. 

- Often data files are stored separately from the script file. Can the data be accessed? Are they provided  with the script or is a URL available?  

- Are any links to other files absolute or relative (i.e., are links to other files/directories replicated as  absolute throughout the script)? 

# Key clarifications to get from researcher

Are all the used packages openly available? And if so where? (It can be a researcher’s website, but ideally  other more general sharing platform, such as CRAN or GitHub.) If the files are not in CRAN, GitHub, or other  publicly available site, please include the source code for the packages. 

# Applicable metadata standard, core elements and readme requirements

**READMEs**

There are currently (July 2019) two schools of thought regarding READMEs with scripts. The first is that there  should be a README with all scripts that explicitly lists items about the script; we will call this “Best  Practices”, since README files are best and standard practices in computer coding and scripting.  The second  school of thought is that much of this information is already in the script itself; we will call this “Good Enough  Practices”.  Please note, in order for Good Enough Practices to work, the script file must be properly  commented so a user understands what the code is expected to do. 

A single README file is sufficient for a group of scripts that are grouped together as a single dataset. 

**README requirements**

README should provide information on  

- The purpose of the script(s).

- The version of R used when the script was developed. 

- How to execute the script(s) in the .R file.

- The expected output.

- List of dependencies (things the script(s) need(s) to successfully run) such as
 - Other datasets or additional scripts that are called in the .R file.  
 - Packages

 Optional

- Citation: if there is no separate citation file, READMEs will sometimes include example citation. 

- License: if there is no separate license file, READMEs will sometimes include license information.

**Notes on Packages**

Since some R Packages are actively developed, it is a Best Practice to keep track of the version used. 

- **Best Practices**​: A README will list the packages used by the script. This list should include the version  of the package and links to the package repository. 
 - (e.g.  ggplot v.3.2.0, ​https://cran.r-project.org/web/packages/ggplot2/index.html <br> dplyr v.0.8.3, ​https://cran.r-project.org/web/packages/dplyr/index.html​)  

- **Good Enough Practices**: packages are usually listed at the beginning of a script in a block of text (see  image).  Typically the name of a package is in parentheses following the term ​library​. 

![](Rprimer2.jpeg)

**Metadata Standards**

This section is for completion’s sake, as metadata standards are not usual for most script submissions.  Most  programming languages do not have metadata standards in the way traditionally understood by librarians and  data curators; however, the closest equivalents are coding conventions and standards within the language,  and metadata standards for libraries or packages used to extend the language. The former are covered in the  Styles for R​ section below. The later may be found in any R package hosted on the official Comprehensive R  Archive Network page, accessible through ​https://cran.r-project.org/web/packages/​. These standards are not  expected in a Good Enough Practices script submission, but if one were looking for R metadata standards,  packages are a good place to start. 

**Styles for R**

Style in terms of a programming language is the way the language is written in a script. There are certain  items that are enforced by the code to allow the script to run; however, beyond that scripts may be written as  the programmer wishes. It is not expected that a curator should enforce Style in R, but if a researcher wants to  make their code more readable, they should follow good style practices.  Below are two style guides used in  the R community. 

- Google's R Style Guide https://google.github.io/styleguide/Rguide.xml  
- Wickham, H. (n.d.). The tidyverse style guide. Retrieved from https://style.tidyverse.org/ 

# Resources for reviewing data

See software for viewing data (below). 

**R Tutorials**
- Software Carpentry lessons are generally more accessible for new learners. An overview of the **R Studio interface** is included in this tutorial.
 - http://swcarpentry.github.io/r-novice-gapminder/

- Tutorials as part of the R Network
 - https://cran.r-project.org/manuals.html#R-exts
 - https://cran.r-project.org/doc/manuals/r-release/R-intro.html 

- Tutorials curated by R Studio
 - https://www.rstudio.com/online-learning/ 

 Peng, R. D. (2016). R Programming for Data Science. 5th Edition edition. lulu.com. 
 > https://bookdown.org/rdpeng/rprogdatascience/ 

 Wickham, H., & Grolemund, G. (2017). R for Data Science: Import, Tidy, Transform, Visualize, and Model Data (1 edition). Sebastopol, CA: O’Reilly Media. ​http://r4ds.had.co.nz/ 

# Software for viewing or analyzing data

R is a plain text file that can be opened in any text editor, but in order to work it needs to be run in the R  environment.  Simple text editor is sufficient for the file review, but editor with syntax highlighting, such as [Atom](https://atom.io/), [Sublime Text](https://www.sublimetext.com/), or [Notepad++](https://notepad-plus-plus.org/) will make the review much easier. 
- [R](https://www.r-project.org/): The R software environment is free to download and use.
- [RStudio](https://rstudio.com/products/rstudio/download/): RStudio is an open source IDE (or integrated development environment) for R. It is free for non-commercial use. RStudio provides a nicer interface to view and analyze .R script files. RStudio requires R to be installed separately. They maintain a mirror as part of the Comprehensive R Archive Network (CRAN) for ​[precompiled binary distributions](https://cran.rstudio.com/)​ of the base system for download. 

# Preservation actions

R file is a plain text file, therefore the preservation stakes are not very high. Curators should be able to open  *.R files with any text editor, including Notepad, Notepad++, gedit, etc. There are no special concerns. One  possible concern may be with character encoding. For that, UTF-8 encoding is the best option, but if no  special or foreign language characters (such as Greek letters) or mathematical formulas are present, simple  ASCII is adequate. All other character encodings should probably be converted to Unicode. 

# What to look for to make sure this file meets FAIR principle <sup>1</sup>

In order to evaluate an .R script file under the FAIR principles, it must be published in a manner that meets the  following:

- To be Findable: 
 - F1. metadata are assigned a globally unique and persistent identifier (e.g., DOI)
 - F2. .R file is described with rich metadata 
 - F3. metadata clearly and explicitly include the identifier of the data it describes 
 - F4. metadata are registered or indexed in a searchable resource 

- To be Accessible:
 - A1. metadata are retrievable by their identifier using a standardized communications protocol
 - A2. metadata are accessible, even when the .R file is no longer available

- To be Interoperable: 
 - I1. metadata use a formal, accessible, shared, and broadly applicable language 
 - I2. metadata use vocabularies that follow FAIR principles 
 - I3. metadata include qualified references to other metadata

- To be Reusable:
 - R1. metadata are richly described with a plurality of accurate and relevant attributes including  usage license, provenance, and domain-relevant community standards 

As the Tableau workbook (.twb) is a XML-structured format, the file can be opened with any XML-compatible viewer or editor to review the source XML code.

<p  id="note1"><sup>1</sup> Wilkinson, M., Dumontier, M., Aalbersberg, I. et al. The FAIR Guiding Principles for scientific data management and stewardship. Sci Data 3, 160018 (2016) doi:10.1038/sdata.2016.18 </p>

# Ways in which fields may use this format

R is used in a variety of ways. It is popular in statistics, bioinformatics, and data science, it is gaining traction in  the digital humanities. R script can be used for data analytics, calculations, and data visualization as R is  capable of producing high-quality graphs and plots. 

# Documentation of curation process: What do we capture from curation process

R scripts can interact with a variety of formats, such as CSV, TSV, TXT, Apache server log files, but also  proprietary ones such as XLSX, XLS, or stata. Often the more specialised or proprietary formats require  corresponding R package (RStata, readxl, etc.).  R can also store data in its native format called *. RDATA or in  its earlier version *.RDA. These files store not only the data, but also the working environment which includes  the function and value objects created during an open session in R. These files cannot be opened in the text  editor.  

In addition, researchers who use the RStudio IDE can submit with their data a file with extensions such as  .Rproj or .Rmd. The .Rproj data contains metadata that are project oriented, it stores environment and variable  pertinent to a given project. .Rmd file stands for R markdown  and this file contains scripts and instruction for  customized output. While the file itself can be opened in a word document, dynamically created output, such  as executing scripts, tables, and plots, works only in RStudio.

# Appendix A - R filetype CURATED checklist

**CHECK Step**

| **CURATE Action** | **Curator Checklist** |
| :------------- | :------------- |
| <p> **Check** data files and read documentation <br> <ul><li> Review the content of the data files (e.g., open and run the files  or code). </li><li> Verify all metadata provided by  the author and review the  available documentation. </li></p> | <p><ul><li> Files open as expexted <ul><li> Issues __________  </li></ul></li><li> Code runs as expected <ul><li> Produces minor errors </li><li> Does not run and/or produces many errors </li><li> Did not try to run code </li></ul></li><li> Metadata quality is rich, accurate, and complete <ul><li> Metadata has issues _________ </li><li> Metadata in comments </li></ul></li><li> Documentation Type (circle) <br>  Readme / Codebook / Data Dictionary / Other:________________________ <ul><li> Missing/None </li><li> Needs work </li></ul></li></p> |

**UNDERSTAND Step**

| **CURATE Action** | **Curator Checklist** |
| :------------- | :------------- |
| <p> **Understand** the data (or try to) <br> <ul><li> Check for quality assurance and usability issues. </li><li> Try to detect and extract any  “hidden documentation” inherent  to the data files that may facilitate  reuse. </li><li> Determine if the documentation  of the data is sufficient for a user  with similar qualifications to the  author’s to understand and reuse  the data. If not, recommend or  create additional documentation  (e.g., a readme.txt template). </li></p> | <p><ul><li> The code's formatting aids readability <ul><li> Spacing between code section </li><li> Code within conditionals and loops (​if​ and  for ​statements) is indented </li><li> Code looks like one block of text </li></ul></li><li> Clear variable names  <ul><li> Variable names self-defined </li><li> Comments describe variable names </li><li> Documentation describes variable names </li><li> Missing/None </li><li> Needs work </li></ul></li><li> Clear sections of code  <ul><li> Sections self-define code actions </li><li>Comments describe code actions </li><li> Documentation describes code actions </li><li> Missing/None </li><li> Needs work </li></ul></li><li> Review Documentation (in previous step, CHECK)  for completeness and clarity  </li></ul></p> |

**REQUEST Step** 

| **CURATE Action** | **Curator Checklist** |
| :------------- | :------------- |
| <p> **Request** missing information or changes <br> <ul><li> Generate a list of questions for the data author to fix any errors  or issues. </li></p> | <p> Narrative describing the concerns, issues, and needed improvements to the data submission.<ul><li> Inquiry sent to researcher </li><li>Response received </li><li> Additional follow up communication needed </li></p> |

**AUGMENT Step**

| **CURATE Action** | **Curator Checklist** |
| :------------- | :------------- |
| <p> **Augment** the submission <br> <ul><li> Enhance metadata to best facilitate discoverability. </li><li> Create and apply metadata for  the data record, including  descriptive keywords. </li><li> When appropriate, structure and  present metadata in  domain-specific schemas to facilitate interoperability with other systems. </li></p> | <p><ul><li> Discoverability sufficient <ul><li> Recommend (circle one) full-text index / file  rename / file reorder / file descriptions / zip  files into one archive  Other  ______________   </li></ul></li><li> Keywords Sufficient <ul><li> Suggestions _______________  </li></ul></li><li> Linkages Sufficient <ul><li> Link to report/paper </li><li> Link to related data sets </li><li> Link to source data </li><li> Link to other ____________ </li></ul></li></p> |

**TRANSFORM Step**

| **CURATE Action** | **Curator Checklist** |
| :------------- | :------------- |
| <p> **Transform** file formats <br> <ul><li> Identify specialized file formats  and their restrictions (e.g., Is the  software freely available? Link to  it or archive it alongside the data). </li><li> Transform files into open, non-proprietary file formats<sup>2</sup> that 2 broaden the potential audience for reuse and ensure that preservation actions might be taken by the repository in later steps. Retain original files if data transfer is not perfect. </li></p> | <p><ul><li> Preferred file formats in use <ul><li> Recommend conversion from _________  to _________ </li><li> Retain original formats </li></ul></li><li> Software needed is readily available <ul><li> Unclear version of software </li><li> Unclear software used </li></ul></li><li> Visualization of data easily accessible <ul><li> Recommend graphical representation  ____________  </li><li> Recommend web-accessible surrogate  ________________ </li></ul></li></p> |

<p  id="note1"><sup>2</sup> Cornell’s List of Preservation Format Recommendations http://guides.library.cornell.edu/ecommons/formats </p>

**EVALUATE Step**

| **CURATE Action** | **Curator Checklist** |
| :------------- | :------------- |
| <p> **Evaluate** and rate the overall data record  for FAIRness.* <br> <ul><li> Score the dataset and  recommend ways to increase the FAIRness of the data and become “DCN approved." | <p> Findable- <ul><li> Metadata exceeds author/ title/ date. </li><li> Unique PID (DOI, Handle, PURL, etc.). </li><li> Discoverable via web search engines </li></ul> <br> Accessible- <ul><li> Retrievable via a standard protocol (e.g., HTTP). </li><li> Free, open (e.g., download link). </li></ul><br> Interoperable- <ul><li> Metadata formatted in a standard schema (e.g.,  Dublin Core). </li><li> Metadata provided in machine-readable format (OAI feed). </li></ul><br> Reusable- <ul><li> Data include sufficient metadata about the data  characteristics to reuse </li><li> Contact info displayed if the direct assistance of the  author needed. </li><li> Clear indicators of who created, owns, and stewards the data. </li><li> Data are released with clear data usage terms (e.g., a  CC License). </li></ul></p> |

**Document**

| **CURATE Action** | **Curator Checklist** |
| :------------- | :------------- |
| <p> **Document** throughout curation activities. <br><ul><li>Record all necessary information capturing who did what to the dataset and when </li></p> | <p><ul><li> Accessioning & deposit records (Names, dates,  contact information, submission agreements, etc) </li><li> Repository collection metadata </li><li> Provenance logs </li><li> Service workflow </li><li> Preservation packaging </li><li> Any additional requirements at your institution </li></ul></p> |
