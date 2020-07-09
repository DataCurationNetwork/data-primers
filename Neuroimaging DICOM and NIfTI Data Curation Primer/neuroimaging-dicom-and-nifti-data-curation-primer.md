![](DCNlogo.png)

# Neuroimaging DICOM and NIfTI Primer

## Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| FIle Extension | DICOM: .dcm; NIfTI: .nii (uncompressed), nii.gz (compressed)|
| MIME Type | application/dicom; image/nii |
| Structure | <ul><li>DICOM: A header with demographic information about the patient and metadata about the image(s), followed by image datasets.</li><li>NIfTI: Contains image dataset with an optional JSON file that contains metadata (if converted using dcm2niix).|
| Versions | NIFTI-1, NIFTI-2 (not bitwise compatible)|
| Primary fields or areas of use | Diagnostic medical imaging, medical informatics |
| Source and affiliation | <ul><li>NIfTI: The National Institute of Mental Health and the National Institute of Neurological Disorders and Stroke are joint sponsors of the initiative to define and maintain this format.</li><li>DICOM: The copyright for the DICOM Standard is held by the [National Electrical Manufacturers Association](https://www.nema.org/pages/default.aspx) (NEMA) on behalf of the DICOM Standards Committee, administered by the [Medical Imaging Technology Association](https://www.medicalimaging.org) (MITA)|
| Metadata standards |<ul><li>DICOM: Header consists of standardized series of tags</li><li>NIfTI: Header consists of standardized series of tags, but few relate to file administration (eg., owner/creator)</li><li>For general neuroimaging data: Brain Imaging Data Structure (BIDS)|
| Key questions for curation review |<ul><li>Has patient data been removed from the header of a DICOM file? </li><li>For high resolution structural images, have  facial features been removed from the images?</li><li>Has “burned-in” text been removed if PHI?</li><li>Are data in raw format? If not, has the researcher provided documentation of processing procedures?|
| Tools for curation review |<ul><li>Free software that can read DICOM header: Dicom Works, ImageJ</li><li>Free software that can open NIFTI headers and/or images: Mango, ImageJ, AFNI, MRIcron, MRIcroGL|
| Date Created | June 2020 |
| Created by |<p>**Authors:** <br> <ul><li>Michael Moore, University of Washington</li><li>Brandon Patterson, University of Utah</li><li>Sara Samuel, University of Michigan</li><li>Helenmary Sheridan, University of Pittsburgh</li><li>Chris Sorensen, Washington University in St. Louis <p><br> **DCN Mentor:** Joel Herndon, Duke University|
| Date updated and summary of changes made ||

**Suggested Citation:** Moore, Michael; Patterson, Brandon; Samuel, Sara; Sheridan, Helenmary; Sorensen, Chris. (2020). Neuroimaging DICOM and NIfTI Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

This work was created as part of the “Specialized Data Curation” Workshop #3 held at Washington University in St.Louis, MO on November 5-6, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

# Table of Contents

[Introduction](introduction)

[Curatorial pipeline](curatorial-pipeline)

[Description of format](description-of-format)

[Example datasets](example-datasets)

[Software for viewing data](software-for-viewing-data)

[Key curatorial considerations](key-curatorial-considerations)

[Preservation actions](preservation-actions)

[What to look for to make sure file meets Fair Principles](what-to-look-for-to-make-sure-file-meets-fair-principles)

[Ways in which fields may use this format](ways-in-which-fields-may-use-this-format)

[Documentation of Curation Process](documentation-of-curation-process)

[References](references)

# Introduction

Images of brains are essential for neuroscience research, but the complexity of the images and their associated data are a challenge to efficiently share and archive. The datasets are often large, consisting of many images, and researchers are interested in differing aspects of the data and images, from an entire set of images that create a “virtual brain” to just the metadata of particular types of scans. Curating these complex sources of data can be challenging, but this guide can help with curating a specific type of neuroimaging data: fMRI scans that are saved in either NIfTI or DICOM format. This guide includes a description of the formats, example datasets which you can view online, recommendations for software for viewing the data, key curatorial considerations, preservation actions, FAIR principles suggestions, ways to use the format and documentation of the curation process.

# Curatorial Pipeline

![]()

# Description of Format

Neuroimaging datasets used by researchers predominantly fall into two main file formats:

1. DICOM (Digital Imaging and Communications in Medicine), a ubiquitous and non-proprietary medical imagery format that facilitates communication and exchange across modalities and equipment manufacturers.

2. NIfTI (Neuroimaging Informatics Technology Initiative), a neuroimagery-specific format designed to support analysis beyond clinical workflow, developed from (and largely compatible with) an older format called ANALYZE.

Both formats offer their own respective pros and cons, and selecting between the two is largely dependent on the needs and niche of the end user. DICOM is complex, comprehensive, and highly specific to support needs across the entire spectrum of medical imaging and clinical workflows, while NIfTI is comparatively simple, minimalistic, and easy to support and better suited for research purposes (Li, 2016). Frequently, researchers will convert DICOM data output by a scanning instrument into NIfTI for analysis and dissemination.

## DICOM

**Extension: .dcm**

**Pros:**

- Ubiquitous international standard for medical imaging used across equipment manufacturers and modalities
- Highly detailed and descriptive header

**Cons:**

- Large file size hinders sharing
- Poorly suited to many popular image processing and analysis tools
- Contains information specific to a particular scan, which can include personally identifying health information

DICOM is the international standard (ISO 12052 “Health informatics — Digital imaging and communication in medicine (DICOM) including workflow and data management.”) for communication, access, and exchange of medical imaging, providing interoperability for care providers and researchers using medical imaging devices (scanners, servers, workstations, etc.) from different manufacturers. A pillar of modern radiological imaging, DICOM is inherently designed to support the spectrum of medical imaging needs by incorporating standards and protocols for many imaging modalities, including computed tomography (CT), magnetic resonance imaging (MRI), ultrasound, x-ray angiography, mammograms, and radiation therapy. Most imaging equipment exports directly to a DICOM file with a .dcm extension, though occasionally manufacturers opt for a proprietary version of the DICOM format with an alternate extension.

The standard was envisioned in the 1980s by the American College of Radiology (ACR) and the National Electrical Manufacturers Association (NEMA) to meet the combined needs of both care providers and equipment vendors. As digital technology blossomed through the 1980s and into the 1990s and early 2000s, DICOM has played a foundational role in establishing a widespread and non-proprietary data exchange protocol. Currently on version 3.0, the standard is revised annually by workgroups and committees to satisfy new and evolving needs of virtually any medical branch using medical imagery.

A foundational DICOM component is that the medical image should never be separated from key information about its creation. To accomplish that, DICOM data objects group image pixel data together with a header consisting of key public patient (name, age, sex, etc.), study (physician, study date, modality, etc.), and imaging (name of device, manufacturer, scanner settings, etc.) parameters into a consolidated dataset. This effectively embeds the most complete description of the procedure used into the image, similar to how a JPEG can be embedded with descriptive tags. This approach allows the image to effectively serve as its own description, and descriptive attributes can vary between imaging modalities. These public parameters are interoperable across manufacturer devices, though DICOM files may contain some proprietary private attributes as well.

![]()

Image pixel data can be compressed using various standards, including JPEG, lossless JPEG, JPEG-2000 and run-length encoding. However, due to the comprehensive and complex scope inherent in the format, DICOM file and dataset sizes can be a significant burden to data curators and a challenge to store in shared repositories. Each DICOM file is encoded as a single 2D slice rather than a comprehensive 3D image, meaning a single scan can result in dozens or hundreds of separate DICOM files to manage. Therefore, many neurological researchers prefer to convert DICOM files to the unified and comparatively simple NIfTI format to better support analysis and visualization.

## NIfTI

**Extension: .nii [uncompressed], nii.gz [compressed])**

**Pros:**

- Simpler and easier to manage than DICOM files
- Better suited to sharing and analysis

**Cons:**

- Strips away some metadata included in DICOM files
- Requires extra conversion step (May be completed by researcher or curator)

NIfTI is a neuroimaging-specific file format developed by the National Institutes of Health (NIH) in the early 2000s to improve on the previously-used ANALYZE format. NIfTI built on its predecessor by offering increased information storage for details like image orientation to avoid ambiguous interpretation and additional data type support. The format has had widespread adoption in the neuroimaging research community, benefiting the entire community by allowing researchers to adopt image processing, analysis, and visualization techniques and tools developed by colleagues in other teams and institutions (Li, 2016). The format is comprised of a header and uncompressed image data, either as separate files (.hdr and .img file formats, respectively) or combined into a unified .nii (uncompressed) or .nii.gz (compressed) file. In contrast to DICOM, which stores images in two-dimensional “slices,” NIfTI stores image data as a 3D image.

The 348-bit NIfTI header covers the technical parameters of the accompanying image, such as data scaling, slicing details, and axis information, as well as fields for brief description and naming. A detailed list of the included header elements can be found on the [Neuroimaging Informatics Technology Initiative’s Data Format Working Group page](https://nifti.nimh.nih.gov). NIfTI exists in two “flavors”: NIfTI-1 was updated in 2011 into a slightly extended version called NIfTI-2, and the two are not bitwise compatible. Both are used, but NIfTI-1 is much more common.

![]()

# Example Datasets

## DICOM

**MRI:** [https://www.dicomlibrary.com/?manage=02ef8f31ea86a45cfce6eb297c274598](https://www.dicomlibrary.com/?manage=02ef8f31ea86a45cfce6eb297c274598)

**CT:** [https://www.dicomlibrary.com/?manage=1b9baeb16d2aeba13bed71045df1bc65](https://www.dicomlibrary.com/?manage=1b9baeb16d2aeba13bed71045df1bc65)

## NIfTI

### INIA19 Primate Brain Atlas

**Link:** [https://www.nitrc.org/projects/inia19/](https://www.nitrc.org/projects/inia19/)

**Citation:** Rohlfing, T., Kroenke, C. D., Sullivan, E. V., Dubach, M. F., Bowden, D. M., Grant, K., & Pfefferbaum, A. (2012). The INIA19 template and NeuroMaps atlas for primate brain image parcellation and spatial normalization. Frontiers in neuroinformatics, 6, 27.

# Software for viewing data

The software packages described in this section include some of the most frequently-used programs that may be mentioned in a curatorial interview with a researcher, as well as some relatively simple programs that a curator may use to open and examine a DICOM or NIfTI file. This list is far from exhaustive, as researchers frequently adapt and share new tools suited to their own interests. In addition, many popular tools such as Dicom Works are no longer officially supported by their developers, but continue to be used in research settings.

## ImageJ

ImageJ is open source software written in Java and it runs on Windows, Mac OS X, and Linux systems. Imagej includes a number of DICOM plugins including Import DICOM Sequences, DICOM Rewriter (Anonymizer), and Query DICOM Header. ImageJ can open NIfTI files using the optional [NIfTI I/O plugin](https://imagej.nih.gov/ij/plugins/nifti.html).

**Link:** [https://imagej.nih.gov/ij/](https://imagej.nih.gov/ij/)

## Dicom Works, OsiriX, IrfanView

DICOM-viewing software can be divided into two main categories: proprietary viewers that are supplied with the medical imaging system; and third-party DICOM-viewing software for individual PCs. Dicom Works (no longer supported as of 2011), OsiriX, and IrfanView are popular all-format, non-proprietary image-viewers available for free (or low-cost) download.

**Links:** 
- [https://www.dicomworks.com](https://www.dicomworks.com)
- [https://www.osirix-viewer.com](https://www.osirix-viewer.com)
- [https://www.irfanview.com](https://www.irfanview.com)

## Adobe Photoshop

Adobe has developed a plug-in for Photoshop that makes it possible to view DICOM images and header information and export images to different file formats.

**Citation:** Mustra, M., Delac, K., & Grgic, M. (2008). Overview of the DICOM Standard. 50th International Symposium ELMAR-2008. [https://www.vcl.fer.hr/papers_pdf/Overview%20of%20the%20DICOM%20Standard.pdf](https://www.vcl.fer.hr/papers_pdf/Overview%20of%20the%20DICOM%20Standard.pdf) 

## Publication in progress. Your patience is appreciated.
