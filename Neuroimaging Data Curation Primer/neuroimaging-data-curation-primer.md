![](DCNlogo.png)

# Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| File Extensions| DICOM: .dcm; NIfTI: .nii (uncompressed), nii.gz (compressed)|
| MIME Type | application/dicom |
| Structure | <ul><li> DICOM: A header with demographic information about the patient and metadata about the image(s), followed by image data sets. </li><li> NIfTI: Contains image data set with an option JSON file that contains metadata (if converted using dcm2niix). |
| Versions | NIFTI-1, NIFTI-2 (not bitwise compatible) |
| Primary fields or areas of use | Neuroimaging |
| Source and affiliation | <ul><li>	NIfTI: The National Institute of Mental Health and the National Institute of Neurological Disorders and Stroke are joint sponsors of the initiative to define and maintain this format.</li><li>DICOM: The copyright for the DICOM Standard is held by the [National Electrical Manufacturers Association](https://www.nema.org/pages/default.aspx) (NEMA) on behalf of the DICOM Standards Committee, administered by the [Medical Imaging Technology Association](https://www.medicalimaging.org) (MITA) |
| Metadata standards | <ul><li>DICOM: Header consists of standardized series of tags</li><li>NIfTI: Header consists of standardized series of tags, but few relate to file administration (eg., owner/creator)</li><li>For general neuroimaging data: Brain Imaging Data Structure (BIDS)|
| Key questions for curation review | <ul><li>Has patient data been removed from the header of a DICOM file? </li><li>Has defacing software removed facial features from images, and has "burned-in" text been removed if identifiable?</li><li>Are data in raw format? If not, has the researcher provided documentation of processing procedures? |
| Tools for curation review |<ul><li>Free software that can read DICOM header: Dicom Works, ImageJ</li><li>Free software that can open NIFTI headers and/or images: Mango, ImageJ, AFNI |
| Date Created | |
| Created By |<ul><li>Brandon Patterson, University of Utah<li></li>Michael Moore, University of Washington<li></li>Sara Samuel, University of Michigan</li><li>Helenmary Sheridan, University of Pittsburgh</li><li>Chris Sorensen, Washington University in St. Louis|
| Date updated and summary of changes| |

**Suggested citation:** Patterson, Brandon; Moore, Michael; Samuel, Sara; Sheridan, Helenmary; Sorensen, Chris. (2020). Neuroimaging Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

This work was created as part of the “Specialized Data Curation” Workshop #3 held at Washington University in St.Louis, MO on November 5-6, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

# Table of Contents

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:undetermined orderedList:0 -->

- [Introduction](#introduction)
- [Description of format](#description-of-format)
- [Example data sets](#example-data-sets)
- [Software for viewing data](#software-for-viewing-data)
- [Key curatorial considerations](#key-curatorial-considerations)
- [Curatorial pipeline](#curatorial-pipeline)
- [Preservation actions](#preservation-actions)
- [What to look for to make sure file meets Fair Principles](#what-to-look-for-to-make-sure-file-meets-fair-principles)
- [Ways in which fields may use this format](#ways-in-which-fields-may-use-this-format)
- [Documentation of Curation Process](#documentation-of-curation-process)
- [Appendix A filetype CURATED checklist](#appendix-a-filetype-curated-checklist)

# Introduction

Images of brains are essential for neuroscience research, but the complexity of the images and their associated data are a challenge to efficiently share and archive. The datasets are often large, consisting of many images, and researchers are interested in differing aspects of the data and images, from an entire set of images that create a "virtual brain" to just the metadata of particular types of scans. Curating these complex sources of data can be challenging, but this guide can help with curating a specific type of neuroimaging data: fMRI scans that are saved in either NIfTI or DICOM formats. This guide includes a description of the formats, example datasets which you can view online, recommendations for software for viewing the data, key curatorial considerations, and more.

# Description of Format

Neuroimaging data sets used by researchers predominantly fall into two main file formats:

 1. **DICOM** (Digital Imaging and Communications in Medicine), a ubiquitous and non-proprietary medical imagery format that facilitates communication and exchange across modalities and equipment manufacturers.
 2. **NIfTI** (Neuroimaging Informatics Technology Initiative), a neuroimagery-specific format designed to support analysis beyond the clinical workflow, developed from (and largely compatible with) an older format called ANALYZE.

Both formats offer their own respective pros and cons, and selecting between the two is largely dependent on the needs and niche of the end user. DICOM is complex, comprehensive, and highly specific to support needs across the entire spectrum of medical imaging and clinical workflows, while NIfTI is comparatively simple, minimalistic, and easy to support and better suited for research purposes (Li, 2016). Frequently, researchers will convert DICOM data output by a scanning instrument into NIfTI for analysis and dissemination.

### DICOM

**Extension: .dcm**

**Pros:** 

- Ubiquitous international standard for medical imaging used across equipment manufacturers and modalities
- Highly detailed and descriptive header

**Cons:**

- Large file size hinders sharing
- Poorly suited to many popular image processing and analysis tools
- Contains information specific to a particular scan, which can include personally identifying health information

DICOM is the international standard (ISO 12052 "Health informatics - Digital imaging and communication in medicine (DICOM) including workflow and data management.") for communication, access, and exchange of medical imaging, providing interoperability for care providers and researchers using medical imaging devices (scanners, servers, workstations, etc.) from different manufacturers. A pillar of modern radiological imaging, DICOM is inherently designed to support the spectrum of medical imaging needs by incorporating standards and protocols for many imaging modalities, including computed tomography (CT), magnetic resonance imaging (MRI), ultrasound, x-ray angiography, mammograms, and radiation therapy. Most imaging equipment exports directly to a DICOM file with a .dcm extension, though occasionally manufacturers opt for a proprietary version of the DICOM format with an alternate extension.

The standard was envisioned in the 1980s by the American College of Radiology (ACR) and the National Electrical Manufacturers Association (NEMA) to meet the combined needs of both care providers and equipment vendors. As digital technology blossomed through the 1980s and into the 1990s and early 2000s, DICOM has played a foundational role in establishing a widespread and non-proprietary data exchange protocol. Currently on version 3.0, the standard is revised annually by workgroups and committees to satisfy new and evolving needs of virtually any medical branch using medical imagery.

A foundational DICOM component is that the medical image should never be separated from key information about its creation. To accomplish that, DICOM data objects group image pixel data together with a header consisting of key "public" patient (name, age, sex, etc.), study (physician, study date, modality, etc.), and imaging (name of device, manufacturer, scanner settings, etc.) parameters into a consolidated data set. This effectively embeds the most complete description of the procedure used into the image, similar to how a JPEG can be embedded with descriptive tags. This approach allows the image to effectively serve as its own description, and descriptive attributes can vary between imaging modalities. These "public" parameters are interoperable across manufacturer devices, though DICOM files may contain some proprietary "private" attributes as well.

![]()

Image pixel data can be compressed using various standards, including JPEG, lossless JPEG, JPEG-2000 and run-length encoding. However, due to the comprehensive and complex scope inherent in the format, DICOM file and dataset sizes can be a significant burden to data curators and a challenge to store in shared repositories. Each DICOM file is encoded as a single 2D slice rather than a comprehensive 3D image, meaning a single scan can result in dozens or hundreds of separate DICOM files to manage. Therefore, many neurological researchers prefer to convert DICOM files to the unified and comparatively simple NIfTI format to better support analysis and visualization.



# **Publication in progress. We appreciate your patience.**
