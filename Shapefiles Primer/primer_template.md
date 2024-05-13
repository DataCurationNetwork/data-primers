**Primer Template**

## Overview (kb)

  -----------------------------------------------------------------------
  Topic                         Description
  ----------------------------- -----------------------------------------

  Versions                      
  - Original Release: [ESRI Shapefile Technical Description (1998)](https://www.esri.com/content/dam/esrisites/sitecore-archive/Files/Pdfs/library/whitepapers/pdfs/shapefile.pdf) with subsequent extensions by ESRI

  Primary fields or areas of    
  * All fields in which non-topological geospatial data are used/exchanged
  use                           

  Source and affiliation        
  * ESRI - formerly Environmental Systems Research Institute

  Metadata standards ([FGDC Geospatial Metadata Standards and Guidelines](https://www.fgdc.gov/metadata/geospatial-metadata-standards))            
  * U.S. Federal Geographic Data Committee *Content Standard for Digital Geospatial Metadata (CSDGM)* (depricated)
  * *International Standards Organization (ISO) 191xx series of metadata standards* 
  - Note: ESRI's ArcGIS produces an ESRI metadata record (.xml) as part of the process of managing metadata. FGDC or ISO metadata can (and should) be explicitly generated as a complement to any proprietary metadata produced by tools such as ArcGIS. 

  Key questions for curation review   
  * Are all required files included
  * What is the coordinate reference system for the data. **If there is one, ensure that the .prj file is included in the file collection and correctly matches the specified coordinate reference system - including datum**
  * Is the data dictionary included in the appropriate and complete (ISO or FGDC) geospatial metadata document
  
  Tools for curation review   
  * Desktop Geographic Information System (GIS): [QGIS](https://www.qgis.org/en/site/)
  * Desktop GIS: [ArcGIS](https://www.arcgis.com/index.html)
  * R for programmatic/automated review/testing, e.g. [`sf` package](https://cran.r-project.org/web/packages/sf/index.html) 
  * Python for programming/automated review/testing, e.g. [`GeoPandas` module](https://geopandas.org/en/stable/getting_started/introduction.html)

  Date Created                  

  Created by                    

  Date updated and summary of   
  changes made                  
  -----------------------------------------------------------------------

**Example Table of Contents \[Optional Components\]**

##  Description of format (kb)

The ESRI Shapefile format was developed and released as a proprietary format for encoding and exchanging non-topological geometry and attribute data for spatial features (points, lines, polygons) in a dataset. While released as a proprietary format, the [published documentation](https://www.esri.com/content/dam/esrisites/sitecore-archive/Files/Pdfs/library/whitepapers/pdfs/shapefile.pdf) has enabled geospatial application developers to implement support for reading and writing files in the shapefile format, resulting in broad support and use of the shapefile format for the exchange and use of non-topological feature data. 

Structure Documentation

* [ESRI Shapefile Technical Description (1998)](https://www.esri.com/content/dam/esrisites/sitecore-archive/Files/Pdfs/library/whitepapers/pdfs/shapefile.pdf)
* [Library of Congress Format Description](https://www.loc.gov/preservation/digital/formats/fdd/fdd000280.shtml)

Base File Structure (multiple files - originally specified to follow 8.3 naming convention). All files must share the same name prefix.

  - Main file (x.shp): ex. counties.shp
  - Index file (x.shx): ex. counties.shx
  - dBase file (x.dbf): ex. counties.dbf

Additional optional files

  - Spatial Index for read/write instances - Part 1 - required if present (x.sbn): ex. counties.sbn
  - Spatial Index for read/write instances - Part 2 - required if present (x.sbx): ex. counties.sbx
  - Spatial Index - Part 1 - for read-only shapefiles (x.fbn): ex. counties.fbn
  - Spatial Index - Part 2 - for read-only shapefiles (x.fbx): ex. counties.fbx
  - Attribute Index - Part 1 (x.ain): ex. counties.ain
  - Attribute Index - Part 2 (x.aih): ex. counties.aih
  - Geocoding index for read/write instances - required if present (x.ixs): ex. counties.ixs
  - Geocoding Index for read/write ODB format shapefiles (x.mxs): ex. counties.mxs
  - Projections Definition File - **required if coordinate reference system information is to be included in file** (x.prj): ex. counties.prj
  - ArcGIS Metadata File (x.xml): ex. counties.xml
  - Character set codepage specification file (x.cpg): ex. counties.cpg
  - ArcView 3.x Attribute Index - no longer used by ArcGIS (x.atx): ex. counties.atx
   
  MIME Types   
    
  - application/octet-stream (main file)
  - application/dbf
  - application/dbase
  - application/vnd.shx
  - application/vnd.shp
  - application/vnd.dbf
  - Metadata: text/xml                  


## Examples (lh)

Snowstorm Database

The [Snowstorm Database](https://www.ncei.noaa.gov/metadata/geoportal/rest/metadata/item/gov.noaa.ncdc:C00464/html#) is a collection of over 500 snowstorms dating back to 1900 and updated operationally. Only storms having large areas of heavy snowfall (10-20 inches or greater) are included. The data is archived in shapefile format, one shapefile per storm. The data is archived in shapefile format, one shapefile per storm.

TIGER/Line Shapefiles 

The [TIGER/Line Shapefiles](https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.2023.html#list-tab-790442341) are extracts of selected geographic and cartographic information from the Census Bureau's Master Address File (MAF)/Topologically Integrated Geographic Encoding and Referencing (TIGER) system. The shapefiles include information for the fifty states, the District of Columbia, Puerto Rico, and the Island  areas (American Samoa, the Commonwealth of the Northern Mariana Islands, Guam, and the United States Virgin Islan]ds). The shapefiles include polygon boundaries of geographic areas and features, linear features including roads and hydrography, and point features.

Geospatial Data Repositories:

GeoPlatform

[GeoPlatform](https://www.geoplatform.gov) suports discovery and registering geospatial data assets with special emphasis on 177 NationalGeospatial Data Assets (NGDAs) across 18 data themes as guided by the Federal Geographic Data Committee (FGDIC).

The Big Ten Academic Alliance Geospatial Information Network (BTAA-GIN)

[BTAA-GIN](https://btaa.org/library/programs-and-services/geoportal) is a collaboration of library-affiliated staff from Big Ten Academic Alliance universities. The program aims to support the geospatial research community by building and maintaining a collective open-source spatial data infrastructure featuring metadata optimized for spatial discovery platforms.  The BTAA Geoportal contains images, scanned maps, and geospatial data in Shapefile format.


## Sample data set citations (lh)

Mennis, Jeremy; Yuen, Kai, 2023, "Geospatial Dataset of Roads and Settlement Features for the Chesapeake Bay Eastern Shore Region of Maryland, USA, 1865", [https://doi.org/10.7910/DVN/KPILKU](https://doi.org/10.7910/DVN/KPILKU), Harvard Dataverse, V1 

Squires, Mike(2012). Snowstorm Database [snowstorm-db_storm-1_s19000226_e19000303_c20130514.tar]. NOAA National Centers for Environmental Information. [4/28/2022] Available from https://www.ncei.noaa.gov/metadata/geoportal/rest/metadata/item/gov.noaa.ncdc:C00464/html#.

Minnesota Pollution Control Agency. (n.d.). Current Stream Water Units [Minnesota]. Minnesota Geospatial Commons. https://gisdata.mn.gov/dataset/09bb6648-25c4-4c9b-84f5-5d3358989af9 (dataset) 

Seymour, W. A., and Traum, J. A., 2021, Petaluma Model GIS Data: U.S. Geological Survey data release, https://doi.org/10.5066/P9IQDHIT.  

Seven typical elements include Author, Publication, Year, Title of the data, Publisher, Digital Object Identifier (DOI), and Access Date and Time. If relevant, you may add other elements, such as query parameters, direct access link, data format, 3r party producer, editor or contributor, publication place, and data within a larger work.

Source: [USGS Data Citation](https://www.usgs.gov/data-management/data-citation#elements).

##  Key questions to ask yourself (lh)

Are there obvious georeference errors, such as plants, animals, or landmarks mapped in the wrong environment (whales on land), in the wrong hemisphere, or wrong country?

5.  Key clarifications to get from researcher (lh)

6.  Applicable metadata standard, core elements and readme requirements (kb)

7.  Resources for reviewing data (ww)

8.  Software for viewing or analyzing data (kb)

Shapefiles can be read, visualized, and analyzed in a wide variety of applications including:

* Desktop GIS: 
  * Commercial: ArcGIS, ...
  * Open Source: QGIS, ...
* Programming languages: R, Python, ...
* Online mapping applications: 
  * Commercial: ArcGIS Online, ...
  * Open Source: GeoServer, MapServer

## Preservation actions (ww)

## What to look for to make sure this file meets FAIR principles (ww)

## Ways in which fields may use this format (ww)

## Unresolved Issues/Further Questions \[for example: tracking
    provenance of data creation, level of detail in dataset\] (ww)

## Documentation of curation process: What do capture from curation
    process (ww)

## Appendix A - filetype CURATED checklist

----------------
Suggested Citation: Author. Date Released. Title.

*This work was created as part of the Data Curation Network ...*
