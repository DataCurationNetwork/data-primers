![](DCNlogo.png)

# GeoTIFF Primer

## Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| FIle Extension(s) |.tif, .tiff|
| MIME Type |image/tiff; no built-in browser compatibility|
| Structure |File-format, tiff tags (geokeys)|
| Versions |Revision 1.0, subtype of tiff revision 6.0|
| Primary fields or areas of use |Any field that intersects with geographic information systems (GIS) and remote sensing. Examples include the earth sciences, urban planning, archaeology, etc.|
| Source and affiliation |Open, extension to Aldus-Adobe’s public domain tiff |
| Metadata standards |<ul><li>[ISO 19139](https://www.iso.org/standard/67253.html)</li><li>[FDGC](https://www.fgdc.gov/metadata/csdgm-standard)</li><li>[OGC (Open Geospatial Consortium) GeoTIFF Standard v1.1](https://www.ogc.org/standards)</li><li>[GeoBlacklight 1.0](https://geoblacklight.org/projects/geoblacklight-schema/)|
| Key questions for curation review |<ul><li>Measurement unit</li><li>Temporal information</li><li>Geospatial information</li><li>File naming convention|
| Tools for curation review |Example in this primer uses QGIS. Other applications include: USGS’s dlgv32, Esri ArcGIS suite, ERDAS, MapInfo, Global Mapper, Python, R|
| Date Created |20 March 2020|
| Created by |<ul><li>Courtney Kearney, Tulane University (ckearney@tulane.edu)</li><li>Nick Ruhs, Florida State University (nruhs@fsu.edu)</li><li>Mara Sedlins, Colorado State University (mara.sedlins@colostate.edu)</li><li>Tracy Tien, Smith College (htien@smith.edu)</li><li>Jessica Trelogan, University of Texas Austin (j.trelogan@austin.utexas.edu)</li><li>John Watts, Texas A&M University (jwatts@tamu.edu)|
| Date updated and summary of changes made | | 

**Suggested Citation:** Kearney, Courtney; Ruhs, Nick; Sedlins, Mara; Tien, Tracy; Trelogan, Jessica; and Watts, John. (2020). GeoTiff Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

This work was created as part of the “Specialized Data Curation” Workshop #3 held at Washington University in St.Louis, MO on November 5-6, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

# Table of Contents

[Description of format](#description-of-format)

[Ways in which different disciplines fields may use this format](#ways-in-which-different-disciplines-fields-may-use-this-format)

[Examples](#examples)

[Sample data set citations](#sample-data-set-citations)

[Key questions to ask yourself](#key-questions-to-ask-yourself)

[Key clarifications to get from researcher](#key-clarifications-to-get-from-researcher)

[Applicable metadata standard core elements and README requirements](#applicable-metadata-standard-core-elements-and-readme-requirements)

[Software for opening and  viewing GeoTIFFs](#software-for-opening-and-viewing-geotiffs)

[Preservation actions](#preservation-actions)

[What to look for to make sure this file meets FAIR principles](#what-to-look-for-to-make-sure-this-file-meets-fair-principles)

[Unresolved Issues Further Questions](#unresolved-issues-further-questions)

[Documentation of curation process What to capture from curation process](#documentation-of-curation-process-what-to-capture-from-curation-process)

[Appendix A filetype CURATED checklist](#appendix-a-filetype-curated-checklist)

[Citations](#citations)

# Description of format 

The **GeoTIFF is a TIFF (Tag Image File Format)*** that describes and stores associated geographic information, including geographic coordinate systems and projections (using EPSG codes.) GeoTIFFs are raster image files that are typically acquired from satellites, scanned aerial photography, digitized maps, or derived spatial analysis products such as DEMs (Digital Elevation Model.)  A GeoTIFF supports:

- Bilevel, grayscale, palette-color, full-color
- Flexible compression schemes for optimizing space and time tradeoff between application platforms (uses MetaTag or GeoKey to encode into six tags, making a GeoTIFF platform-independent and better cross-platform exchange)
- Portability and extensibility

# Ways in which different disciplines may use this format

- Time-series analysis of satellite images to perform land cover classification and land use change detection (environmental science)
- High-resolution imagery acquired from a UAV from processed into a digital elevation model, then used to calculate sedimentation to assess coastal erosion (geology)
- Digital Elevation Model derived from LiDAR, modeling heavily-canopied historical ruins (archaeology)
- Travel time to employment surface raster to assess developmental potential based on employment opportunities (economics)

# Example GeoTIFF data sets and repositories

GeoTIFFs may be shared as stand alone files or together with other types of geospatial data, such as shapefiles. Geospatial data may also be authored by one entity but made discoverable by another. For example, here is a GeoTIFF authored by the U.S. Geological Survey and made available in the Stanford Earthworks geospatial repository: [https://earthworks.stanford.edu/catalog/stanford-zz225qj2166](https://earthworks.stanford.edu/catalog/stanford-zz225qj2166)

### Other examples of geospatial repositories include:

[NYU Spatial Data Repository](https://geo.nyu.edu)

[Berkeley Geodata](https://geodata.lib.berkeley.edu)

**Note:** These repositories use GeoBlacklight as their discovery platform and allow faceting based on data type. To see additional examples of GeoTIFFs, you can select Raster as the data type. GeoBlacklight also maintains a common metadata schema for GeoTIFFs (see section 6 of this primer for more information about the GeoBlacklight and other metadata schemas).

**Here is another example of GeoTIFF data.** In this case, the data were produced by a researcher at Colorado State University and shared in CSU’s institutional repository to support an associated publication. This dataset includes both GeoTIFFs and shapefiles and is referred to in section 7 of this primer (“Software for opening and viewing GeoTIFFs”): [http://dx.doi.org/10.25675/10217/171907](http://dx.doi.org/10.25675/10217/171907)

# Sample data set citations 

### Formatting:

**Dataverse:** [Data Citation Standards](https://dataverse.org/best-practices/data-citation)

**APA:** Author. (Year). Title (version no.) [Data set]. Publisher. DOI or URL.

**Chicago:** Author. Title. File format. Last modified date {if available; if not, include date of access}. URL.

**MLA:** Author. Title. Publication {if applicable}. Publisher location: Publisher {if applicable}. Year. File type. Retrieved from URL on date of access.

### Examples:

#### Dataverse:

Zhang, Yonggen; Marcel G. Schaap, 2018, "A High-Resolution Global Map of Soil Hydraulic Properties Produced by a Hierarchical Parameterization of a Physically-Based Water Retention Model", [https://doi.org/10.7910/DVN/UI5LCE](https://doi.org/10.7910/DVN/UI5LCE), Harvard Dataverse, V1

Ellis, Erle, 2019, "Anthromes v1 (GeoTiff)", [https://doi.org/10.7910/DVN/ZWOEZU](https://doi.org/10.7910/DVN/ZWOEZU), Harvard Dataverse, V1

HarvestChoice, International Food Policy Research Institute (IFPRI); University of Minnesota, 2017, "CELL5M: A Multidisciplinary Geospatial Database for Africa South of the Sahara", [https://doi.org/10.7910/DVN/G4TBLF](https://doi.org/10.7910/DVN/G4TBLF), Harvard Dataverse, V5

Castillo, Cesar R, 2019, "Aerial_Imagery_D810_16Apr2018_NIR", [https://doi.org/10.18738/T8/ASAGDQ](https://doi.org/10.18738/T8/ASAGDQ), Texas Data Repository Dataverse, V1

#### APA Style:

Natural Resources Canada. (2017). National Road Network - NRN - GeoBase Series [Data file]. Retrieved from [https://open.canada.ca/data/en/dataset/d799c202-603d-4e5c-b1eb-d058803f80f9](https://open.canada.ca/data/en/dataset/d799c202-603d-4e5c-b1eb-d058803f80f9).

#### Chicago Style: 

Natural Resources Canada. Orthoimages of Canada 2005-2010. GeoTIFF . Accessed December 17, 2017. [http://open.canada.ca/data/en/dataset/d799c202-603d-4e5c-b1eb-d058803f80f9](http://open.canada.ca/data/en/dataset/d799c202-603d-4e5c-b1eb-d058803f80f9).

#### MLA Style:

Natural Resources Canada. Orthoimages of Canada 2005-2010. 2010. GeoTIFF files. Retrieved from [http://open.canada.ca/data/en/dataset/d799c202-603d-4e5c-b1eb-d058803f80f9](http://open.canada.ca/data/en/dataset/d799c202-603d-4e5c-b1eb-d058803f80f9) on 17 Dec. 2017.

# Key questions to ask yourself 

[ORNL Best Practices for Preparing Environmental Datasets to Share and Archive](https://daac.ornl.gov/datamanagement/)

### Curation review 

- These are the overview parameters that will be helpful in understanding and using the data, with each parameter expanded upon below: 
  - Measurement unit 
  - Temporal information
  - Geospatial information
  - File naming convention

- Measurement unit
  - Standardized measurement units (such as SI units) or discipline-specific units

- Temporal information
  - Using ISO standard date and time for the temporal coverage of the data and time increments if application - for example, annual land cover change from 2000-2010
  - For satellite imagery, include the satellite/sensor and image acquisition date  - for example, Sentinel-2A 2020-06-09

- Spatial information
  - What is the coordinate system? Geographic Coordinate System (GCS) or projected coordinate system, and datum
    - Geographic coordinate system indicates the location of the surface of earth - [List of geographic coordinate system](https://desktop.arcgis.com/en/arcmap/latest/map/projections/pdf/geographic_coordinate_systems.pdf)
    - Projected coordinate system is how the data are transformed to display on a 2D plane - [List of projected coordinate systems](https://desktop.arcgis.com/en/arcmap/latest/map/projections/pdf/projected_coordinate_systems.pdf)
  - What is the spatial extent/resolution? For example, contiguous US land cover at 30m pixels 
  - Boundary/bounding box is the minimum and maximum longitude and latitude that encompasses all the features of the dataset - min Longitude (left) , min Latitude (bottom) , max Longitude (right) , max Latitude (top)
- Does the data contain multiple layers/bands? Satellites assign each instrument on board with a wavelength output channel. For example, optical multispectral images typically have 3 bands (Red, Green, and Blue).
  - Does the metadata contain information for each layer/band? For example, Band 1 = Red, Band 2 = Green, and Band 3 = Blue 
  - Are the layers/bands bundled together? Should they be separated to preserve information?
- If the data contain coded fields, include the definition of each code - ex: National Land Cover Database class value 11 = open water
- Are there missing values? - if number, use 9999 or na for string
- What is the file and naming convention?

# Key clarifications to get from researcher

- Data lineage - what was the data source and what transformations were performed? 
- What kinds of software?
- Any models or scripts used?
- Any associated files - tabular or vector?
- Band information - which band is associated with which number, ex: Red - Band 1 etc.
- Are there visualization/symbology requirements?
- Are there any restrictions on redistribution?
- Are there special considerations for viewing and analyzing the data, such as size, software/hardware processing capabilities, and any privacy issues?
- Who to contact if questions about the data?

# Recommended metadata elements and standards



# Publication in progress. Thanks for your patience.







