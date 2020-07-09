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
| Created by |<ul><li>Michael Moore, University of Washington</li><li>Brandon Patterson, University of Utah</li><li>Sara Samuel, University of Michigan</li><li>Helenmary Sheridan, University of Pittsburgh</li><li>Chris Sorensen, Washington University in St. Louis <p><br> **DCN Mentor:** Joel Herndon, Duke University|
| Date updated and summary of changes made ||


## Publication in progress. Your patience is appreciated.
