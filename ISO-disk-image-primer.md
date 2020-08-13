![](DCNlogo.png)

# ISO Disk Image Primer

## Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| File Extensions | .iso |
| MIME Type | CD-ROM: application/x-iso9660-image <br> CD-ROM or CD-R: application/x-iso <br> 13490-image <br> DVD/Blu-Ray: application/x-iso13346-image |
| Structure | Binary file |
| Versions | n/a |
| Primary fields or areas of use | .iso can exist in every field of research where data and associated executable programs have been historically distributed on optical discs (CD, DVD,
etc.) |
| Source and affiliation | Name derived from ISO 9660 file system used with CD-ROM media |
| Metadata | n/a |
| Key questions for curation review | |
| Tools for curation review | Bitcurator<sup>1</sup>, Tree<sup>2</sup>, FRED machine |
| Date Created | 2020 |
| Created by | Kate Barron (Stanford University) <br> Jonathan Bohan (Cornell Institute for Social and Economic Research) <br> **Mentor**:Cynthia Hudson-Vitale (Pennsylvania State University) |
| Date updated and summary of changes made | n/a |

<p  id="note1"><sup>1</sup> See https://confluence.educopia.org/display/BC/BitCurator+Environment </p>

<p  id="note1"><sup>2</sup> Command to produce a recursive directory listing; see https://en.wikipedia.org/wiki/Tree_(command) </p>


**Suggested Citation:** Barron, Kate and Jonathan Bohan. (2020). ISO Disk Image Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

This work was created as part of the “Specialized Data Curation” Workshop #3 held at Washington University in St. Louis in St. Louis, MO on November 5-6, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

**Table of Contents**

[Description of format](#description-of-format)  

[Examples](#examples) 

[Sample data set citations](#sample-data-set-citations) 

[Key questions to ask yourself](#key-questions-to-ask-yourself) 

[Key clarifications to get from researcher](#key-clarifications-to-get-from-the-researcher) 

[Applicable metadata standard, core elements and readme requirements](#applicable-metadata-standard-core-elements-and-readme-requirements)

[Resources for reviewing data](#resources-for-reviewing-data) 

[Software for viewing or analyzing data](#software-for-viewing-or-analyzing-data) 

[Preservation actions](#preservation-actions) 

[What to look for to make sure this file meets FAIR principles](#what-to-look-for-to-make-sure-this-file-meets-fair-principles) 

[Ways in which fields may use this format](#ways-in-which-fields-may-use-this-format) 

 # Description of Format

.iso is the most common optical disk imaging format of about 250 known to exist.<sup>3</sup> The most 3 common type of iso is based on the ISO-9660 standard (see above for variants).<sup>4</sup> Because 4 optical compact disks are susceptible to physical degradation, .iso disk images help ensure continued access to their data and applications.

ISO images are exact duplicates of data from the original optical disc. The Library of Congress states, “ISO image files, unlike normal files, are not opened but rather are mounted. ISO image files contain the data contents of every written sector of an optical disc, including the optical disc file system if one is present. Thus it is a media-independent version of a media-dependent format. However, for playback or exploitation of the content, the dependencies on players (including CD and DVD players), operating systems, rights-related technical protection systems, and other software remain, just as they do for the original (or to-be-produced) physical disk."<sup>5</sup>

In other words, ISO files must be mounted as a drive rather than “opening” the file; as such, the ISO file retains the same operating system requirements as the original disk. This requirement suggests the use of virtual machines when the necessary operating system becomes outdated.

<p  id="note1"><sup>3</sup> See https://web.archive.org/web/20191206190008/https://fileinfo.com/filetypes/disk_image and
https://web.archive.org/web/20191206190101/http://fileformats.archiveteam.org/wiki/Disk_Image_Formats
for two partial format lists.
</p>

<p  id="note1"><sup>4</sup> “ISO 9660:1988(en) Information processing — Volume and file structure of CD-ROM for information
interchange,” accessed at https://www.iso.org/obp/ui/#iso:std:iso:9660:ed-1:v1:en. Accessed 6 DEC
2019 </p>

<p  id="note1"><sup>5</sup> 
“ISO Disk Image File Format,” in Sustainability of Digital Formats: Planning for Library of Congress
Collections. Accessed 6 DEC 2019 at
https://www.loc.gov/preservation/digital/formats/fdd/fdd000348.shtml and saved to
https://web.archive.org/web/20191206181751/https://www.loc.gov/preservation/digital/formats/fdd/fdd000
348.shtml. </p>

# Examples

INSROP GIS Software and database: https://doi.pangaea.de/10.1594/PANGAEA.869203

The Essential Guide for Openoffice.org 2004: https://archive.org/details/OPENOFFICEORG

# Sample data set citations

Kittel, T.G.F., N.A. Rosenbloom, T.H. Painter, D.S. Schimel, H.H. Fisher. A. Grimsdell, VEMAP Participants, C. Daly, and E.R. Hunt. 2012. VEMAP 1: Model Input Database CD-ROM ISO Image . ORNL DAAC, Oak Ridge, Tennessee, USA. https://doi.org/10.3334/ORNLDAAC/566

STRATAGEM Partners (2002): Compilation of results of the STRATAGEM project as ISO-image
of the final CD-ROM. PANGAEA, https://doi.org/10.1594/PANGAEA.441533

# Key questions to ask yourself

- What was the purpose of maintaining the optical disk structure? Is it necessary to access the data? Are researchers better served by supplying the individual files?

- Do all executable files open in current operating systems or are earlier versions necessary? Can these earlier versions be easily accessed by researchers (as through virtual machines)?
 
- Will software to access the files continue to be available for the foreseeable future? 

- Are instructions for the disk’s use necessary? Can they be distributed separately from the source disk?

# Key clarifications to get from the researcher

- What are the operating system requirements of the original disk?

- What other software is necessary to mount and/or access the original disk’s content?

# Applicable metadata standard, core elements and readme requirements

The README ideally should include the file structure of the disk (see *TREE command* below); a
listing of software necessary to use the disk; and any known necessary workarounds to access
the materials (use of emulators, etc.).

# Resources for reviewing data

Bitcurator<sup>6</sup> is a project designed for data librarians and other “collecting professionals” to incorporate the functionality of many data forensics tools.

Features of BitCurator include:

- Pre-imaging data triage

- Forensic disk imaging

- File system analysis and reporting

- Identification of private and individually identifying information

- Export of technical and other metadata<sup>7</sup>

Accessing mounted images can “impose a number of technical limitations,” such as potential
“security risks on the host due to virus infections present on the imaged system.”<sup>8</sup> The forensic capabilities of BitCurator can help and identify these hidden pitfalls, as well as other “hidden” files such as deleted files which are not visible but still recoverable.<sup>9</sup>

Please note that BitCurator requires Ubuntu and is ideally set up on a dedicated machine. For organizations with a small number of disk images to archive, this may not be feasible, but for those with large collections, a dedicated Ubuntu machine may save quite a bit of time in navigating through the disks.

For those organizations with very large collections of physical disks, a *FRED Digital Forensics*

*Workstation* may be helpful. These are very powerful workstations designed specifically for digital forensics and may do more than is necessary for many archives but can speed up the process of reviewing the discs manually.<sup>10</sup>

The *TREE command* can be used to display a graphical directory tree structure which can be incorporated into your README file.<sup>11</sup><sup>12</sup><sup>13</sup> The *TREE command* can be used in a command-line interface (CLI).<sup>14</sup>

Jennifer Thoegersen<sup>15</sup> provides concise *TREE command* instructions for Windows and Mac users:

FOLDER STRUCTURE PRINTOUT

Here is how we create a text file printout containing the folder structure (and all the files
contained in the folders) of a data set.

INSTRUCTIONS FOR WINDOWS

1. In Windows File Explorer, navigate to the top-level folder of the data set.
2. While holding the Shift key, right-click on the folder and select “Open command window here” from the menu.
3. Type tree /f /a > tree.txt and press Enter.
4. A text file called tree.txt will be created in the current folder, which you can then open and print.

INSTRUCTIONS FOR MAC

1. Open Finder.
2. Go to Applications → Utilities, and then select Terminal. A command terminal will open.
3. Type cd in the terminal.
4. In Finder, navigate to the folder containing the data set.
5. Select the data set folder, and drag and drop it into the terminal window. This will make the full path to the data set appear on the command line. The full command should be
6. cd full/path/to/dataset
7. Press Enter.
8. Type find . -print | sed -e ‘s;[^/]*/;|--;g;s;--|; |;g’ > tree.txt and press Enter.
9. A text file called tree.txt will be created in the current folder, which you can then open and print.

<p  id="note1"><sup>6</sup> BitCurator, accessible at http://bitcurator.net/bitcurator/, reviewed 7 FEB 2020 </p>

<p  id="note1"><sup>7</sup> Ibid. </p>

<p  id="note1"><sup>8</sup>  Woods, Kam, Christopher A, Lee, and Simpson Garfinkel. “Extending Digital Repository Architectures to Support Disk Image Preservation and Access.” In JCDL '11: Proceedings of the 11th Annual International ACM/IEEE Joint Conference on Digital Libraries. June 2011, p. 58. Accessed at https://doi.org/10.1145/1998076.1998088, reviewed 25 JUNE 2020. </p>

<p  id="note1"><sup>10</sup> See https://digitalintelligence.com/products/fred/ for more information. </p>

<p  id="note1"><sup>11</sup> See https://web.archive.org/web/20200207134128/https://jpsoft.com/help/tree.htm and
https://web.archive.org/web/20190413191824/https://www.digitalcitizen.life/how-export-directory-tree-fold
er-windows for further instructions on using the TREE command on Windows. </p>

<p  id="note1"><sup>12</sup> See https://rschu.me/list-a-directory-with-tree-command-on-mac-os-x-3b2d4c4a4827 for further instructions on using the TREE command on Mac OS. </p>

<p  id="note1"><sup>13</sup> See https://www.geeksforgeeks.org/tree-command-unixlinux/ for further instructions on using the TREE command on Linux. </p>

<p  id="note1"><sup>14</sup> See https://www.w3schools.com/whatis/whatis_cli.asp </p>

<p  id="note1"><sup>15</sup> Thoegersen, J. (2017). Just-in-time data management consultations. In L.R. Johnston (Ed.) Curating research data volume two: A handbook of current practice (pp.89). Chicago, IL: Association of College and Research Libraries. Retrieved from the University of Minnesota Digital Conservancy, http://hdl.handle.net/11299/185335. </p>

# Software for viewing or analyzing data

Windows 8 and later has the built-in ability to mount ISO disk images. They will appear as a new drive in File Explorer. Older versions of Windows will require use of a third-party application like WinCDEmu<sup>16</sup> . In Mac OS X, DiskImageMounter is the standard utility for mounting disk images.

<p  id="note1"><sup>16</sup> Available for download at https://download.cnet.com/WinCDEmu/3000-20432_4-10971940.html as of 15 JAN 2020. Note that WinCDEmu is compatible with Windows XP and later operating systems, those with older systems (or non-Windows systems) will need to find alternatives. </p>

# Preservation actions

In “You’ve Got to Walk Before You Can Run,”<sup>17</sup> Ricky Erway of OCLC lays out eleven technical steps for readable media. Because this primer focuses on preserving/curating the ISO itself (as opposed to preserving optical media using .iso), we only include the steps that apply to preserving disk images:

6. Generate a copy of the disk directory information (file names, sizes, extensions, and dates).
7. Generate and record a checksum (a unique value based on the contents of a file) on the disk image.
8. Create a readme file containing pertinent information from the above steps, indicating the related analog materials<sup>18</sup> and documenting each step taken.
9. Copy the project directory to trustworthy archival storage where it will receive regular backup, with a copy stored in another location.
...
11. Create or update an associated finding aid, collection level record, or accession record with information about the steps that were taken and the location of the files.

<p  id="note1"><sup>17</sup> Erway, Ricky. “You’ve Got to Walk Before You Can Run: First Steps for Managing Born-Digital Content Received on Physical Media.” OCLC Research, 2012, p.5. Accessed at https://web.archive.org/web/20200221155310/https://www.oclc.org/content/dam/research/publications/library/2012/2012-06.pdf 21 Feb 2020. </p>

<p  id="note1"><sup>18</sup> Note that if you retain a copy of the original physical media, you should store a printout of this readme file with the physical copy (along with a printout of the disk directory information). </p>

# What to look for to make sure this file meets FAIR principles

A significant challenge to reuse may be one’s access (or lack thereof) to a physical or virtual machine that is compatible with the disk image. Can an average user be expected to have all the software needed to access the files on the disk? Should the archive be expected to maintain emulators to access older executable files? Are there licensing issues in providing older software for ease of access?


# Ways in which fields may use this format

When the file structure of data originally distributed on optical disks needs to be maintained due to the presence of executable files or for other contextual reasons. These reasons should be spelled out in the documentation or readme file presented along with the disk image.

