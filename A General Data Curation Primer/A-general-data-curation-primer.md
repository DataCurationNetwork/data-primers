![](DCNlogo.png)

# A general data curation primer for databases 

This primer is intended as a general introduction to curation of databases commonly used for research. It can also serve as a template for primers about a specific database platform. It largely follows the structure of the existing primer on <ins>Microsoft Access</ins>.

## Introduction to Database 

A database is an organized collection of data, generally stored and accessed electronically from a computer system. Most databases contain multiple tables, which may each include several different fields or columns. For example, a company database may include tables for products, employees, and financial records. Each of these tables would have different fields that are relevant to the information stored in the table.

Almost all the databases come with a Database Engine with a graphical user interface (GUI) and security features. The main components of a database include software, hardware, query language, database objects, such as tables, schemas, and procedures:
- Database engine or database server is a database management system where users can use the underlying software component to create, read, update, and delete data from a database. Examples: MS SQL Server, Claris FileMaker Server, and Oracle 12c; a database server can either be installed on a regular computer or a server computer, such as Windows or Windows Server and MacOS

-	Query language: structured query language (SQL) is used to communicate with database for accessing and retrieving records from database server. Examples: FileMaker query language, MS SQL 

-	Database schema: it is used to depict how tables are related to each other structurally. Examples: snowflake or waterfall (Claris FileMaker)

-	Database entity-relationship model (ERD): it is a visual form of relational databases in chart or graph

-	Tables with the following components or properties:
    -	Columns or fields to list a type of data; rows or records that possess all or some of the properties listed in the columns
    -	Data type: string, number, date or Boolean (true or false)
    -	Primary key: a unique, but not null identification (ID) field to identify each record only by this key, for example employee ID, student ID
    -	Foreign key: a column or field, such as name, ID that can be used to related to another table; it would be the primary key in the other table
    -	Index, searchable such as primary key ID, foreign key ID for finding record easily; Index helps improve the database’s performance, this is especially helpful for searching records in large databases

## List of common databases for home, business, and research 

-	Claris FileMaker: https://www.filemaker.com/ <br> FileMaker Pro is a cross-platform relational database application from Claris International, a subsidiary of Apple Inc. It integrates a database engine with a graphical user interface and security features, allowing users to modify the database by dragging new elements into layouts, screens, or forms.

- IBM Db2: https://www.ibm.com/products/db2-database <br> Db2 is a family of data management products, including database servers, developed by IBM. They initially supported the relational model but were extended to support object-relational features and non-relational structures like JSON and XML. 

- MS  Access: https://products.office.com/en-us/access?rtc=1 <br> Microsoft Access is a database management system from Microsoft that combines the relational Microsoft Jet Database Engine with a graphical user interface and software-development tools. It is a member of the Microsoft Office suite of applications, included in the Professional and higher editions or sold separately. It is suitable for home and small business use. 

- MS SQL Server: https://www.microsoft.com/en-us/sql-server/default.aspx <br> Microsoft SQL Server is a relational database management system developed by Microsoft. As a database server, it is a software product with the primary function of storing and retrieving data as requested by other software applications—which may run either on the same computer or on another computer across a network.

-MySQL: https://www.mysql.com/ <br> MySQL is free and open-source software under the terms of the GNU General Public License and is also available under a variety of proprietary licenses. MySQL was owned and sponsored by the Swedish company MySQL AB, which was bought by Sun Microsystems (now Oracle Corporation). In 2010, when Oracle acquired Sun, the owner forked the open-source MySQL project to create MariaDB.

- Oracle Database: https://www.oracle.com/database/ <br> Oracle Database is a proprietary multi-model database management system produced and marketed by Oracle Corporation. It is a database commonly used for running online transaction processing, data warehousing and mixed database workloads.

- PostgreSQL: https://www.postgresql.org/ <br> PostgreSQL, also known as Postgres, is a free and open-source relational database management system emphasizing extensibility and technical standards compliance. It is designed to handle a range of workloads, from single machines to data 
warehouses or Web services with many concurrent users.

## Table: general information for common databases 

 ![](Gprimer1.JPG)
 
 ## Comparison of MS Access to other databases 
 
 The following table shows a structural layout for future databases primers. Again the <ins>MS Access primer</ins> is being used as a template. 
 
 ### Table for System Properties Comparison: MS Access vs. MS SQL Server
 
  ![](Gprimer2.JPG)
  
 **A similar table can be used in future primers to compare databases system properties:**
  
 - Table for System Properties Comparison MS Access vs. MySQL
  
 - Table for System Properties Comparison MS Access vs. PostgreSQL
  
 - Table for System Properties Comparison MS Access vs. Oracle DB
 
 - Table for System Properties Comparison MS Access vs. IBM Db2
  
 - Table for System Properties Comparison MS Access vs. FileMaker
 
 ## Two very important components from the MS Access primer are listed here for users’ reference:
 
 **Key questions to ask yourself**
 
 - Is documentation about the columns included? I.e., a codebook. The codebook is especially critical to understand the relationships between the tables
 
 - Are the primary/foreign key relationships described? Exporting individual tables to a spreadsheet format does not keep these relationships so it is critical to document them (at least include an exported version of the Relationships diagram alongside the exported tables).
 
 - How easily could this database be exported into flat CSVs? The answer will depend on the above points
    - If exporting is easy i.e., if there are no relationships between tables and there is no embedded code or forms that are integral to the purpose of sharing the dataset. Suggest simply exporting it rather than archiving the database itself, since the database adds no particular functionality.
 
 - Is the data contained in the database sourced from somewhere else?
     - It could be that the database was used to organize other data.
     - If the data is available elsewhere, it might be that it is in a more “FAIR” (Findable, Accessible, Interoperable, and Reuse) format there and it would be worth pointing that out in the metadata.
     
 -	What version of the database platform/Access was used?
     - Most of the time, this will not be stated so you will just have to try to open it and see if it works.
     
- Is your version of database platform/MS Access secure?
     - Make sure options to disable macros and other code from executing automatically is disabled since you do not know if the dataset could be malicious. The default of newer versions of Access is to disable such functionality.
 
 **Key clarifications to get from researcher**
 
 Very useful clarifications
 
 - For data entry databases with forms, a description of the data entry workflow would help with understanding the underlying database structure
      - What is the main entry form? Where does the entry workflow start? Etc.
      
 - Documentation of the meaning of the relationships in the database, not just which relationships exist (the latter can simply be obtained via the Relationship Diagram which is auto generated by Access)
 
 - Is the data available natively in a non-Access format elsewhere?
 
**Nice-to-have clarifications** 

- Documentation description of database table fields, ideally within the database design metadata.

- Documentation of macros and modules, ideally as comments within the code.

- What version of Access was used?

- Which tables and/or queries do specific results from the paper come from (in cases where the database is specifically associated with a publication)?

## <ins>MS Access Primer</ins> starts here.

This section lists the headings and topics used in the MS Access primer, which can be used as a basis for primers of other databases.

1.	Outline

2.	Overview <br> This primer describes the curation of [chosen database platform] files.

3.	Description of Format

4.	Examples <br> Common use cases and dataset examples.

5.	Dataset Examples

6.	Viewing <br> Information about viewing dataset with older or newer version of the software. 

7.	Key questions to ask yourself <br> List of important questions to ask for best data curation practices. 

8.	Key clarifications to get from researcher <br> List of very useful clarifications

9.	Applicable metadata standard, core elements and readme requirements

10.	Preservation/General practice for long-term preservation of database data <br> (See the MS Access primer as a model for content that could be applied to these sections)

- Exporting Tables and Objects

- Database Documenter

- Linked Tables

- ICPSR Recommendations

11.	What to look for to make sure this file meets FAIR principles

12.	Unresolved Issues/Further Questions

13.	Documentation of curation process: What do you capture from curation process?

14.	Bibliography

- Carpentry SQL discussion, such as <ins>SQL databases and R</ins>, <ins>Data Management with SQL for Ecologists</ins>, and <ins>Data Management with SQL for Social Scientists</ins>

- Library of Congress has some good descriptions
      -	<ins>MDB</ins>, <ins>ACCDB</ins>

-	Database preservation: more advanced techniques that are platform-independent
      -	<ins>Database Toolkit</ins>
      - <ins>SIARD</ins> (Software Independent Archiving of Relational Databases)
      
-	<ins>Database Visualization Toolkit</ins>: Relational Database Viewer for databases based on SIARD 2

## 15. Appendix A – [Database platform] 

### CURATED checklist

Checklist of CURATED Steps Performed by the DCN



