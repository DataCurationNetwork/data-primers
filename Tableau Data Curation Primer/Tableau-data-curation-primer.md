![](DCNlogo.png)

# Tableau Primer

# Summary or Format Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| File Extensions | <p> .twbx <br> .twb </p> |
| MIME Type | application/twbx application/twb |
| Structure | <ul><li> .twb: proprietary XML format that contains references to an external data source file. </li><li> .twbx: proprietary compressed package of files that includes a data source file (tabular), .twb (XML), and any accessory files for producing the Tableau workbook (e.g., images). |
| Versions | [Tableau Desktop 2019.2](https://perma.cc/MXM7-E7BZ) (current as of 2019-09-06) |
| Primary fields or areas of use | business intelligence, though increasingly across many disciplines |
| Source and affiliation | [Tableau](https://perma.cc/7VES-77HK) is proprietary software. In 2019, Tableau Software was acquired by [Salesforce](https://perma.cc/EH65-7ZSN). |
| Metadata | Metadata can be modified or extended for use in a Tableau workbook. Use [Tableau Catalog](https://perma.cc/5VA4-FMDY), a Data Management Add-on, to get a complete view of the data being used in Tableau. |
| Key questions for curation review | <ul><li> Can the Tableau workbook file be opened? </li><li> If the Tableau workbook is provided as a .twb file, is there an accompanying data source file or data extract? </li><li> Is there documentation for how to navigate and work with the Tableau workbook? </li><li> Is there an accompanying snapshot to show how a workbook, dashboard, or story view should be rendered? |
| Tools for curation review | <p> [Tableau Desktop](https://perma.cc/C655-UDH2) (licensed) <br> [Tableau Reader](https://perma.cc/8S6G-99B7) (free) <br> XML editor/viewer <br> Data source native software (e.g., Excel) </p> |
| Date Created | 2019-09-06 |
| Created by | <p> Christine Malinowski (cmalin@mit.edu) <br> Trisha Adamus (adamus@wisc.edu) </p> |
| Date updated and summary of changes made | <p> 2019-11-15 draft primer completed <br> (updated links, fleshed out all sections) </p> |
  
**Suggested citation:** Malinowski, Christine, & Adamus, Trisha (2019). Tableau Primer, v.1.0, [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

This work was created as part of the “Specialized Data Curation” Workshop #2 held at Johns Hopkins University in Baltimore, MD on April 17-18, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

# Table of Contents

**Summary**

[Description of Format](#description-of-format)

[Examples with sample data set citations](#examples-with-sample-data-set-citations)

[Key questions for curation review](#key-qustions-for-curation-review)

[Applicable metadata standard, core elements, and README requirements](#applicable-metadata-standard)

[Resources or Software for viewing or analyzing data](#resources-or-software-for-viewing-or-analyzing-data)

[Preservation actions](#preservation-actions)

[What to look for to make sure this file meets FAIR principles](#what-to-look-for-to-make-sure-this-file-meets-fair-principles)

[Ways in which fields may use this format](#ways-in-which-fields-may-use-this-format)

[Documentation of curation process](#documentation-of-curation-process)

[This primer as a living document](#this-primer-as-a-living-document)

[Appendix A: filetype CURATED checklist](#appendix-a)

[Appendix B: Other Tableau file formats](#appendix-b)

[References and Resources](#references-and-resources) <br>
  > [General Tableau resources](#general-tableau-resources) <br>
  > [Tableau Desktop components](#tableau-desktop-components) <br>
  > [Tableau how to’s](#tableau-how-to) <br>
  > [Data curation general resources](#data-curation-general-resources)

 # Description of Format

 ***Overview.*** Tableau Software is a proprietary [suite of products](https://perma.cc/6XJU-R2ZH) for data exploration, analysis, and visualization with an initial concentration in business intelligence. This primer focuses on the Tableau workbook files – .twb and .twbx – produced using [Tableau Desktop](https://perma.cc/C655-UDH2). Like Microsoft Excel, Tableau Desktop uses a workbook and sheet file structure. Workbooks can contain worksheets, dashboards, and stories.

  - **Worksheets** are single views (e.g., tables, maps, charts, etc.) of data built by dragging and dropping fields onto “column and row shelves” that define the structure of the visualization and “marks cards” that add contextual detail (e.g., color representation). See ​[More information on specific Tableau Desktop components​]( )​.

  - **Dashboards** combine multiple worksheets or views into a single view arrangement.

  - **Stories** are a sequence of dashboards that are linked together to provide a multi-dashboard narrative.

***Tableau workbooks (.twb)***: Tableau workbooks contain one or more worksheets and may additionally contain dashboards and stories. Tableau workbooks do not contain any data and require a data source file to render the created workbook views.

***Tableau packaged workbooks (.twbx)*** are single zip files that contain a workbook (with worksheets, dashboards, and stories) as well as any supporting local file data and images. Packaged workbooks are intended for sharing as, instead of linking to a data file source, it contains a copy of the data obtained when the workbook was created.

Tableau Desktop is backwards compatible, meaning that Tableau workbook files (both .twb and .twbx) created in an older version of Tableau Desktop may be upgraded and opened by a newer version of Tableau Desktop, but a workbook file created with a newer version of Tableau Desktop cannot be downgraded and opened with an older version.

While .twb and .twbx files are the main shareable output of Tableau workbooks, there are additional file formats which can be associated with Tableau projects (See [Appendix B​]( )​).

# Examples with sample data set citations

|  Example Tableau project | Sample data set citation  |
| :------------- | :------------- |
| [Side Effects of Medicinal Drugs](https://public.tableau.com/en-us/gallery/side-effects-medicinal-drugs) | Lafosse, Simon, 2019, “Side Effects of Medicinal Drugs,” https://public.tableau.com/en-us/gallery/side-effects-medicinal-dru gs, Tableau Public. |
| [Data Visualization of US Wildfire 1992 - 2015](https://zenodo.org/record/1242654#.XerPlHdFyUk) | Li, Yi, 2018, “Data Visualization of US Wildfire 1992 - 2015,” https://doi.org/10.5281/zenodo.1242654, Zenodo |
| [89 DJs at Ultra Music Festival 2015](https://zenodo.org/record/806207#.XerPzHdFyUk) | Steen Andersen, Jesper, 2017, “Data and scripts for 89 DJs at Ultra Music Festival 2015,” http://doi.org/10.5281/zenodo.806207, Zenodo |

The Tableau Public Gallery, https://public.tableau.com/en-us/gallery/, includes additional examples.

# Key questions for curation review

- Can the Tableau workbook file be opened?
 - What version of Tableau Desktop is required to open the Tableau project
 - Do I need to upgrade the file version to read it?
 - Is the Tableau workbook available publicly?

- If the Tableau workbook is provided as a .twb file, is there an accompanying data source file (e.g., .xls, .csv, tdsx) or data extract (.tde or hyper)?

- Is there documentation for how to navigate and work with the Tableau workbook?
 - See [Section 4.0]( ) for more information on README requirements.

- Is there an accompanying snapshot (e.g., screenshot, exported PDF) to show how a workbook, dashboard, or story view should be rendered?

# Applicable metadata standard, core elements, and README requirements

**Metadata**

The original data source metadata cannot be modified using Tableau. Metadata can be modified or extended for use in a Tableau workbook. Use [Tableau Catalog](https://perma.cc/5VA4-FMDY), a Data Management Add-on, to get a complete view of the data being used in Tableau. Data owners can automatically track information about the data (i.e., metadata), including user permissions, usage metrics, and lineage.

**README requirements**

In addition to basic README components as defined by Cornell Research Data Management Service Group’s "[Guide to writing ‘readme’ style metadata](https://perma.cc/CST5-26KM)" <br> (https://data.research.cornell.edu/content/readme#recommendedcontent), a Tableau workbook README should include:

- Tableau Desktop version from which the workbook was created

- Description of the worksheets, dashboards, and/or stories within the workbook
 - Name of sheet
 - Intended purpose of sheet

- Workbook data source information
 - If there are linked, external data sources, the file name(s) and locations in relation to the workbook (data source files should be shared with a .twb workbook)
 - If there is an included data extract (.tde or .hyper), information on the creation of the extract (e.g., subsetting parameters, if applicable)
 - Information on the original source data from which the linked data source or data extract came from (e.g., creator, location, availability, etc.)
 - data security requirements or access restrictions of extracts or linked data sources

# Resources/Software for viewing or analyzing data

For those unfamiliar with Tableau, there’s a series of [free training videos](https://perma.cc/82PU-8V5J).

Tableau workbooks can be opened and interacted with using:

- **Tableau Desktop** (https://www.tableau.com/products/desktop) is a native proprietary software for the .twb and .twbx file formats.

- **Tableau Reader** (https://www.tableau.com/products/reader) is a free desktop application for opening and viewing Tableau workbooks in .twbx format. Tableau Reader does not support live connections to data sources and will not be able to open a .twb file. Note, Tableau Desktop is backwards compatible, meaning that Tableau workbook files (both .twb and .twbx) created in an older version of Tableau Desktop may be upgraded and opened by a newer version of Tableau Desktop, but a workbook file created with a newer version of Tableau Desktop cannot be downgraded and opened with an older version.

- **Tableau Viewer** (https://www.tableau.com/products/viewer) is a role-based license option on Tableau Server that allows users to interact with Tableau workbook content without putting the security of the underlying data at risk. Given the specific role of this resource for partitioning views of the data, this is not likely to be an appropriate tool for interacting with Tableau data during the curation process.

As the Tableau workbook (.twb) is a XML-structured format, the file can be opened with any XML-compatible viewer or editor to review the source XML code.

A Tableau packaged workbook (.twbx) can be unpackaged to access the Tableau workbook file (.twb) and a folder that contains the data sources and accessory materials (e.g., images). To unpackage the workbook on a Windows or macOS machine, replace the .twbx extension with .zip and double-click the .zip file to unpackage it. A data source can then be opened with its native or a complementary program (e.g., Excel or text editor for .csv). ​​[More information on packaged workbooks](https://help.tableau.com/current/pro/desktop/en-us/save_savework_packagedworkbooks.htm).

Data extracts (.tde and .hyper) may be opened and reviewed using Tableau Desktop. Note, the version of Tableau Desktop may impact the readability of the extract format with the introduction of .hyper in version 10.5. Information on compatibility of an extract and extract upgrades can be found in the Tableau documentation at: https://help.tableau.com/current/pro/desktop/en-us/extracting_upgrade.htm​. Within Tableau Desktop, you can then export a data extract to .csv. Currently, there isn’t a public API to read from Tableau-native extracts.

- [More information on data extracts (.tde)](https://perma.cc/G2QA-CNSQ)

- [More information on data extracts (.hyper)](https://perma.cc/7GXG-RMAH)

- [Compatibility information regarding .hyper, .tde, and versions of Tableau Desktop](https://help.tableau.com/current/pro/desktop/en-us/extracting_upgrade.htm)

# Preservation actions

Tableau workbook files are a proprietary format. That said, there are advantages to keeping data files generated in Tableau Desktop in their original .twb and .twbx formats; it maintains the overlying exploration and analysis actions performed on the source data (e.g., calculated fields, dynamic data views).

To save the data modified in Tableau, data may be exported to an excel spreadsheet and saved as a .csv file. The documented process can be found here:

https://kb.tableau.com/articles/HowTo/exporting-in-excel-file-format

To save the Tableau views, static images of the dashboard can be saved as PDF files and exported. The documented process can be found here:

https://help.tableau.com/current/pro/desktop/en-us/save_export_image.htm

# What to look for to make sure this file meets FAIR principles

The FAIR principles emphasize machine-actionability of digital assets. (i.e., the capacity of computational systems to find, access, interoperate, and reuse data with none or minimal human intervention).

**Findable:** Tableau workbook files are proprietary and do not include a globally unique and persistent identifier when created. Extra steps will be needed to create an identifier and deposit the Tableau workbook files in an open repository to satisfy this principle.

**Accessible:** Tableau workbook files may contain data which should not be broadly shared outside of the institution. In these instances, these access caveats should be clearly identified and contact information should be provided to discuss access to the data

**Interoperable:** Datasets used to create Tableau workbook files should be clearly identified and described, providing controlled vocabularies, ontologies, and thesauri when applicable.

**Reusable:** If not included in the non-proprietary version of the visualization, the Tableau metadata needs to describe the scope of the data, parameters of data collections, and ensure that all variable names are explained or self-explanatory.

# Ways in which fields may use this format

***Tableau use.*** Tableau visualizations have origins in business intelligence though their use has expanded throughout the private and academic sectors. Tableau applications mainly fall into two categories:

- **exploration of data** through visualizations and filtering/subsetting of data, and

- **communication of specific data narratives** via individual dynamic visualizations, dashboards, or multi-panel visualization stories.

Tableau is often used for:

- sales or transaction-based data

- administrative data

- survey data (see information on reshaping survey data below)

Note, while Tableau Desktop does have mapping capabilities, other GIS tools may provide more robust mapping options.

***Ideal data source structure.*** Tableau is optimized for well-structured, transactional data where each field/variable has its own column and each unique data point is in its own row. Tableau is database oriented, working on Dimensions (qualitative values) and Measures (numeric, quantitative values), and the ideal data source structure tends to be tall/thin (many rows, less columns) rather than short/wide (less rows, more columns).

- [Information on Dimensions and Measures](https://help.tableau.com/current/pro/desktop/en-us/datafields_typesandroles.htm)

- [Information on reshaping (survey) data for Tableau](https://perma.cc/QQL6-7SKL)

# Documentation of curation process

During the curation process, it’s important to include:

- Tableau (Desktop/Reader) versions used in the review of files, and

- Information on changes made between versions or file formats (e.g., converting .tde to .hyper data extract or upgrading a .twb or .twbx to a newer Tableau Desktop version), including software versions used.

# This primer as a living document

This primer is intended as a living document, one that should be regularly evaluated and revised as it is tested and used in the curation process. The initial draft aimed to demystify the Tableau formats for curators that may increasingly encounter them. It is expected that revisions will be needed as additional needed clarifications are flagged, updates are made to the Tableau formats and products, and curation workflows are tweaked.

# Appendix A: filetype CURATED checklist

The following CURATED checklist model is based on the Digital Curation Network’s standardized set of C-U-R-A-T-E-D steps https://datacuration.network/outputs/workflows/.

**Check** files and read documentation
- View the files in Tableau desktop and Tableau Public to see the files in their native formats.

**Request** missing information or changes

**Augment** metadata for findability
- Enhance Tableau Catalog metadata to include DOIs for findability.

**Transform** file formats for reuse
- Data can be exported into .csv files, if modified from original.
- Tableau views may be saved as PDF files.

**Evaluate** for FAIRness, taking into account FAIR principles as described in section “What to look for to make sure this file meets FAIR principles”.

**Document**
- Remember to record actions taken during the curation process.

# Appendix B: Other Tableau file formats

  1. **Bookmarks (.tbm):** A snapshot of a single worksheet, bookmarks can be accessed from any workbook. Opening a bookmark in a workbook will add the worksheet to the workbook in the state it was at the time of the bookmark’s creation. Bookmarks are useful when you have specific worksheets that you use often.

  2. **Extract (.hyper or .tde):**  ​Tableau data extracts are compressed snapshots of data, either a subset or the entire data set, that you can use to share data with others or to work offline. Starting with version 10.5, extracts now use the .hyper format, which allows for the creation of larger extracts that perform more efficiently when interacting with views. Prior to version 10.5, data extracts use the .tde format. Specific information on .hyper conversions and compatibility can be found in the [Tableau Hyper Support Resources​.](https://perma.cc/7GXG-RMAH)

  3. **Data source (.tds):** Tableau data source files do not contain actual data. Instead, it contains the information needed to connect to the data source (e.g., data source type, ​database server address, port, location of local files, tables) ​as well as any modifications made on top of the data such as changed default properties, created groups, and calculated fields.

  4. **Packaged Data Source (.tdsx):**  ​A packaged data source is a single zip file that contains all the information of the data source file (.tds) as well as a copy of any local-based data (e.g., Excel files, Access files) or extracts (.tde or .hyper). This format can be used to create a single file to share data with those that may not have access to the original underlying data

For more information on the Tableau file types, see the [Tableau documentation](https://help.tableau.com/current/pro/desktop/en-us/environ_filesandfolders.htm).

# References and Resources

### General Tableau resources

  “How People Use Tableau.” Accessed August 22, 2019.

  > https://www.tableau.com/solutions

  “Salesforce Completes Acquisition of Tableau | Tableau Software.” Accessed August 21, 2019.

  > https://perma.cc/P94J-VQKT.

  “Tableau File Types and Folders - Tableau.” Accessed May 14, 2019.

  > https://help.tableau.com/current/pro/desktop/en-us/environ_filesandfolders.htm.

  “Understanding Tableau Data Extracts.” Tableau Software. Accessed September 6, 2019.

  > perma.cc/G2QA-CNSQ.

  “Workbook Version Compatibility - Tableau.” Accessed September 5, 2019.

  > https://help.tableau.com/current/pro/desktop/en-gb/publish_version_compatibility.htm.
 
### Tableau Desktop components

  “Dimensions and Measures, Blue and Green - Tableau.” Accessed September 6, 2019.

  > https://help.tableau.com/current/pro/desktop/en-us/datafields_typesandroles.htm.

  “Shelves and Cards Reference - Tableau.” Accessed September 6, 2019.

  > https://help.tableau.com/current/pro/desktop/en-us/buildmanual_shelves.htm.

  “Workbooks and Sheets - Tableau.” Accessed September 5, 2019.

  > https://help.tableau.com/current/pro/desktop/en-us/environ_workbooksandsheets.htm.

### Tableau how to’s

  “Exporting in Excel File Format.” Accessed October 29, 2019.

  > https://kb.tableau.com/articles/HowTo/exporting-in-excel-file-format

  “Export Views and Workbooks.” Accessed October 29, 2019.

  > https://help.tableau.com/current/pro/desktop/en-us/save_export_image.htm

  “Managing Metadata.” Accessed August 22, 2019.

  > https://www.tableau.com/learn/tutorials/on-demand/managing-metadata

  “Reshaping Survey Data for Tableau.” The Data School (blog), October 24, 2016

  > https://www.thedataschool.co.uk/peter-silvester/reshaping-survey-data-tableau/.

### Data curation general resources

  “The FAIR Guiding Principles for scientific data management and stewardship.” Accessed August 22, 2019.

  > https://www.nature.com/articles/sdata201618

  “FAIR Principles.” Accessed August 22, 2019.

  > https://www.go-fair.org/fair-principles/

  “Our workflow.” Digital Curation Network, Accessed November 13, 2019.

  > https://datacurationnetwork.org/resources/resources-2/.

