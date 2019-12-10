![](DCNlogo.png)

# GeoJSON Primer

# Format Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| FIle Extension | .geojson |
| MIME Type | Application, Vendor Tree - [application/vnd.geo+json](https://www.iana.org/assignments/media-types/application/vnd.geo+json) |
| Structure | Javascript Object Notation |
| Standard | [RFC 7946](https://web.archive.org/web/20191024124836/https://tools.ietf.org/html/rfc7946) |
| Primary fields or areas of use | Geographical Information Systems (GIS), web mapping applications, mobile applications, web APIs, JavaScript web-mapping libraries, JSON-based document databases |
| Source and affiliation | Internet Engineering Task Force (IETF) |
| Metadata standards | None specific to GeoJSON |
| Key questions for curation review | <ul><li> Are coordinates listed in the following format:[longitude, latitude, elevation]</li><li> Can the file be opened in a text editor and viewed in QGIS</li><li> Does the file pass validation</li><li>Is there associated metadata/README.md files |
| Tools for curation review | QGIS; [geojsonlint.com](geojsonlint.com); [geojson.io](http://geojson.io/#map=2/20.0/0.0); ArcCatalog |
| Date Created | July 2019 |
| Created by | Nadia Dixson (City Archivist for the City of Somerville), Genevieve Milliken (NYU, Digital Library Technology Services), Keshav Mukunda (SFU Library, Data Services), Reina Murray (Johns Hopkins University, Sheridan Libraries), Rachel Starry (University at Buffalo, University Libraries). |
| Date updated and summary of changes made | |

**Suggested Citation:** Dixson, Nadia; Milliken, Genevieve; Mukunda, Keshav; Murray, Reina; Starry, Rachel. (2019). GeoJSON Data Curation Primer. Data Curation Network GitHub Repository. [REPO-LINK]

This work was created as part of the “Specialized Data Curation” Workshop #2 held at Johns Hopkins University in Baltimore, MD on April 17-18, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

# Table of Contents

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:undetermined orderedList:0 -->

- [Description of Format: What is GeoJSON?](#Description-of-Format-What-is-GeoJSON)
  - [Syntax for GeoJSON](#Syntax-for-GeoJSON)
  - [Existing GeoJSON Documentation](#Existing-GeoJSON-Documentation)
  - [Example GeoJSON Datasets](#Example-GeoJSON-Datasets)

- [Software for Opening and Viewing GeoJSON Files](#Software-for-Opening-and-Viewing-GeoJSON-Files)
    - [Validating GeoJSON Datasets](#Validating-GeoJSON-Datasets)

- [GeoJSON Metadata Standards and README Requirements](#GeoJSON-Metadata-Standards-and-README-Requirements)
  - [GeoJSON Metadata Standards](#GeoJSON-Metadata-Standards)
  - [Viewing Metadata in QGIS](#Viewing-Metadata-in-QGIS)
  - [What to Include in a README File](What-to-Include-in-a-README-File)

- [Preservation Strategy and Recommendations for Transformations](#Preservation-Strategy-and-Recommendations-for-Transformations)
  - [Shapefile](#Shapefile)
  - [GeoPackage](#GeoPackage)
  - [Conversion Tools](#Conversion-Tools)
  - [Additional options for converting GeoJSON](#Additional-options-for-converting-GeoJSON)
  - [Checking Transformations](#Checking-Transformations)
  - [Creating Metadata using ArcCatalog](#Creating-Metadata-using-ArcCatalog)
  - [Creating Metadata using mdEditor](#Creating-Metadata-using-mdEditor)

- [Evaluating GeoJSON Files for FAIRness](#Evaluating-GeoJSON-Files-for-FAIRness)
  - [What are the FAIR principles?](#What-are-the-FAIR-principles?)
  - [FAIR GeoJSON: Components Evaluated](#FAIR-GeoJSON-Components-Evaluated)
  - [Assessing GeoJSON Data for FAIRness](#Assessing-GeoJSON-Data-for-FAIRness)
  - [Findable](#Findable)
  - [Accessible](#Accessible)
  - [Interoperable](#Interoperable)
  - [Reusable](#Reusable)

- [Appendix A: Example CURATED Checklist for GeoJSON](Appendix-A-Example-CURATED-Checklist-for-GeoJSON)
  - [CURATED Checklist for GeoJSON](#CURATED-Checklist-for-GeoJSON)
    - [C - check files and read documentation](#C-check-files-and-read-documentation)
    - [U - understand (or try to) the data](#U-understand-or-try-to-the-data)
    - [R - request missing information](#R-request-missing-information)
    - [A - augment metadata and T - transform file formats for reuse](#A-augment-metadata-and-T-transform-file-formats-for-reuse)
    - [E - evaluate for fairness](#E-evaluate-for-fairness)
    - [D - document all curation activities](#D-document-all-curation-activities)

- [Appendix B: Researcher Survey Results](#Appendix-B-Researcher-Survey-Results)
  - [Survey Questions](#Survey-Questions)
  - [Survey Results](#Survey-Results)
  - [Bibliography](#Bibliography)

<!-- /TOC -->

# Description of Format

GeoJSON is a geospatial data interchange format for encoding vector geographical data structures, such as point, line, and polygon geometries, as well as their non-spatial attributes. As the name implies, it is based on JavaScript Object Notation (JSON) and continues JSON’s lightweight, plaintext, and machine-readable format, making it a versatile file type especially for web-based mapping and applications. The GeoJSON format defines several types of JSON objects to represent the structure and layout of geographic features, their properties, and their area. GeoJSON supports a single geographic coordinate reference system, the World Geodetic System 1984 (WGS84), in units of decimal degrees typically up to 7 decimal places of precision.

In GeoJSON, there are seven case-sensitive “geometry types” as defined in the OpenGIS Simple Features Implementation Specification for SQL: “Point”, “MultiPoint”, “LineString”, “MultiLineString”, “Polygon”, “MultiPolygon”, and “GeometryCollection”. These simple geometries consist of a “type” and a collection of coordinates listed as ​longitude, latitude, elevation, with elevation being optional. The seven geometry types above, together with the case-sensitive types “Feature” and “FeatureCollection”, constitute the nine “GeoJSON types”. The “Feature” and FeatureCollection” types are geometries together with their descriptive properties.

There are several advantages to GeoJSON that make it a good option for encoding geographical data. GeoJSON is text-based, editable in a text editor, uses common english words, utilizes a very simple data structure, and is easy for both humans and machines to read. Moreover, GeoJSON is a single file, unlike compressed geospatial data formats. As a result of its simplicity and versatility, it is an ideal format both for consuming and producing geospatial data. Some alternatives to GeoJSON that may be encountered include Shapefile, KML/KMZ, GML, and CSV.

Curators may also encounter the EsriJSON file format. This is a proprietary, ESRI standard for encoding spatial data in JSON structured text. It is set as the default conversion option when a spatial dataset is transformed from another vector format to JSON using the software ArcMap and ArcGIS Pro. While the format and syntax are largely similar to GeoJSON, there are some key differences, particularly in the “type” member. An explanation of how to identify an EsriJSON file is provided in the section “Recommendations for File Transformation.” If an EsriJSON file is submitted for curation, consider asking the submitter for the dataset in a different format.

## Syntax for GeoJSON

Every GeoJSON object contains a member named “type”, which must be one of the nine GeoJSON types previously mentioned. Almost all of the geometry objects also contain a member named "coordinates" listed in order as longitude, latitude, and (an optional) elevation. Elevation is expressed as the height in meters above or below the WGS84 reference ellipsoid used to approximate the earth. Here are the seven simple geometry objects that can be specified in GeoJSON:

- **Point:** For type "Point", the coordinates member is a single position. For example, a position with longitude -122.918958, latitude 49.279778, and elevation 340 in WGS84 is specified as:

<figure> <img src="IMG_1_geojson_primer.png" alt="GeoJSON syntax displaying a single point as an ordered array of longitude, latitude, and elevation." style=""> <figcaption></figcaption> </figure>

- **Linestring:** For type "LineString", the coordinates member is an array of two or more positions. This geometry consists of connected line segments:

<figure> <img src="IMG_2_geojson_primer.png" alt="GeoJSON syntax displaying a LineString comprised of three points. Points are expressed as ordered triples of longitude, latitude, and (optional) elevation." style=""> <figcaption></figcaption> </figure>

- **Polygon:** For type "Polygon", the coordinates member must be an array of one or more linear ring coordinate arrays, where each array has at least four points and the first and last points must be the same. These linear rings define boundaries of the Polygon. For Polygons with more than one of these linear rings, the first must be the exterior ring, and any others must be interior rings. The exterior ring is the boundary of the polygon, and the interior rings (if present) are the boundaries of holes within the polygon. Here is an example of a four-sided polygon with one triangular hole inside it:

<figure> <img src="IMG_3_geojson_primer.png" alt="GeoJSON syntax representing a four-sided polygon with one triangle hole inside it." style=""> <figcaption></figcaption> </figure>

- **MultiPoint:** For type "MultiPoint", the coordinates member is an array of positions. This geometry specifies a collection of points.

- **MultiLineString:** For type "MultiLineString", the coordinates member is an array of LineString coordinate arrays. This geometry specifies a collection of LineStrings.

- **MultiPolygon:** For type "MultiPolygon", the coordinates member is an array of Polygon coordinate arrays. This geometry specifies a collection of Polygons.

- **GeometryCollection:** A GeoJSON object with type "GeometryCollection" is a heterogeneous collection of point, line, and polygon geometries grouped together. A GeometryCollection has a member with the name "geometries". The value of "geometries" is an array. Each element of this array is a GeoJSON Geometry object with its own coordinates. Here is an example of a GeometryCollection that contains a MultiPoint and a Polygon:

<figure> <img src="IMG_4_geojson_primer.png" alt="GeoJSON syntax for a Geometry Collection. The collection is comprised of a single multipoint and a polygon." style=""> <figcaption></figcaption> </figure>

The last two types specified in GeoJSON describe ​Features​, which are a combination of simple geometry and their descriptive properties.

- **Feature:** An object with type "Feature" has a member with the name "geometry". This “geometry” member must be exactly one of the seven geometry objects defined above, or a null value. A Feature object also contains a member named “properties”, whose value can be any JSON object (for example, “name”, “marker-size”, “marker-color”, etc.)

- **FeatureCollection:** Feature Collection​: An object with type "FeatureCollection" has a member with the name "features". This “features” member is a JSON array of Feature objects, which were just described above.

## Existing GeoJSON Documentation

[RFC 7946](https://web.archive.org/web/20191024124836/https://tools.ietf.org/html/rfc7946) is the official documentation for GeoJSON and is maintained by the Internet Engineering Task Force (IETF). The current documentation, which was put forward by the [GeoJSON Working Group](https://web.archive.org/web/20191203073722/https://datatracker.ietf.org/wg/geojson/about/) in 2016 and replaced the original documentation 2008 (GJ2008), has undergone public review, is the consensus of the IETF community, and was approved for publication by the Internet Engineering Steering Group (IESG). The documentation provides specifications for GeoJSON, including syntax for GeoJSON objects.

## Example GeoJSON Datasets

The GeoJSON format is often a download option in geospatial data repositories, administrative open data portals, and when using certain APIs. While not an exhaustive list, examples of GeoJSON Datasets that are openly available include:

- [Australia Open Data](https://data.gov.au/search?format=GEOJSON&q=)

- [Data.gov catalog](https://catalog.data.gov/dataset?res_format=GeoJSON) (United States)

- [Government of Canada](https://search.open.canada.ca/en/od/?sort=last_modified_tdt%20desc&page=1&search_text=&od-search-portal=Open%20Data&od-search-format=GEOJSON)

- [NYC OpenData](https://opendata.cityofnewyork.us)

- [OpenPhilly](https://www.opendataphilly.org/dataset?res_format=GeoJSON&organization=city-of-philadelphia)

- [Plenar.io](http://docs.plenar.io)

# Software for Opening and Viewing GeoJSON Files

Key questions to ask:

- Can the file first be opened and viewed in a text editor before loading in geospatial software?

- Are coordinates listed in the following format: ​[longitude, latitude, elevation]

- What aspects of the visualization are important? (geometry, color scale, distribution of data, etc.)

- Is the file rendering properly as an individual layer and with a base map?


While there are many web-based and desktop software options for viewing GeoJSON, the free and open-source software [QGIS](https://qgis.org/en/site/) is recommended. QGIS supports MacOS, Windows, and Linux, allows for numerous vector, raster, and database formats, and has a robust user community. Below is a walkthrough for loading and viewing GeoJSON in QGIS 3.8. Supplemental instructions on opening data in QGIS can be found in the [QGIS User Guide](https://web.archive.org/web/20191024130221/https://docs.qgis.org/testing/en/docs/user_manual/managing_data_source/opening_data.html?highlight=geojson). This walkthrough uses the [Habitat Blocks and Wildlife Corridors](https://web.archive.org/web/20191030124350/https://catalog.data.gov/dataset/habitat-blocks-and-wildlife-corridors) in Vermont dataset.

<figure> <img src="IMG_5_geojson_primer.png" alt="QGIS interface" style=""> <figcaption>Fig. 1 Begin by going to “Project” in the QGIS toolbar and selecting “New” from the dropdown menu. </figcaption> </figure>

----------------
<figure> <img src="IMG_6_geojson_primer.png" alt="Adding vector layer to QGIS" style=""> <figcaption>Fig. 2 After creating a new project, add the GeoJSON as a new layer. This can be done by going to “Layer” in the QGIS toolbar and selecting “Add Vector Layer...”</figcaption> </figure>

----------------
<figure> <img src="IMG_7_geojson_primer.png" alt="Locating file to load in QGIS" style=""> <figcaption>Fig. 3 Select the ellipsis [...] box and then select the GeoJSON you would like to view.</figcaption> </figure>

----------------
<figure> <img src="IMG_8_geojson_primer.png" alt="QGIS interface with layer added" style=""> <figcaption>Fig. 4 The GeoJSON has been loaded as a layer and is now shown in the “Layers” sidebar located on the bottom left.</figcaption> </figure>

----------------
<figure> <img src="IMG_9_geojson_primer.png" alt="Basemap added to map in QGIS" style=""> <figcaption>Fig. 5 A basemap can be added so that the layer is given context. To add a basemap in QGIS, go to “Plugins”, then “Manage and Install Plugins.” In the search box enter “QuickMapServices”. After adding this plugin, a global icon with a plus sign will be available on the toolbar. Use this to add one of the several basemaps available from QMS. [Alternatively, you can add the plugin “OpenLayers”. After adding this plugin, an OpenStreetMap basemap will be a nested option under XYZ Tiles located in the “Browser” sidebar to the left.]</figcaption> </figure>

----------------
While QGIS is the preferred software for viewing geospatial data, other software and platforms exist. Some options include, but are not limited to, the following. Please note that some options may be subscription-based:

- [geojson.io](http://geojson.io/#map=2/20.0/0.0) (free, browser-based; useful for validating small .geojson files)

- [ArcGIS Pro](https://www.esri.com/en-us/arcgis/products/arcgis-pro/overview) (proprietary, desktop software; best alternative to QGIS if available)

- [OpenStreetMap](https://www.openstreetmap.org/#map=4/38.01/-95.84) (free, open-source, browser-based)

## Validating GeoJSON Datasets

Key questions to ask:

- Is this dataset a valid GeoJSON file?

- Can you map it using an online validation service or desktop GIS software?

- If you come across errors when validating the GeoJSON, are these recoverable errors?

Validating GeoJSON can be conducted on a few web-based validation services. One of the recommended web-based services is [GeoJSONLint](http://geojsonlint.com). Linting is the process of running a program that analyses code for potential syntax errors. To validate using GeoJSOLint, GeoJSON files can be copied and pasted or dropped into the provided text box. Examples of the nine GeoJSON types are also available via the dropdown headers in GeoJSONLint, all which can be used as additional reference examples. Please note that GeoJSONLint closely follows the most recent syntax and returns error codes identifying where problems occur. These errors may be minor and files could operate normally even with these errors. Viewing the file in [QGIS](https://qgis.org/en/site/) and/or [geojson.io](http://geojson.io/#map=2/20.0/0.0) in addition to linting is advisable and recommended.

<figure> <img src="IMG_10_geojson_primer.png" alt="GeoJSONLint web application" style=""> <figcaption>Fig. 6 Web Interface for validating GeoJSON of New York City Bike Lanes with GeoJSONLint</figcaption> </figure>

------------------------------
# GeoJSON Metadata Standards and README Requirements

*Key Questions to Ask:*

- Is there a separate metadata file? If yes, is it complete? If not, is there metadata stored in the GeoJSON file?

- Is the GeoJSON filename adequately descriptive?

- Are the recommended minimum requirements for README files met?

## GeoJSON Metadata Standards

Currently, there is no metadata standard for GeoJSON. <sup>1</sup> As there is no particular standard, it is recommended that the curator select a metadata standard that best fits the repository’s needs and/or policies. Metadata should be stored in a separate XML metadata file, rather than in the GeoJSON file itself. Finally, a README file should be prepared for each GeoJSON file. Descriptions of the most common geospatial metadata standards are available in the [Geodatabase Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Geodatabase%20Data%20Curation%20Primer/Geodata-Primer.md#geospatial-metadata-standards).

If a separate XML metadata file exists, it can be viewed using a text editor. If a separate metadata file does not exist and it is unclear what, if any, metadata is in the GeoJSON file itself, QGIS can be used to view a GeoJSON’s metadata.

<p  id="note1"><sup>1</sup> Gillies, S. (2016, August 17). Re: [Geojson] metadata in GeoJSONgeojson. Retrieved from https://mailarchive.ietf.org/arch/browse/geojson/?q=metadata </p>

### Viewing Metadata in QGIS

After a GeoJSON layer is added to a project in QGIS, metadata can be viewed using the properties menu.

<figure> <img src="IMG_11_geojson_primer.png" alt="Checking properties on layer in QGIS" style=""> <figcaption>Fig. 7 In QGIS, right-click on the layer and select “Properties”.</figcaption> </figure>

--------------------------
<figure> <img src="IMG_12_geojson_primer.png" alt="Metadata pane in Layer Properties in QGIS" style=""> <figcaption>Fig. 8 The properties menu includes a metadata tab, in addition to tabs providing general information, Coordinate Reference System (CRS) and source fields.</figcaption> </figure>

--------------------------
In QGIS, the completeness of the metadata can be assessed by examining the information in the metadata tab. However, it is important to note that QGIS currently does not offer ways to view metadata using geospatial metadata standards such as ISO 191xx. Additionally, edits made to the metadata will not be preserved when converting the file to another format. The section *Preservation Strategy and Recommendations for Transformations* below gives details on metadata creation and augmentation.

### What to Include in a README File

A README file provides information about a data file and ensures that data can be correctly interpreted by others. They are normally written as text files or as markdown. Below is a list of the recommended minimum content need to describe a data file. For more information about README files, please see the Cornell “[Guide to writing "readme" style metadata](http://web.archive.org/web/20191029170357/https://data.research.cornell.edu/content/readme).”

General Information:

- Title of GeoJSON file

- Name/institution/address/email information of author or PI

- Date of data collection (can be a single date, or a range)

- Information about geographic location of data collection

Data and File Overview:

- a short description of what data it contains

- Date that the file was created

- What other datasets or data sources (if any) were combined to create this GeoJSON file? How are they
referenced?

Sharing and Access Information:

- Licenses or restrictions placed on the data

Methodological Information:

- Description of methods used for data processing (describe how the data were generated from the raw or collected data)

- Any software or instrument-specific information needed to understand or interpret the data, including software and hardware version numbers.

- If data pertains to human subjects or endangered species or is otherwise sensitive, have data been sufficiently anonymized?

# Preservation Strategy and Recommendations for Transformations

While GeoJSON is a relatively young file type, it is widely used and has become one of the most common formats for spatial vector data, particularly for web-based projects. It is an approved international standard and is well documented. Finally, because GeoJSON is written in plaintext, it is well suited for preservation.

However, GeoJSON is just one of several commonly used geospatial file types. In a survey released in July 2019 for this primer, 100% of respondents stated that they regularly create or use shapefile data. While GeoJSON is an excellent format for preservation, only 11.1% responded that they always reuse data in GeoJSON format. The majority do not—55.6% responding sometimes, 27.8% responding rarely, and 5.5% responding never. It is therefore recommended to convert GeoJSON files into other file formats to ensure broad data access.

Because some of these other file formats run the risk of becoming obsolete over time or are proprietary, it is recommended to keep both the original GeoJSON file and the conversion files such as shapefile and GeoPackage (descriptions below), and document all of this in an accompanying README file.

### Shapefile

Shapefiles are a proprietary geospatial format created by Esri. While proprietary, it is one of the most widely used file formats for vector spatial data. It is well established and considered a de facto standard in many cases. It can be read by popular GIS desktop software, such as Esri’s ArcGIS Pro and ArcMap, as well as the open source GIS desktop software QGIS. However, its file size is restricted to 2 GB, it is proprietary, and it is a multi-file format that is difficult to read and share without using the proper software and precautions. Shapefiles also have a limited number of columns they can hold. It is recommended that a shapefile version be saved along with the original GeoJSON file.

### GeoPackage

The [GeoPackage](https://web.archive.org/web/20191024131431/http://www.geopackage.org/) is a relatively young file format that is becoming increasingly popular and adopted, particularly among the open source community. Its encoding standard was adopted by the OGC in 2014. It is an open, non-proprietary, platform-independent, and standards-based data format for geographic information systems implemented as a SQLite database container. It is now the default vector spatial file format in QGIS, replacing the shapefile as of QGIS version 3. Because it is platform-independent, it is broadly implemented and can be used in GIS desktop software such as ArcGIS and QGIS, but also with programming languages such as R and Python. It is also lightweight and fast. It is recommended that a GeoPackage version be saved along with the original GeoJSON file.

### Conversion Tools

While there are a number of conversion tools available to transform a GeoJSON file to another format, it is recommended to use QGIS because of its ability to convert to both data formats listed above. A walkthrough for converting GeoJSON to a shapefile in QGIS is provided below. Note: an additional explanation of saving a layer as a shapefile is provided in the [Geodatabase Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Geodatabase%20Data%20Curation%20Primer/Geodata-Primer.md#geospatial-metadata-standards).

----------------------------
<figure> <img src="IMG_13_geojson_primer.png" alt="Export option in QGIS" style=""> <figcaption>Fig. 9 Right-click on layer and select “Export” and “Save Features As...”.</figcaption> </figure>

-----------------------------
<figure> <img src="IMG_14_geojson_primer.png" alt="Entering parameters to save vector layer" style=""> <figcaption>Fig. 10 Change format to “Esri Shapefile” or “GeoPackage”. Click on “...” and navigate to a folder to save the file. Enter a file name in the new window prompt. Click OK.</figcaption> </figure>

------------------------------
<figure> <img src="IMG_15_geojson_primer.png" alt="Entering file name for new vector layer in QGIS" style=""> <figcaption>Fig. 11 Notice that the file name includes the full path. The full path is required to avoid generating an error. Leave encoding as UTF-8. Leave CRS as EPSG:4326 - WGS84. Do not resize the data. Click OK to finish conversion. </figcaption> </figure>

------------------------------
While QGIS is recommended for transforming file formats, other software and platform options exist:

- ArcGIS Pro and ArcGIS Desktop: [JSON to Features conversion tool](http://web.archive.org/web/20191029170611/https://pro.arcgis.com/en/pro-app/tool-reference/conversion/json-to-features.htm)
ArcGIS Pro and ArcGIS Desktop (also known as ArcMap) are part of Esri’s suite of geospatial desktop software. Both offer a geoprocessing tool, JSON to Features, which can convert JSON and GeoJSON files to feature layers.

- Note on Esri’s [Features to JSON conversion tool](http://web.archive.org/web/20191029170647/https://pro.arcgis.com/en/pro-app/tool-reference/conversion/features-to-json.htm): Esri also provides a geoprocessing tool, Features to JSON, which converts spatial data to JSON or GeoJSON format. It is important to note that Esri’s proprietary version of a GeoJSON, known as EsriJSON, is created if the “Output to GeoJSON” parameter is not checked.

- While similar to a GeoJSON file, an EsriJSON has its own categories for certain syntax, such as “esriGeometryType” for geometryType and “esriFieldTypeOID” for type. The full list of field types can be found on Esri’s documentation for [ArcGIS REST API services](https://web.archive.org/web/20191029170736/https://developers.arcgis.com/rest/services-reference/layer-feature-service-.htm).

- EsriJSON supports any coordinate reference system and preserves other Esri-proprietary file format structures, like the GlobalID in geodatabases. The file name also ends with ‘.json’, as opposed to ‘.geojson’.

------------------------------
<figure> <img src="IMG_16_geojson_primer.png" alt="ArcGIS Pro interface for exporting to JSON/GeoJSON" style="">Fig. 12 Leaving “Output to GeoJSON” unchecked in ArcGIS Pro will result in the creation of an EsriJSON file. <figcaption></figcaption> </figure>

------------------------------
<figure> <img src="IMG_17_geojson_primer.png" alt="EsriJSON syntax in notepad++" style=""> <figcaption>Fig. 13 Example of EsriJSON syntax.</figcaption> </figure>

------------------------------
When validating a file, online validation platforms like GeoJSONlint will throw an error if an EsriJSON file is pasted in. The file should also be examined in QGIS. To see if a file is an EsriJSON file as opposed to a GeoJSON file, check the layer properties in QGIS; the CRS could be something other than EPSG:4326 - WGS84, and the storage type will be “EsriJSON”.

------------------------------
<figure> <img src="IMG_18_geojson_primer.png" alt="Layer properties in QGIS for EsriJSON file" style=""> <figcaption>Fig. 14 In Layer Properties, the storage type is set to “ESRIJSON”, and for this particular file, the CRS is EPSG:2249, a CRS not supported by GeoJSON.</figcaption> </figure>

------------------------------
While similar to GeoJSON, EsriJSON is a proprietary format developed and managed by Esri. If an EsriJSON file is submitted for curation, the data owner should be contacted and asked to provide the original dataset in another file format if possible.

------------------------------
### Additional options for converting GeoJSON

- [Mapshaper](https://web.archive.org/web/20191029171147/https://mapshaper.org/)is a free software for editing shapefile, GeoJSON, TopoJSON, CSV and other data formats. It can be used to convert easily from one file format to another, and can be operated from the command line, but also through a web user interface. Instructions on converting a GeoJSON file to shapefile is [documented by StatSilk](https://web.archive.org/web/20191024131646/https://www.statsilk.com/maps/convert-geojson-esri-shapefile-map-format).

- The [ogr2ogr](https://web.archive.org/web/20191024131558/https://gdal.org/programs/ogr2ogr.html) package is part of the Geospatial Data Abstraction Library and provides a way to convert data between common geospatial file formats, including GeoJSON, shapefiles, and GeoPackages. It can be downloaded as part of the [FW Tools Toolkit](https://web.archive.org/web/20190711172245/http://fwtools.maptools.org/), and is usually run from the command line with the following syntax: ogr2ogr -f "file_format" destination_data source_data

## Checking Transformations

After converting a GeoJSON dataset to both shapefile and GeoPackage format, confirm that both transformations were completed successfully using QGIS. These new data formats can be opened following the steps outlined in the earlier section ​Software for Opening and Viewing GeoJSON Files​. Verify that the newly created shapefile and GeoPackage can be opened successfully. Compare the number of features in the original dataset with the new version to ensure that no data was lost in the process of file transformation.

--------------------------------
<figure> <img src="IMG_19_geojson_primer.png" alt="Layer properties in QGIS showing feature count and fields information" style=""> <figcaption>Fig. 15 In layer properties, the Information tab provides details on the feature count and fields. Inspect the feature count and the fields in the original dataset and in the newly converted datasets and confirm that they are the same.</figcaption> </figure>

--------------------------------
## Creating Metadata using ArcCatalog

One option for creating metadata for geospatial files involves using ArcCatalog, which is part of the Esri ArcGIS for Desktop suite. The program, however, does not recognize or allow previewing GeoJSON files. As a result, it is necessary to first convert a GeoJSON file to a shapefile using the steps above. The shapefile is then opened in ArcCatalog, which allows for the creation of a separate metadata XML file that can be stored alongside the original GeoJSON file.


In ArcCatalog, the metadata style can be set by going to “ArcCatalog Options”, and clicking on the “Metadata” tab as demonstrated below. More information on the metadata styles and standards supported in ArcCatalog can be found on [Esri's metadata styles and standards documentation page](http://web.archive.org/web/20191026034158/http://desktop.arcgis.com/en/arcmap/latest/manage-data/metadata/metadata-standards-and-styles.htm).

---------------------------------
<figure> <img src="IMG_20_geojson_primer.png" alt="Changing metadata style in ArcCatalog" style=""> <figcaption>Fig. 16 Metadata styles can be set through the ArcCatalog Options pane.</figcaption> </figure>

---------------------------------
After selecting a metadata style, establish a connection to the folder where the converted shapefile is located. To view the metadata for a specific file, click on the description tab. To edit the metadata, click “Edit”. This will display the metadata for the file, using the metadata style selected. Items that are required will be identified with a red ‘x’ in the left-hand navigator, and across the top for each section.

---------------------------------
