![](DCNlogo.png)

# TIFF Data Curation Primer

Authors: Leah Everritt, Jen Ferguson, and Emily Simpson.

DCN Mentor: Jonathan Wheeler, University of New Mexico (jwheel01@unm.edu)

Affiliate Contributors (external peer reviewers): Lauren Phegley (University of Pennsylvania), Brandi Pullen (Virginia Tech University), Amy Schuler (Cary Institute of Ecosystem Studies)


|   Topic   |   Description   |
| :------------- | :------------- |
| File Extension | .tiff or .tif |
| MIME Type | image/tiff |
| Structure | [TIFF files consist of 3 sections:](https://www.fileformat.info/format/tiff/egff.htm) <li>Image File Header (IFH)</li> <li>Image File Directory (IFD)</li> <li>Image data</li> |
| Versions | 1-6.0 |
| Primary fields or areas of use | Multiple |
| Source and affiliation | Aldus Adobe |
| Metadata standards | Baseline TIFF tags. Descriptive metadata standard will depend on the image subject. |
| Key questions for curation review | <li>Will there be a public interface for the images?</li> <li>Will users need to access these images on a regular basis?</li> <li>Should compressed derivatives (e.g. JPEGs, PNGs) be created?</li> |
| Tools for curation review | <li><a href="https://imagemagick.org/">ImageMagick</a></li> <li><a href="https://jhove.openpreservation.org/modules/tiff/">JHOVE TIFF-hul Module</a><</li> <li><a href="http://www.libtiff.org/">LibTiff</a></li> |
| Date Created | 01 February 2024 |
| Created by | Leah Everritt, University of New Mexico (leveritt@salud.unm.edu); Jen Ferguson, Northeastern University (j.ferguson@northeastern.edu); and Emily Simpson, Los Alamos National Laboratory (emsimpson@lanl.gov). <br><br>Mentor: Jonathan Wheeler, University of New Mexico (jwheel01@unm.edu) |
| Date updated and summary of changes made | 2024-07-03: Initial upload to GitHub |

**Suggested Citation:** Everritt, Leah; Ferguson, Jen; and Simpson, Emily. (2024). TIFF Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

[Description of format](#description-of-format)

[Dataset Examples](#dataset-examples)

[Key questions to ask yourself](#key-questions-to-ask-yourself)

[Key clarifications to get from researcher](#key-clarifications-to-get-from-researcher)

[Applicable metadata standard, core elements and readme requirements](#applicable-metadata-standard-core-elements-and-readme-requirements)

[Resources for reviewing data](#resources-for-reviewing-data)

[Software for viewing or analyzing data](#software-for-viewing-or-analyzing-data)

[Preservation actions](#preservation-actions)

[What to look for to make sure this file meets FAIR principles](#what-to-look-for-to-make-sure-this-file-meets-fair-principles)
> [Findable](#findable) <br>
> [Accessible](#accessible) <br>
> [Interoperable](#interoperable) <br>
> [Reusable](#reusable) <br>

[Ways in which fields may use this format](#ways-in-which-fields-may-use-this-format)

[Potential issues to note](#potential-issues-to-note)

[Documentation of curation process](#documentation-of-curation-process)

[Appendix A - filetype CURATE(D) checklist](#appendix-a---filetype-curated-checklist)
> [Check](#check) <br>
> [Understand](#understand) <br>
> [Request](#request) <br>
> [Augment](#augment) <br>
> [Transform](#transform) <br>
> [Evaluate](#evaluate) <br>
>> [Findable](#findable-1) <br>
>> [Accessible](#accessible-1) <br>
>> [Interoperable](#interoperable-1) <br>
>> [Reusable](#reusable-1) <br>
> [Document](#document)

[Appendix B - References](#appendix-b---references)

# Description of format

TIFF, or Tagged Image File Format, is a raster image format now maintained by Adobe Systems. TIFFs are a relatively lossless file format of high resolution bitmap images, typically 400-600 pixels per inch (ppi) and typically with a maximum file size of around 4 GB. TIFFs may also act as container files used to store smaller JPEGs acting as an image file directory.

TIFFs are often used as archival master copies to preserve as much detail of an image as possible to store in a digital repository or similar platform. Given their up to 4 GB size, TIFFs can also take up significant storage space, limiting the amount of items that can be uploaded and stored. TIFFs are frequently used to make derivative, lower-resolution copies (PNG, JPEG or JPEG2000 format) to be used for access copies in digital libraries, museum exhibits, or archives. This compressed format provides more seamless access for users.

# Dataset Examples

- [Devil’s Lake, Wisconsin](http://hdl.loc.gov/loc.pnp/det.4a04101)

- [Image from Ildr1 gene deletion protects against diet-induced obesity and hyperglycemia](https://doi.org/10.1371/journal.pone.0270329.s001)

- [Building the new Chain Bridge, pre 1910](https://www.digitalcommonwealth.org/search/commonwealth:tq57pz353)

- [Little Theater - Henry IV - 02](https://cdm16694.contentdm.oclc.org/digital/collection/p16694coll82/id/668)

# Key questions to ask yourself

- Where will the TIFFs be stored? Is there enough space to store them?

- Will there be a public interface for the images?

- Will users need to access these images on a regular basis?

  - If so, should compressed derivatives be created?

- How can multi-page or similarly complex images be processed?

- Does any descriptive metadata need to be created to allow for access?

- [Does the image already include alt text or does it need to be added?](https://github.com/DataCurationNetwork/data-primers/blob/main/Accessibility%20Data%20Curation%20Primer/accessibility-data-curation-primer.md)

# Key clarifications to get from researcher 

Image origin

- What is the acquisition or creation date of the images?

- What is the provenance of the images? (e.g. creator, publisher)

- What was used to create the images?

Technical considerations

- If a digital camera was used to capture the images, should the geotagged location metadata be available to the public?

- Was there any editing or processing of the images? If so, what software was used?

- Are there multiple layers to these images?

- If there is not enough repository storage to hold the TIFF dataset, what images are most critical to share?

- Should JPEG or PNGs be created from TIFFs to ensure ease of access and/or in cases where websites cannot render TIFFs?

Use and permissions

- What copyright or reuse license should be applied?

- Is there an existing data management plan that governs these images?

- Will the images be accessed regularly?

- Who will be accessing/using the images?

# Applicable metadata standard, core elements and readme requirements 

TIFF tags are highly customizable, and many are machine-generated. When adding or editing metadata, it is advised to use the controlled vocabulary that is in practice in your specific repository or discipline. Born-digital TIFF images might have camera-specific tags associated with that camera’s specifications (this also applies to cameras used in microscopes), these metadata elements may not be a part of a more encompassing metadata standard.

There are several different metadata standards that may be used in TIFF tags depending on how the TIFF file was created. The standard TIFF file format is TIFF 6.0, all TIFF 6.0 files have Baseline tags and may have Extended, Private, EP, IT, DNG, Private IFD, or Exif tags. TIFF 6.0 Baseline and Extended tags are defined in the [specification](https://www.itu.int/itudoc/itu-t/com16/tiff-fx/docs/tiff6.pdf). Private TIFF tags may or may not be defined and widely used. Originally all Private TIFF tags were used on a local level to further define images. Some Private tags gained popularity as TIFF files were exchanged and some have been defined and are in wide use. The TIFF/EP standard ([ISO 12234-2:2001](https://www.iso.org/standard/29377.html)) is used for images created by digital cameras [defining camera-specific tags](https://www.loc.gov/preservation/digital/formats/fdd/fdd000073.shtm). TIFF/IT standard ([ISO 12369:2004](https://www.iso.org/standard/34342.html)) is used for prepared images such as those used in advertisements and [defines tags related to picture color](https://www.loc.gov/preservation/digital/formats/fdd/fdd000072.shtml).

Some essential elements defined in the required TIFF 6.0 Baseline are the size of the image, number of subfiles or layers the file contains, compression, colors of the image, orientation of image, image creation date, image author, and image creation instrument. This is only a small sample of what is contained in TIFF tags; [please see this document for more information](https://www.loc.gov/preservation/digital/formats/content/tiff_tags.shtml).

Not all the metadata that a researcher will need will be available in the TIFF tags or automatically generated (or automatically generated in a helpful manner). Therefore it is recommended to have a README file for both single TIFF files and TIFF file collections. If a TIFF file collection is submitted usually a single README file will suffice, if a TIFF file collection represents data from multiple experiments it may be a good idea to have a README file for each experiment.

README file element recommendations:

- Names of files

- Date files were created

- Image creator/collector’s name

- If applicable date of experiment that resulted in file(s)

- If applicable where to find experiment method information in lab notebook

- Subject of the image(s) - this may also be used to provide alternative text to enhance accessibility

- How large is the subject of the image, include units

TIFF tags do not necessarily include descriptive metadata needed to access the files, so this metadata may need to be created during the curation process. It is recommended to use the descriptive metadata format widely used in the field. Library of Congress Classification, Dublin Core, and Getty Trust’s Categories for the Description of Works of Art all have metadata schema appropriate for images.

## Resources for reviewing data

- [ImageMagick](https://imagemagick.org/) is a useful tool for extracting existing information associated with a digital image.

- Validate TIFF files using the [JHOVE TIFF-hul Module](https://jhove.openpreservation.org/modules/tiff/)

- [LibTiff](http://www.libtiff.org/) can be used to read and write TIFF files. See [this resource](https://en.wikipedia.org/wiki/LibTIFF) and the [LibTiff GitHub repository](https://github.com/libsdl-org/libtiff) for more details

- TIFF files are [required to have Baseline TIFF tags](https://www.loc.gov/preservation/digital/formats/content/tiff_tags.shtml)

- Minimum descriptive metadata requirements depends on the subject of the image, LOC has recommendations for descriptive metadata for still images (including TIFFs) [here](https://www.loc.gov/preservation/resources/rfs/stillimg.html)

- [American National Standard](https://groups.niso.org/higherlogic/ws/public/download/17937/ANSI-NISO%20Z39.87-2006%20%28R2017%29%2C%20Data%20Dictionary%20-%20Technical%20Metadata%20for%20Digital%20Still%20Images.pdf) by the National Information Standards Organization has metadata standards for digital images based off of Tiffs (includes technical metadata rather than just descriptive) summary of all metadata elements on pg 95

## Software for viewing or analyzing data 

- Viewing: Most any software capable of viewing or manipulating graphics/images

- Editing: GIMP, Adobe Photoshop, Adobe Illustrator, Paint or similar. Some editing software will be more appropriate than others due to the ability for TIFF images to be stacked or multiple layers. For instance, GIMP and Adobe Photoshop would be more appropriate for stacked TIFF files than Paint.


- Extract Metadata: [ImageMagick](https://imagemagick.org/) can be used to extract TIFF metadata. It is open source and can be scripted. The file parser [Apache Tika](https://tika.apache.org/)- available as a Java package can also be used to extract metadata. Read, write, or edit metadata using [ExifTool](https://exiftool.org/)- available as a command-line application or Perl library.

## Preservation actions

- Determine what technical metadata scheme was used for the file: TIFF Baseline v6.0, Extended, TIFF/IT ect. If it is not already in TIFF v6.0 Baseline consider converting to this format to make it more interoperable.

- Determine if any compression was used. If there compression was used, ask the researcher if uncompressed files exist to archive.

- Determine if the image is stacked/has multiple layers or subfiles otherwise being used. If the image has multiple layers it may be a good idea to create a single image file using graphics software and determine if an individual file should be made for each of the stacked files in the image.

- Try opening the TIFF file in multiple software types - incorrect compression or proprietary headers/wrappers/containers may cause the image to render incorrectly. If the image doesn’t render correctly, check for Private or other metadata tags that have caused the problem. Not all graphics software is able to render TIFF files with all types of metadata tags that can be applied to TIFF files.

- Determine how large the file size for the TIFF file is and if compression should be done to JPEG, PNG, or other more accessible file format should be performed.

- Extract and save image metadata so that if the TIFF file is damaged the metadata can still be accessed.

The British Library Digital Preservation Team created a [TIFF Format Preservation Assessment](https://wiki.dpconline.org/images/6/64/TIFF_Assessment_v1.3.pdf)
guide that may be useful for curators.

# What to look for to make sure this file meets FAIR principles

## Findable

Although TIFF files have metadata tags there are elements essential to these images that may not be defined in these tags, it is important for TIFF files to have ReadMe files that contain descriptive metadata in addition to the tags.

## Accessible

TIFF files are often considered master files, and access is not the key component of their use. Researchers should consider saving access copy files such as JPEGs or PNGs if appropriate and keep the TIFFs as preservation copies.

TIFF file tags are no longer accessible after a TIFF file is destroyed, it is important to preserve this metadata in an external file.

## Interoperable

Use of less common Private tags may be problematic – some lack software support leading to rendering issues.

Some software may fail to render multi-page TIFFs accurately.

## Reusable

Use of less common tags may be problematic – some lack software support leading to rendering issues.

Some software may fail to render multi-page TIFFs accurately.

To ensure TIFFs can be reused an appropriate data usage license should be used such as a creative commons license.

# Ways in which fields may use this format 

- High-quality, relatively lossless photographs that demonstrate many fine details.

- High resolution scans of images and/or documents.

- Archival master copies for use in the creation of lower-resolution digital surrogates.

- Container files storing multiple JPEGs for ease of sharing.

- Multi-TIFF for saving multiple pages to one file for ease of sharing and/or use in automated or batch scanning.

- Multi-layer images such as multilayer maps or microscope images.

# Potential issues to note

- While checksums can be produced to track file corruption, no software that views/edits TIFFs has the ability to detect corrupted or broken TIFF files.

- File size limited to ~4 GB which could prove insufficient to the needs of the creator or curator. ([BigTIFF](https://www.loc.gov/preservation/digital/formats/fdd/fdd000328.shtml) supports much larger file sizes and higher resolution images on the order of 800 ppi or more.)

- GoogleDocs does not support TIFF files, only compressed formats (like JPEG or PNG).

# Documentation of curation process

- Source of original files along with creator, creation date, and location (if available).

- Checksums to track changes or corruption of the files.

- Identity of individuals who have edited metadata and an account of the changes made.

- Persistent identifiers for all image files and associated metadata files (if not embedded).

- Clear file-naming convention(s) for future additions to the collection.

- Information relating to copyright and policies concerning use, access, and reproduction.

- If available for reproduction, a preferred citation for the images.

# Appendix A - filetype CURATE(D) checklist

The following list is adapted from the original Data Curation Network [CURATE(D) checklist](https://z.umn.edu/curate) to serve as a guide for TIFF files.

## Check

- Files open properly in the preferred image viewer.

- No sensitive or prohibited material is contained within the image or accompanying files.

- Files contain no PII, or, if present, it is approved, expected, and properly addressed.

- If PII is present, there is documented consent from the individual(s) in question.

- Metadata is included either as embedded metadata or accompanying file and is adequate, consistent, and complete.

## Understand

- File hierarchy and naming are logical and internally consistent.

- The purpose and intended use of the image(s) is clear (research, preservation, artistic, etc.)

##  Request

- If metadata is missing or unclear, request the information needed to resolve.

- If purpose/intent is unclear, ask how the images will be used, stored, and accessed.

- If copyright and use information is not included, verify these details with the submitter.

## Augment

- Create or verify checksums to confirm data integrity.

- Create or enhance metadata based on information provided by the submitter as well as processes taken by curator and other staff.

- Reorder or rename files to enhance discoverability, if needed.

## Transform

- Create lower-resolution copies (JPEGs, PNGs) for use and access, if appropriate.

- For public access copies, when appropriate and approved by the researcher, use photo editing software to enhance color, resolution, and other visual features.

## Evaluate

Do the files meet FAIR standards?

### Findable

- Metadata is robust and complete.

- Files have unique identifiers.

- Searchable within repository search and web (if applicable)

### Accessible

- Downloadable from the repository.

- Free, open (if copyright and protocols for use allow).

### Interoperable

- Metadata conforms to chosen schema and uses controlled vocabulary relative to discipline, institution, etc.

- Metadata is machine-readable.

### Reusable

- Copyright and policies concerning access and use are present and clear to users.

- Preferred citations are available to users (if applicable).

- Provenance information is available (creator, owner, stewardship).

- Contact information is available for assistance.

## Document

- Curation activities are transparent and recorded, including names and dates.

- Any PII present is accompanied by consent form(s).

- Any sensitive information is accompanied by proper explanation(s), warning(s), and/or restriction(s).

- Provenance is documented in metadata or accompanying file(s).

# Appendix B - References

Aldus Developers Desk. (1992). TIFF Revision 6.0. Aldus Corporation. [https://www.itu.int/itudoc/itu-t/com16/tiff-fx/docs/tiff6.pdf](https://www.itu.int/itudoc/itu-t/com16/tiff-fx/docs/tiff6.pdf)

Apache Software Foundation. (2023, December 13). Apache Tika - a content analysis toolkit. Apache Tikka. [https://tika.apache.org/](https://tika.apache.org/)


Chandra, R., Aryal, D. K., Douros, J. D., Shahid, R., Davis, S. J., Campbell, J. E., Ilkayeya, O., White, P. J., Rodriguez, R., Newgard, C. B., Wetsel, W. C., & Liddle, R. A. (2022). Ildr1 gene deletion protects against diet-induced obesity and hyperglycemia. PloS one, 17(6), e0270329. [https://doi.org/10.1371/journal.pone.0270329](https://doi.org/10.1371/journal.pone.0270329)

Harvey, P. (2024, January 23). ExifTool by Phil Harvey. ExifTool. [https://exiftool.org/](https://exiftool.org/)

ImageMagick. (n.d.). ImageMagick. Retrieved January 29, 2024. [https://imagemagick.org/](https://imagemagick.org/)

JHOVE Open Preservation Foundation. (2023). JHOVE TIFF-hul Module. [https://jhove.openpreservation.org/modules/tiff/](https://jhove.openpreservation.org/modules/tiff/)

Library of Congress. (n.d.). Recommended Formats Statement 2023-2024: II. Still Image Works. [https://www.loc.gov/preservation/resources/rfs/stillimg.html](https://www.loc.gov/preservation/resources/rfs/stillimg.html)

Library of Congress. (2023). Sustainability of Digital Formats: Planning for Library of Congress Collections: Still Images \>\> Tags for TIFF, DNG, and Related Specifications. [https://www.loc.gov/preservation/digital/formats/content/tiff_tags.shtml](https://www.loc.gov/preservation/digital/formats/content/tiff_tags.shtml)

Library of Congress. (2021). Sustainability of Digital Formats: Planning for Library of Congress Collections: TIFF/EP, ISO 12234-2:2001. [https://www.loc.gov/preservation/digital/formats/fdd/fdd000073.shtml]

Library of Congress. (2021). Sustainability of Digital Formats: Planning for Library of Congress Collections: TIFF/IT for Image Technology. [https://www.loc.gov/preservation/digital/formats/fdd/fdd000072.shtml](https://www.loc.gov/preservation/digital/formats/fdd/fdd000072.shtml)

LibTIFF. (2023, November 3). In Wikipedia. [https://en.wikipedia.org/wiki/LibTIFF](https://en.wikipedia.org/wiki/LibTIFF)

LibTIFF - RIFF Library and Utilities. (n.d.). LibTiff. Retrieved January 29, 2024. [https://libtiff.gitlab.io/libtiff/](https://libtiff.gitlab.io/libtiff/)

National Archives. (2021, December 9). Details for: Tagged Image File Format. In PRONOM. Retrieved January 30, 2024. [https://www.nationalarchives.gov.uk/PRONOM/Format/proFormatSearch.aspx?status=detailReport&id=1099](https://www.nationalarchives.gov.uk/PRONOM/Format/proFormatSearch.aspx?status=detailReport&id=1099)

National Information Standards Organization. (2017). Data Dictionary - Technical Metadata for Digital Still Images. ANSI/NISO Z39.87-2006 (R2017) ISSN 1041-5653. [https://groups.niso.org/higherlogic/ws/public/download/17937/ANSI-NISO%20Z39.87-2006%20%28R2017%29%2C%20Data%20Dictionary%20-%20Technical%20Metadata%20for%20Digital%20Still%20Images.pdf](https://groups.niso.org/higherlogic/ws/public/download/17937/ANSI-NISO%20Z39.87-2006%20%28R2017%29%2C%20Data%20Dictionary%20-%20Technical%20Metadata%20for%20Digital%20Still%20Images.pdf)

TIFF File Format Summary. Retrieved May 3, 2024. [https://www.fileformat.info/format/tiff/egff.htm](https://www.fileformat.info/format/tiff/egff.htm)

Whibley, S., May, P., Kimura, A., P., Wheatley, P., & Pennock, M. (2015). TIFF Format Preservation Assessment. British Library. [https://wiki.dpconline.org/images/6/64/TIFF_Assessment_v1.3.pdf](https://wiki.dpconline.org/images/6/64/TIFF_Assessment_v1.3.pdf)
