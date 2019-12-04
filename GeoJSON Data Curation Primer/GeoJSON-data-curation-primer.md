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

![]()

- **Linestring:** For type "LineString", the coordinates member is an array of two or more positions. This geometry consists of connected line segments:

![]()

- **Polygon:** For type "Polygon", the coordinates member must be an array of one or more linear ring coordinate arrays, where each array has at least four points and the first and last points must be the same. These linear rings define boundaries of the Polygon. For Polygons with more than one of these linear rings, the first must be the exterior ring, and any others must be interior rings. The exterior ring is the boundary of the polygon, and the interior rings (if present) are the boundaries of holes within the polygon. Here is an example of a four-sided polygon with one triangular hole inside it:

![]()

- **MultiPoint:** For type "MultiPoint", the coordinates member is an array of positions. This geometry specifies a collection of points.

- **MultiLineString:** For type "MultiLineString", the coordinates member is an array of LineString coordinate arrays. This geometry specifies a collection of LineStrings.

- **MultiPolygon:** For type "MultiPolygon", the coordinates member is an array of Polygon coordinate arrays. This geometry specifies a collection of Polygons.

- **GeometryCollection:** A GeoJSON object with type "GeometryCollection" is a heterogeneous collection of point, line, and polygon geometries grouped together. A GeometryCollection has a member with the name "geometries". The value of "geometries" is an array. Each element of this array is a GeoJSON Geometry object with its own coordinates. Here is an example of a GeometryCollection that contains a MultiPoint and a Polygon:

![]()

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

![]()

![]()

![]()

![]()

![]()

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

![]()

