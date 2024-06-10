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

Note how the dataset abstracts include lineage and tools used to create the shapefiles.

Shapefile datasets:

[TIGER/Line Shapefiles](https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.2023.html#list-tab-790442341)

The TIGER/Line Shapefiles are extracts of selected geographic and cartographic information from the Census Bureau's Master Address File (MAF)/Topologically Integrated Geographic Encoding and Referencing (TIGER) system. The shapefiles include information for the fifty states, the District of Columbia, Puerto Rico, and the Island  areas (American Samoa, the Commonwealth of the Northern Mariana Islands, Guam, and the United States Virgin Islands). The shapefiles include polygon boundaries of geographic areas and features, linear features including roads and hydrography, and point features.

[Geospatial Dataset of Roads and Settlement Features for the Chesapeake Bay Eastern Shore Region of Maryland, USA, 1865](https://doi.org/10.7910/DVN/KPILKU)

This dataset contains geospatial (GIS) data files that capture historical roads and points of interest for the Chesapeake Bay Eastern Shore region of Maryland, as derived from Simon J. Martenet's Map of Maryland: Atlas Edition (1866). Maryland counties covered include present-day Cecil, Caroline, Dorchester, Kent, Queen Anne’s, Somerset, Talbot, Wicomico, and Worcester counties. Geospatial data layers include roads, landings, ferries, churches, shops, mills, schools, hotels, towns with post offices, and towns with court houses. These data can be used to support historical geographic, economic, social, and cultural analyses.

Note:The README file includes additional details about data sources, digital map creation methods, and spacial reference information. 

[Twin Cities Land Use Map from the Twin Cities Metropolitan Planning Commission (1958)](https://geo.btaa.org/catalog/b98a7b39-830a-48ca-84c2-06332aaebbb8#metadata)

High-quality GIS land use maps for the Twin Cities Metropolitan Area for 1958 that were developed from paper maps (no GIS version existed previously). The GIS shapefiles were exported using ArcGIS Quick Import Tool from the Data Interoperability Toolbox. The coverage files was imported into a file geodatabase then exported to a .shp file for long-term use without proprietary software. An example output of the final GIS file is include as a pdf, in addition, a scan of the original 1958 map (held in the UMN Borchert Map Library) is included as a pdf. Metadata was extracted as an xml file. Finally, all associated coverage files and original map scans were zipped into one file for download and reuse.

Geospatial Data Repositories:

[GeoPlatform](https://www.geoplatform.gov) 

GeoPlatform suports discovery and registering geospatial data assets with special emphasis on 177 NationalGeospatial Data Assets (NGDAs) across 18 data themes as guided by the Federal Geographic Data Committee (FGDIC).

[ScienceBase](https://www.sciencebase.gov/catalog/#)

ScienceBase is a U.S. Geological Survey (USGS) Trusted Digital Repository providing access to scientific data products and resources.

[The Big Ten Academic Alliance Geospatial Information Network (BTAA-GIN)](https://btaa.org/library/programs-and-services/geoportal)

BTAA-GIN is a collaboration of library-affiliated staff from Big Ten Academic Alliance universities. The program aims to support the geospatial research community by building and maintaining a collective open-source spatial data infrastructure featuring metadata optimized for spatial discovery platforms.  The BTAA Geoportal contains images, scanned maps, and geospatial data in Shapefile format.


## Sample data set citations (lh)

APA style:

United States Census Bureau, 2023. 2023 TIGER/Line Shapefiles: States (and equivalent) (machine readable data files). U.S. Department of Commerce. [https://www.census.gov/cgi-bin/geo/shapefiles/index.php](https://www.census.gov/cgi-bin/geo/shapefiles/index.php), (Accessed 2 June 2024)

Harvard Dataverse suggested citation:

Mennis, Jeremy; Yuen, Kai, 2023, "Geospatial Dataset of Roads and Settlement Features for the Chesapeake Bay Eastern Shore Region of Maryland, USA, 1865", [https://doi.org/10.7910/DVN/KPILKU](https://doi.org/10.7910/DVN/KPILKU), Harvard Dataverse, V1 (Accessed 9 June 2024)

BTAA-GIN suggested citation:

Chen, Wei, Levinson, David M. (2013). Twin Cities Land Use Map from the Twin Cities Metropolitan Planning Commission (1958). University of Minnesota. [http://dx.doi.org/10.13020/D6059J](http://dx.doi.org/10.13020/D6059J) (dataset) (Accessed 9 June 2024)


USGS suggested citation:

Seymour, W. A., and Traum, J. A., 2021, Petaluma Model GIS Data: U.S. Geological Survey data release, [https://doi.org/10.5066/P9IQDHIT](https://doi.org/10.5066/P9IQDHIT), (Accessed 9 June 2024).

Seven typical elements include Author, Publication, Year, Title of the data, Publisher, Digital Object Identifier (DOI), and Access Date and Time. If relevant, you may add other elements, such as query parameters, direct access link, data format, 3r party producer, editor or contributor, publication place, and data within a larger work. Source: [USGS Data Citation](https://www.usgs.gov/data-management/data-citation#elements).

##  Key questions to ask yourself (lh)

Are there any shapefiles missing from the zipfile? At minimum, there should be three shapefiles:.shp, .shx, and .dbf.

Do all shapefiles have the same prefix (e.g., ferries.shp, ferries.shx, and ferries.dbf)?

Are there obvious georeference errors such as animals, plants, buildings, or parks mapped to the wrong country or hemisphere? This could be caused by missing projection coordinate metadata, which are contained in the .prj shapefile.

Are there polygons with misaligned edges, appearing as overlapping areas or gaps between polygons representing adjacent areas, such as lots, neigborhoods, cities or counties. This is a particular concern with shapefiles because they do not contain topological information (spatial relationships), such as borders.

Did the researcher include data reuse limitations in the metadata or documentation? 

Example: "The boundary information in the TIGER/Line Shapefiles is for statistical data collection and tabulation purposes only. Their depiction and designation for statistical purposes does not constitute a determination of jurisdictional authority or rights of ownership or entitlement and are not legal land descriptions." [TIGER/Line Shapefile Legal Disclaimers](https://www2.census.gov/geo/pdfs/maps-data/data/tiger/tgrshp2023/TGRSHP2023_TechDoc_Ch1.pdf).


5.  Key clarifications to get from researcher (lh)

Was the data transferred from a geodatabase to a shapefile format?  

If so, there could be significant data loss since shapefiles do not support advanced features, such as time values in the date field, null values, location subtypes (e.g, arterial streets, local streets), field type attribute rules (e.g, coded values, limited number ranges), and topography, as mentioned in Key questions to ask yourself. In addition, the overall file size is limited to 2 gigabytes. See [Geoprocessing Considerations for Shapefile Output](https://desktop.arcgis.com/en/arcmap/latest/manage-data/shapefiles/geoprocessing-considerations-for-shapefile-output.htm)

Where does the raw data come from, and how does it end up in this form? 

Data digitized from georeferenced images should cite the underlying georeferenced source. In addtion, the software and hardware used to produce and/or work with this data should be described. See [Preserving Geospatial Data](http://doi.org/10.7207/twr23-01), page 5.
If ArcGIS was used, the version should be indicated.

What aspects of the visualization are important (e.g., scale, boundary lines, buildings, topgraphy, resolution, color)?

What dates do the non-geospatial data cover (e.g., historic land use designations, historical railroad stations)?

What dates do the geospatial data cover (e.g, cities, states, countries)?

What kind of documentation or metadata about your data, data sets, or files has been created?


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
