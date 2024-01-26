![](DCNlogo.png)

# Archaeology Data Primer

Authors: Maria Arteaga Cuevas, Rachel Fernandez, and Hollis Wittman

DCN Mentor: Sophia Lafferty-Hess, Duke University (sophia.lafferty.hess@duke.edu)

Affiliate Contributors (external peer reviewers): Eric C. Kansa, PhD (Open Context), John South (University of North Texas) 


# Executive Summary

|   Topic   |   Description   |
| :------------- | :------------- |
| Primary fields or areas of use | Archaeology, Anthropology, Cultural Heritage Preservation |
| Metadata standards | Variations of Dublin Core |
| Key questions for curation review | <li>Is there data that could identify protected sites, peoples, or cultural sensitive information? If so, has it been de-identified, and how?</li><li>Are there supplementary data files included such as README, coding sheets, photo logs, or field manuals?</li> <li>If the data includes interviews or information from individuals, are necessary documents like consent forms present? </li> <li>Is the metadata rich and unambiguous to ensure interoperability and prepare for reuse? </li> <li>Is the data prepared for long term preservation?</li> |
| Date Created | April 25, 2023 |
| Created By | Maria Arteaga Cuevas, Rachel Fernandez, and Hollis Wittman |
| Date updated and summary of changes made | August 23, 2023, peer review feedback addressed. |


**Suggested Citation:** Arteaga Cuevas, Maria; Fernandez, Rachel; and Wittman, Hollis. (2023). Archaeology Data Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)


# Table of Contents

[Scope](#scope)

[Data Types](#data-types)

[Data Repositories](#data-repositories)
[Repository Types](#repository-types)
>[Selecting a Repository](#selecting-a-repository)

[Metadata](#metadata)
[Metadata Standards](#metadata-standards)
>[Archaeology Specific MetadataFields](#archaeology-specific-metadata-fields)<br>
>[Supplementary Documentation](#supplementary-documentation)

[Ethical and Legal
Considerations](#ethical-and-legal-considerations)
[CARE Principles](#care-principles)
>[Open Data and Data Accessibility](#open-data-and-data-accessibility)

[Example Data Sets](#example-data-sets)

[CURATED Checklist](#curated-checklist)

[Related Primers](#related-primers)

[Resources](#resources)

[Additional Recommended Reading](#additional-recommended-reading)

[Bibliography](#bibliography)

[Appendix 1: FAIR Principles](#appendix-1-fair-principles)<br>
>[Findable](#findable)<br>
>[Accessible](#accessible)<br>
>[Interoperable](#interoperable)<br>
>[Reusable](#reusable)

# Scope

Archaeology is the study of the human past through the analysis of material remains. Preservation of material remains is crucial to the understanding and sharing of different cultures. As many aspects of archaeological methodology destroy the very record they are analyzing, documentation is critical to this field (Richards et al, 2021). Consequently, the analysis and context recorded through these archaeological investigations and the data from artifacts is key.

In regards to digital curation, it is important to understand that archaeological data are as varied as the cultures and material that are studied. Thus, this primer will not cover the entire scope of the field of archaeology, but hopes to serve as a starting point for curators and data managers to understand what data is produced and how they can be prepared for reuse.

# Data Types

Archaeologists produce and collect data in various formats. Typically organized around specific cultures, projects, or site investigations, archaeological data will consist of field notes, project reports, drawings, site and artifact photographs, photogrammetry and VR, databases, and geospatial data.

While documents and photographs make up a large portion of the data, in the past several decades archaeologists have begun to produce large amounts of geospatial and 3D materials and are early adopters of new and evolving technology.

Below you will find a table with the most common data types you may come across, and their recommended formats based on the [Library of
Congress, Summary of Digital Format Preferences](https://www.loc.gov/preservation/resources/rfs/format-pref-summary.html). For more information on the different types, please refer to the
[Guides to Good Practice](https://ariadne-infrastructure.eu/best-practice-guides-for-data-preservation-and-archiving/) which was updated in 2023 to reflect current practices within the field of archaeology.

Note - because of the range of data types reflected here, there are existing primers that may be helpful to review. For example, if you are working with data from an oral history project, please see the [Oral History Interviews Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Oral%20History%20Interviews%20Data%20Curation%20Primer/oral-history-interviews-data-curation-primer.md); Geographic data: [GeoDatabase Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Geodatabase%20Data%20Curation%20Primer/Geodata-Primer.md); and Qualitative Data: [Qualitative Data Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Qualitative%20Data%20Curation%20Primer/qualitative-data-curation-primer.md).

|**Data type**                             |**Recommended File Formats**             |
|---------------------------------------------|--------------------------------------------|
| Documents                                   | .pdfa, .pdf, .txt                          |
| Photographs/Drawings                        | .tif, .jpg                                 |
| Databases                                   | .csv, .xlsx, .db                           |
| Video                                       | .avi, .mov, .mp4                           |
| Audio                                       | .wav, .aiff, .mp3                          |
| GIS                                         | shapefiles, geodatabases, GeoJSON, GeoTIFF |
| 3D & Virtual Reality (Scanned 3D objects)   | .x3d, .obj, .ply, .stl, .tif               |
| Lidar (Laser Imaging Detection And Ranging) | .las, .laz                                 |

Table 1: Data Types and Recommended File Formats

# Data Repositories

The Archaeological Institute of America’s (AIA) [Code of Professional Standards](https://www.archaeological.org/code-of-professional-standards/) state that it is the professional responsibility of the archaeologist to “provide for adequate and accessible long-term storage and curatorial facilities for all archaeological materials, records, and archives, including machine-readable data, which require specialized archival care and maintenance” (AIA, 2008). 

## Repository Types

Tasked with the digital curation of archaeological data, archaeologists are often unaware of the existing options they have to meet this standard. In general, there are two main types of repositories that researchers can consider for archiving their data: institutional and domain repositories.

Institutional repositories are located within specific institutions and built to host data from researchers and projects across that institution. Because of their scope, institutional repositories allow deposits from researchers across different fields that attend the same university.

Domain repositories on the other hand typically concentrate on one type of file or specific field. Archaeological repositories focus on preserving archaeological and cultural heritage data and provide specialized curation and metadata tools. Examples of archaeological repositories include: [the Digital Archaeological Record (tDAR)](https://www.tdar.org/) run by the Center for Digital Antiquity at Arizona State University and the [Archaeology Data Service (ADS)](https://archaeologydataservice.ac.uk/) run out of the University of York in the UK.

You may also find various digital collections, data publishing, and stand alone websites that host archaeological data, but do not necessarily focus on the archival and preservation facets of repositories. For instance, the data publishing service [OpenContext](https://opencontext.org/), will curate and publish the researcher’s data, but uses the University of California's
California Digital Library (CDL) Merritt repository and Zenodo for archiving (Open Context, Digital Archiving).

|   Type   |   Benefits   |   Challenges   |
| :------------- | :------------- | :------------- |
|   Institutional   |   <li>Free / low price</li> <li>Unlimited / large file space</li> <li>Preservation focus</li> <li>Local support and curation (varies)</li>   |   <li>General metadata and access</li><li>Non-archaeology expertise</li>   |
|   Domain  |   <li>Preservation</li><li>Specific metadata</li><li>Expertise</li><li>Accessibility</li><li>Mechanisms to handle sensitive content</li>   |   <li>Cost</li><li>File limits (space & type)</li><li>Limits on the metadata customization</li>   |
|   Other   |   <li>Appealing digital collections</li><li>Curation and publication of data</li>   |   <li>Preservation not main focus</li>   |



## Selecting a Repository

When selecting the right repository, a curator can help guide researchers with the following considerations: 

- **Sustainability**

  -  Is the repository accepting the data sustainable in the long term? 

  -  Is there a plan to protect the data in the case of natural disaster or financial collapse? 

  -  How are repository services priced? 

- **Quality Assurance**

  -  What kind of checks are in place to ensure long term data integrity? 

  -  Does the repository follow generally accepted digital preservation best practices? 

- **Access**

  -  Does the repository match the needs of its users to the accessibility of the data? 

  -  Will the data be given persistent identifiers and be labeled using controlled vocabularies? 

  -  Will data be available in common formats that do not require unusual hardware or software to provide access? 

  -  How is data accessed once it is deposited? By you? By the public? 

- **Files**

  -  What file formats are accepted? 

  -  How are files deposited? 

  -  Is there appropriate metadata? 

# Metadata

Preserving accurate metadata is crucial for archaeological data. You will want to ensure that your data is maintained as ethically as possible and that it follows consistent standards to facilitate access and reuse. This should be done in partnership with the researcher(s) providing the data as much as possible; though the data is generally received at the end of the project and standardization often falls exclusively to the curator, collaboration during earlier parts of the project can make the process easier for all involved parties.

## Metadata Standards 

Most archaeological datasets utilize [Dublin Core](https://www.dublincore.org/) metadata structures, though often with some modifications. Broadly speaking, there are five categories of
metadata to collect, which can apply to both individual items and collections as whole:

1. **Administrative**: details the use of the collection and the rights associated with it as a whole

2. **Descriptive**: describes the data itself, both as a whole and in terms of individual items

3. **Preservation**: lists actions taken to preserve the data and other information relating to collection management

4. **Technical**: data related to how systems or data behave

5. **Use**: recounts how users might utilize data

Using a metadata schema with a Dublin Core base is recommended due to its open source nature as well as avoiding “reinventing the wheel.” Many organizations have begun to address expansions to Dublin Core metadata to appropriately address archaeological data. The repository tDAR uses Dublin Core as a base for its metadata schema and has added other archaeological specific metadata fields to ensure adequate data is captured. Other platforms such as ADS and ARIADNEplus do not use Dublin Core, rather an implementation of the application profile of CIDOC-CRM,
known as the AO-CAT Model. [CIDOC CRM](https://cidoc-crm.org/) is an object-oriented conceptual model used for describing cultural heritage data. Use of the specific AO-CAT profile has facilitated interoperability between these platforms and has been modeled specifically for cultural heritage data. You can find more documentation on their metadata structure here: [Archaeology Data Service Metadata Standards](https://archaeologydataservice.ac.uk/about/policies/metadata/strategy-and-standards/) and [ARIADNEplus](https://ariadne-infrastructure.eu/producing-metadata-for-archaeological-datasets/).

Curators are encouraged to pay specific attention to a number of metadata fields specific to archaeological data. Though the specific fields necessary will vary from project to project, the following list of fields are found in most archaeological datasets and should be included in metadata schema describing them.

### Archaeology Specific Metadata Fields

- Site Name(s) & Site Numbers

- Site Types

- Geographic Site Location

- Cultural Keywords

- Materials

- Investigation Types

- Period Date

- Project Date(s)

- Subject(s)

In addition to choosing an appropriate metadata schema, it is vital to choose appropriate controlled vocabularies to describe archaeological data. Each project will require different vocabularies depending on the type of data being collected. Some helpful ontologies and controlled vocabularies to review include:

- [PeriodO](https://perio.do/en/): scholarly definitions of historical and archaeological time periods;

- [Getty AAT](http://vocab.getty.edu/): the Getty Museum Art and Architecture Thesaurus;

- [Pleiades](https://pleiades.stoa.org/): community-built gazetteer and graph of ancient places;

- [Wikidata](https://www.wikidata.org/wiki/Wikidata:Main_Page): open database of structured data with unique identifiers that can be used for linked data for archaeological terms. Not specific to archaeology.

## Supplementary Documentation

Supplementary documentation and files are necessary to provide complete context for archaeological information. This can come in the form of:

- **README:** text file that provides a description of the data and may include the methodology of how the data was produced and sources of external data used.

- **Photo Logs:** found with the photographs of the project and will contain file information alongside additional metadata such as site numbers, location, and photographer.

- **Manuals and Reports:** Project manuals and reports give context to the data by providing a broad overview of the methodology and purpose of the project, along with framing the data alongside the research objectives.

- **Ontologies and Controlled Vocabularies:** a hierarchical list of terms that shows the relationships between different concepts and it can be used to match distinct datasets. Ontologies and controlled vocabularies typically accompany datasets and are used for semantic and linked open data.

- **Coding Sheets:** list of codes and their definitions used within the data. Ideally, data will be decoded; coding sheets are difficult to maintain and keep current, but if coded data is present, coding sheets should be as well.

Further, the data curator should encourage archaeologists to maintain referential integrity in the data. Referential integrity ensures that the context for the data is not lost when beginning a new project, and that the links to the original project data are maintained (Kansa, 2020). Check for identifiers that are actionable, unambiguous, shared, and reused (Kansa, 2022).

# Ethical and Legal Considerations

In the US, archaeological data is protected by several federal regulations that prohibit the sharing of site locations. Both the [National Historic Preservation Act (NHPA)](https://www.achp.gov/digital-library-section-106-landing/national-historic-preservation-act) and [Archaeological Resources Protection Act (ARPA)](https://www.nps.gov/subjects/archeology/archaeological-resources-protection-act.htm) prohibit the sharing of archaeological site locations and push for the preservation of archaeological data. These regulations protect against looting and the destruction of cultural heritage sites which makes it vital to ensure that site locations ranging from maps and location data are protected or not included within the data submission. Also depending
on the State, there may be additional regulations that restrict access and sharing of archaeological data that all must be taken into consideration when curating and archiving the data.

In addition to the NHPA and ARPA, the [Native American Graves Protection Act](https://www.nps.gov/subjects/nagpra/index.htm) (NAGPRA), enacted in 1990, provides for the repatriation and respect of
Native American cultural heritage objects that are found on federal and tribal lands (NAGPRA, 1990). NAGPRA requires that individuals, agencies, and museums that are in position of cultural objects consult with descendant communities to transfer over possession and control of these objects. While NAGPRA focuses on the physical cultural items, curators must be aware that the research and data that is being produced from these collections are in compliance with and have the appropriate permissions to use this data.

## CARE Principles

In addition to the above legal regulations, there are ethical implications to archaeological data dealing with cultural sensitivity and working with communities. The CARE principles - Collective Benefit, Authority Control, Responsibility, Ethics - for Indigenous Data Governance emphasize the impact of data relating to Indigenous communities. According to the Global Indigenous Data Alliance ([GIDA](https://static1.squarespace.com/static/5d3799de845604000199cd24/t/637acfbec86a122d68b0f317/1668992965093/Final_Attribution_NonCommercial_NoDerivatives_4_International.pdf)),
Indigenous data are:

- Data about resources and environments, including “land, water, geology, titles, air, soil, sacred sites, territories, plants, animals, etc.” (Global Indigenous Data Alliance, 2022).

- Data regarding Indigenous individuals, including personal data like “administrative, legal, health, social, commercial, corporate, services, etc.” (Global Indigenous Data Alliance, 2022).

- Data concerning or about Indigenous communities as a whole, including “traditional and cultural information, archives, oral histories, literature, ancestral and clan knowledge, stories, belongings, etc.” (Global Indigenous Data Alliance, 2022).

When encountering archaeological data such as those listed above, consider the following questions to understand the data and request further information from the PI/researcher:

- Are site locations included in the data? Maps? GPS? If so, can they be removed or restricted from download? If desired, can the locations be shared and cross referenced to provide access to the data?

- Does the data include information that can be culturally sensitive to communities? Are there explicit statements from communities allowing the use or inclusion of this information? Are the data accessible to community members without undue barriers? Are the data available to researchers if the community approves of reuse?

- Is there documentation accompanying the data with information on the availability, access, and reuse protocols? Have relevant communities participated in creating these protocols?

- Does the metadata include informed consent documents or protocols relating to the authority of the data? Does the metadata include traditional knowledge labels developed to facilitate access to and use of the data? Has terminology been agreed upon to both accurately and sensitively describe the data?

- Could this data cause harm to the Indigenous community? Is the language used outdated? Are culturally sensitive data present in this data, and is instruction on how to handle this data included? Are there protocols in place to permanently or temporarily restrict access to the data when necessary?

In addition to these considerations, Gupta et al. (2023) provides an expansive set of recommendations to implementing a CARE Framework within your institution. Some of these recommendations include adding cultural metadata, a mechanism which consists of provenance, permissions, and protocols, and applying culturally appropriate metadata such as [Traditional Knowledge (TK)](https://localcontexts.org/labels/traditional-knowledge-labels/) and [Biocultural (BC) labels](https://localcontexts.org/labels/biocultural-labels/) for machine readable environments.

## Open Data and Data Accessibility

In the 2019 Society for American Archaeology Conference, David Gadsby urged that “Healthy institutional relationships and the effective communication that comes with those relationships are as critical to ensuring appropriate access to data as they are to protecting them from unwanted disclosure” ([Gadsby, 2019](https://saa2019-sensitive.netlify.app/complexity-gadsby/)). In
many fields open data practices and incorporating [FAIR Data Principles](https://www.go-fair.org/fair-principles/) are becoming standard; however, archaeological data requires more critical thought concerning the actions and repercussions that releasing sensitive data may have (See Appendix A).

It is important to discuss any concerns you may have about data sensitivity with the PI/researcher. You can do this during the Request stage. Several solutions are available to address issues of confidentiality if they arise subsequent to publication. Specific data can be redacted or removed from the published dataset, leaving the majority of the set available to the public. In some cases, redaction is inadequate, the data should be restricted by the institution withholding data until researchers are approved for access.

# Example Data Sets 

## Basketmaker Communities Project

About: “The Basketmaker Communities Project, a multi-faceted research and public education archaeological initiative undertaken by Crow Canyon from 2011 through 2017.” (Crow Canyon Archaeological Center, nd)

**Project Landing Page**  <a href="https://core.tdar.org/collection/70157">https://core.tdar.org/collection/70157</a>

**Example** Basketmaker Community Features. Crow Canyon Archaeological Center. Crow Canyon Archaeological Center. 2020 (tDAR id: 467829); <a href="https://www.doi.org/10.48512/XCV8467829">https://www.doi.org/10.48512/XCV8467829</a> 

This project is an exemplar because:

- Data is in a recommended file formats (.xls and .xlsx)

- Varying access levels

- Archaeology Specific Metadata Fields

  -  Spatial Coverage Map
  -  Site Name
  -  Temporal Keywords

- Clear identifiers assigned

- Documentation to build context about the dataset in sections titled: 

  -  Table Information
  -  Data Set Structure
  -  File Information

- tDAR is a domain specific data repository

## Banda through Time

About: “Banda Through Time is a digital collection of cultural heritage materials relevant to the Banda Traditional Area of west central Ghana. It includes archival materials from the collections of researchers associated with the long-term Banda Research Project (1982-2014) as well as recent works produced by the collaborative community-based Banda Heritage Initiative.”(Logan, nd.)

**Project Landing Page** <a href="https://exhibits.library.uvic.ca/spotlight/iaff">https://exhibits.library.uvic.ca/spotlight/iaff</a> 

**Example** <a href="https://exhibits.library.uvic.ca/spotlight/iaff/catalog/17-19105">https://exhibits.library.uvic.ca/spotlight/iaff/catalog/17-19105</a>

This project is an exemplar because:

- Images in a recommended file format (.jpg)

- Rich and descriptive metadata

- University of Victoria Libraries is an institutional repository




# CURATED Checklist

Curation steps selected from the [CURATED steps](https://z.umn.edu/curate) and modified as relevant for archaeology data curation needs.

## Check

- Begin Curator Log to track curation decisions
- Open files. Do they open as expected? 
  -  Inventory the dataset
- Check that metadata quality is rich, accurate, and complete to institutional requirements.
- Check documentation type 
  -  README, Photo Logs, Manuals 
  -  If missing, document for the “Request” step
- Check whether culturally sensitive data or site data is present
  -  Request consent form / participation agreement if it’s not present
  -  If the site locations are not de-identified, document for the "Request" step.


## Understand

- Examine files, organization, and documentation
  -  Are there missing data?
  -  Is there referential integrity? 
  -  Could a user with similar qualifications to the author’s understand and reuse these data and reproduce the results?
  -  Are variable names unambiguous?
- Are the data, documentation and/or metadata presented in a way that aids in interpretation? (e.g., readme Example)
- Record all questions and concerns in the Curation Log.


## Request

- Collaborate with the researcher(s) to make necessary changes
  -  Triage and prioritize issues. Identify and highlight those with the highest data reuse implications
  -  Communicate any changes you, the curator, will make on their behalf

<a href="http://z.umn.edu/curate">Email template</a>

## Augment

- Enhance metadata
- Apply persistent identifier (DOI) See ‘Findability’
- Record any changes in Curator Log


## Transform

- Record any data transformations in Curator Log

## Evaluate

- Verify the language used is up to date 
- Remind the submitter of their responsibility, if they choose to ignore requests for de-identification or similar concerns. 
- Review final state of data and record with researcher before publication
- Add any final changes to Curator Log


## Document

- Ensure the following information is captured in the Curator Log:
  -  Activities taken during the CURATE process
  -  Accessioning & deposit records (Names, dates, contact information, submission agreements, etc.)
  -  Repository collection metadata
  -  Provenance logs (changes by curators in the Transform step)
  -  Service workflow
  -  Correspondences and other interactions
  -  Preservation packaging
  -  Any additional requirements at your institution



# Related Primers

- [Oral History Interviews Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Oral%20History%20Interviews%20Data%20Curation%20Primer/oral-history-interviews-data-curation-primer.md).

- [GeoDatabase Data Curation Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Geodatabase%20Data%20Curation%20Primer/Geodata-Primer.md)

- [Qualitative Data Primer](https://github.com/DataCurationNetwork/data-primers/blob/master/Qualitative%20Data%20Curation%20Primer/qualitative-data-curation-primer.md)

- CARE Principles/Community Data

# Resources

- [ARIADNEplus Guides to Good Practice for Data Preservation and Archiving](https://ariadne-infrastructure.eu/best-practice-guides-for-data-preservation-and-archiving/)

- [Re3data](https://www.re3data.org/search?query=archaeology) - global registry of research data repositories

- [Library of Congress Recommended Formats](https://www.loc.gov/preservation/resources/rfs/format-pref-summary.html)

- [Community Standards for 3D Data Preservation (CS3DP)](https://cs3dp.org/)

- [The Digital Archaeological Record (DAR)](https://core.tdar.org/) - cultural heritage data repository

- [Open Context](https://opencontext.org/) - archaeological data publishing

- [Archaeology Data Service (ADS)](https://archaeologydataservice.ac.uk/) - UK archaeological data repository

- [CoreTrustSeal](https://www.coretrustseal.org/) - certification for data repositories

- [Archaeological Resources Protection Act (ARPA)](https://www.nps.gov/subjects/archeology/archaeological-resources-protection-act.htm)

- [National Historic Preservation Act (NHPA)](https://www.achp.gov/digital-library-section-106-landing/national-historic-preservation-act)

- [Traditional Knowledge (TK) Labels](https://localcontexts.org/labels/traditional-knowledge-labels/)

- [Biocultural (BC) Labels](https://localcontexts.org/labels/biocultural-labels/)

# Additional Recommended Reading

Roosevelt, C. H. et al. (2015). Excavation is \[Destruction\] Digitization: advances in archaeological practice.*Journal of Field Archaeology, 40*(3), 325-346. [https://doi.org/10.1179/2042458215Y.0000000004](https://doi.org/10.1179/2042458215Y.0000000004)

Rossi, C. et al. (2020). Digital Workflow to Support Archaeological Excavation: From the 3D Survey to the Websharing of Data. In N. Aste et al. (Eds.),*Innovative Models for Sustainable Development in Emerging African Countries.*Springer. ISBN: 978-3-030-33323-2

Schiappacasse, P. (2019). Excavating Repositories: Academic Research Projects Using Archaeological Collections.*Advances in Archaeological Practice,**7*(3), 247-257. [https://www.doi.org/10.1017/aap.2019.26](https://www.doi.org/10.1017/aap.2019.26)

Clarke, M. (2015). The Digital Dilemma: Preservation and the Digital Archaeological Record.*Advances in Archaeological Practice,**3*(4),
313-330. [https://www.doi.org/10.7183/2326-3768.3.4.313](https://www.doi.org/10.7183/2326-3768.3.4.313)

Egloff, B. J. (2019).*Archaeological Heritage Conservation and Management*. Archaeopress Publishing Ltd. ISBN: 978-1-78969-106-1

Faniel, I. et al. (2013).*The challenges of digging data: a study of context in archaeological data reuse*. Proceedings of the 13th ACM/IEEE-CS joint conference on Digital libraries. [https://doi.org/10.1145/2467696.2467712](https://doi.org/10.1145/2467696.2467712)

Geser, G., Richards, J. D., Massara, F., and Wright, H. (2022). Data Management Policies and Practices of Digital Archaeological Repositories.*Internet Archaeology 59.*[https://doi.org/10.11141/IA.59.2](https://doi.org/10.11141/IA.59.2)

King, J., and Samford, P. (2019). Making Archaeological Collections Available for Research: Recommendations for Repositories.*Advances in Archaeological Practice,**7*(3), 311-316. [https://www.doi.org/10.1017/aap.2019.27](https://www.doi.org/10.1017/aap.2019.27)

Nicholson, C., Fernandez, R. and Irwin, J. 2021 Digital Archaeological Data in the Wild West: the challenge of practising responsible digital data archiving and access in the United States,*Internet Archaeology*58. [https://doi.org/10.11141/ia.58.22](https://doi.org/10.11141/ia.58.22)

Wiseman, R., and Ronn, P. (2020). Archaeology on Furlough: Accessing Archaeological Information Online: A Survey of Volunteers’ Experiences. Apollo - University of Cambridge Repository. [https://doi.org/10.17863/CAM.54876](https://doi.org/10.17863/CAM.54876)

# Bibliography

Archaeological Institute of America (AIA). (2008).*Code of Professional Standards.*[https://www.archaeological.org/code-of-professional-standards/](https://www.archaeological.org/code-of-professional-standards/)

Archaeology Data Service. (2013).*Caring for Digital Data in Archaeology: A guide to good practice*. Oxbow Books.

Basketmaker Community Features. (2020.) Crow Canyon Archaeological Center. Crow Canyon Archaeological Center. ( tDAR id: 467829); [https://www.doi.org/10.48512/XCV8467829](https://www.doi.org/10.48512/XCV8467829)

Data Curation Network. (2022).*CURATE(D) Steps and Checklist for Data Curation, version 2.*[http://z.umn.edu/curate](http://z.umn.edu/curate)

FAIR Principles. (n.d.). GO FAIR. Retrieved May 3, 2023, from [https://www.go-fair.org/fair-principles/](https://www.go-fair.org/fair-principles/)

Gadsby, D. (2019).*Negotiating Complexity in the Management of Sensitive Digital Data.*[https://saa2019-sensitive.netlify.app/complexity-gadsby/](https://saa2019-sensitive.netlify.app/complexity-gadsby/)

Gupta, N., Martindale, A., Supernant, K., and Elvidge, M. (2023). The CARE Principles and the Reuse, Sharing, and Curation of Indigenous Data in Canadian Archaeology.*Advances in Archaeological Practice 11*(1), 76-89. [https://www.doi.org/10.1017/aap.2022.33](https://www.doi.org/10.1017/aap.2022.33)

H.R.5237 - 101st Congress. (1989-1990). Native American Graves Protection and Repatriation Act. [https://www.congress.gov/bill/101st-congress/house-bill/5237](https://www.congress.gov/bill/101st-congress/house-bill/5237)

Kansa, E. C. and Kansa, S. W. (2022). Promoting data quality and reuse in archaeology through collaborative identifier practices. [*Proceedings of the National Academy of Sciences*, 119(43).
https://doi.org/10.1073/pnas.2109313118](https://doi.org/10.1073/pnas.2109313118)

Kansa, S. W., Atici, L., Kansa, E. C., & Meadow, R. H. (2020). Archaeological Analysis in the Information Age: Guidelines for Maximizing the Reach, Comprehensiveness, and Longevity of Data. Advances in Archaeological Practice, 8(1), 40–52. [https://doi.org/10.1017/aap.2019.36](https://doi.org/10.1017/aap.2019.36)

Nicholson, C., Kansa, S., Gupta, N., & Fernandez, R. (2023). Will It Ever Be FAIR?: Making Archaeological Data Findable, Accessible, Interoperable, and Reusable.*Advances in Archaeological Practice*, 11(1), 63-75. [https://www.doi.org/10.1017/aap.2022.40](https://www.doi.org/10.1017/aap.2022.40)

Richards, J.D., Jakobsson, U., Novák, D., Štular, B. and Wright, H. 2021 Digital Archiving in Archaeology: The State of the Art. Introduction,*Internet Archaeology*58. [https://doi.org/10.11141/ia.58.23](https://doi.org/10.11141/ia.58.23)

The Global Indigenous Data Alliance (GIDA). (2019).*CARE Principles for Indigenous Data Governance*. [https://www.gida-global.org/care](https://www.gida-global.org/care)

University of Victoria Special Collections and University Archives. “About. Banda Through Time,” [https://exhibits.library.uvic.ca/spotlight/iaff/about/about](https://exhibits.library.uvic.ca/spotlight/iaff/about/about); Accessed April 25, 2023.

# Appendix 1: FAIR Principles

Adhering to FAIR guiding principles for scientific data management and stewardship is a good place to start when considering ethical data curation and preservation. FAIR– Findable, Accessible, Interoperable, and Reusable– emphasizes machine-actionability for data, which facilitates researchers’ use of technology to find data (*FAIR Principles*, n.d.). As with other fields, there is a call for archaeologists to adopt and implement these principles into their workflows to ensure the continual preservation of archaeological data and human society.

Using suggestions from the Nicholson et al. (2023) article on FAIR Data within archaeology, listed below are some of the ways to incorporate the principles for archaeological data curation.

## Findable

To facilitate Findability, we encourage to use persistent identifiers as much as possible. This prevents linked and cross-referenced data from becoming misaligned and causing erroneous conclusions or associations between unaffiliated datasets. Identifiers should be unambiguous, actionable, and reusable; if possible, they should be used in broader contexts or by other projects. Examples of useful ontologies/controlled vocabularies include the Getty AAT and PeriodO, but each project will need to be reviewed for appropriate identifiers. Metadata should point directly to the data they describe using these unique identifiers, and should be indexed in a searchable format.

## Accessible

Once data is discovered by the researcher, it should be easy to access. Data should be available without special tools or download devices. This does not preclude authorization protocols; in an ideal world all data is open source, but that is often not a practical reality. Metadata should remain accessible even if the data is no longer available. For accessibility, it is important to balance appropriate access to data and ensure it is following the CARE principles.

## Interoperable 

Data and metadata should use formal language that is accessible, shared, and broadly applicable, including readability by both humans and machines. Vocabularies should follow FAIR principles and data and metadata should include qualified references whenever possible- references that describe intent as specifically as possible.

## Reusable 

Data and metadata should be described in as much detail as possible to facilitate reuse. Data usage licenses should be clear and accessible, and data should include detailed provenance. Data and metadata should meet relevant community standards, like those listed above in the Metadata section.
