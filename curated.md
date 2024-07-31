![](DCNlogo.png)
#  CURATE(D): Checklist for Data Curation

The CURATE(D) steps are a teaching and representation tool. This model
is useful for onboarding data curators and <span class="mark">orienting
researchers preparing to share their data.</span> It serves as a
demonstration for the type of work involved in robust data curation, and
was created to fit within institution-specific data repository
workflows. Curation may not follow this exact workflow every time, and
procedures may differ slightly depending on data needs and institutional
processes. Moreover, the CURATE(D) process, while presented
sequentially, is not necessarily linear. curation can jump between steps
and repeat actions as necessary. Curators using this checklist should
review all steps before reaching out to dataset creators in the
“R–Request” step.

This checklist also flows from a preceding series of critical appraisal
decisions. This includes deciding which data to keep (selection), and
where to share data (e.g., is this data in-scope for a particular
repository based on a range of factors including local policy and
potential for reuse?).

> [!NOTE]  
> <strong>Should the data be shared?</strong>
> Data curators analyze content to assess near and long-term impacts of data sharing, which is especially critical when evaluating for ethical concerns in data derived from human participants. To learn more about this, review
> <li> <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/Human%20Participants%20Data%20Essentials%20Data%20Curation%20Primer/human-participants-data-essentials-data-curation-primer.md">Human Participants Data Essentials primer</a></li>
> <li> <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/Consent%20Forms%20Data%20Curation%20Primer/consent-forms-data-curation-primer.md">Curation of Data Collected by Informed Consent</a></li>
> <li> <a href="https://www.gida-global.org/care">CARE Principles for Indigenous Data Governance</a> </li>
> <li> <a href="https://www.urban.org/research/publication/principles-advancing-equitable-data-practice">Principles for Advancing Equitable Data Practice</a> </li>


<img src="media/image3.png" style="width:6.5in;height:2.40625in" />

# Checklist of CURATE(D) Steps Performed by the DCN

**Check** files and read documentation (risk mitigation, file inventory,
appraisal/selection)

**Understand** the data (or try to), if not… (run files/environment,
QA/QC issues, readme)

**Request** missing information or changes (tracking provenance of any
changes and why)

**Augment** metadata for findability (DOIs, metadata standards,
discoverability)

**Transform** file formats for reuse (data preservation, conversion
tools, data viz)

**Evaluate** for FAIRness (licenses, responsibility standards, metrics
for tracking use)

**Document** your curation activities (Curator Log, correspondence)

# **CHECK Step**

<table>
<colgroup>
<col style="width: 47%" />
<col style="width: 52%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Check</strong> data files/code and read
documentation
In this step we secure the dataset by inventorying and reviewing the
contents, applying local appraisal and selection criteria. Common CHECK
steps include:
<ul>
<li>
Review to ensure data is in scope for the repository
</li>
<li>
Inventory the contents of the data files (e.g., open and sample the
files or code)
</li>
<li>
Verify all metadata provided by the researcher; check available
documentation
</li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><strong>Key Ethical Considerations</strong>
<ul>
<li>
Review participant agreement and data use agreements; examine
potential impacts of sharing this data. Consider:

<ul>
<li>
Individuals and communities represented
</li>
<li>
<mark>Representativeness of diverse human populations</mark>
</li>
<li>
Protection or endangerment status of species
</li>
<li>
Geographic locations (e.g., contested boundaries, historical and
current political situations)
</li>
<li>
Animal research ethics and approval
</li>
</ul></li>
<li>
<mark>Is it possible that the dataset may impact a specific
group?</mark>
</li>
<li>
Does this dataset follow compliance &amp; institutional policy?
</li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><strong>Essential Tasks</strong>
<ul>
<li>
<mark>Begin Curator Log to track curation decisions</mark>
</li>
<li>
<mark>Open the related article and supporting information if
available</mark>
</li>
<li>
Inventory the dataset

<ul>
<li>
Identify file formats
</li>
<li>
Review file organization, hierarchy, and naming convention(s)
</li>
<li>
Extract zip files when possible
</li>
<li>
Create working copy of files for formal inventory and testing
</li>
</ul></li>
<li>
Examine code for obvious errors/missing components, etc.
</li>
<li>
Check that metadata quality is rich, accurate, and complete to
institutional requirements.
</li>
<li>
Check documentation type (circle)<br />
readme / Codebook / Data Dictionary / Other:
________________________

<ul>
<li>
Complete
</li>
<li>
Needs work
</li>
<li>
If missing, document for the “Request” step
</li>
</ul></li>
<li>
Check whether human subject data (data about humans regardless of IRB
determination) is present. If so,

<ul>
<li>
Request consent form / participation agreement if not present
</li>
<li>
If the data are not de-identified, document for the "Request"
step.
</li>
</ul></li>
<li>
Check the accessibility of all files

<ul>
<li>
Ensure there are robust descriptions in plain text of data files and
any images.
</li>
</ul></li>
<li>
Check whether any visualization(s) of data are easily accessible

<ul>
<li>
Review alt-text and visualization descriptions. Ensure these
describe, but do not interpret, associated visualizations.
</li>
<li>
Check data visualizations follow accessible color contrast
guidelines
</li>
<li>
Recommend graphical representation ____________
</li>
<li>
Recommend web-accessible surrogate ________________
</li>
</ul></li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

# **UNDERSTAND Step**

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Understand</strong> the data (or try to)
In this step, examine the dataset closely to understand what it is,
how the files interrelate, and what information is needed to reuse.
Common UNDERSTAND steps include:
<ul>
<li>
Check for quality assurance and usability issues such as missing
data, ambiguous headings, code execution failures, and data presentation
concerns
</li>
<li>
Try to detect and extract any “hidden documentation” inherent to the
data files that may facilitate reuse or expose unintended
information
</li>
<li>
Determine if the documentation of the data is sufficient for a user
with similar qualifications to the researcher’s to understand and reuse
the data. If not, recommend or create additional documentation (e.g., a
readme.txt template)
</li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><strong>Key Ethical Considerations</strong>
<ul>
<li>
If working with human data, is this research done <em>with</em> and
not <em>on</em> communities and populations involved? (You may wish to
review data sources, researchers, and their connections to the
communities and subjects they are serving to facilitate further
conversation with researcher(s).)

<ul>
<li>
Are there authoritative group representatives who should be contacted
in the next (request) step?
</li>
</ul></li>
<li>
Are there labels or other descriptive indicators that could be
applied to better represent or protect an identified group of people
impacted by this dataset? (Example: <a
href="https://localcontexts.org/labels/traditional-knowledge-labels/">TK
labels</a>)
</li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><strong>Essential Tasks</strong>
<ul>
<li>
Examine files, organization, and documentation more thoroughly. Are
there changes that could enhance the dataset?

<ul>
<li>
Are there missing data?
</li>
<li>
Could a user with similar qualifications to the author’s understand
and reuse these data and reproduce the results?
</li>
<li>
Are the data, documentation and/or metadata presented in a way that
aids in interpretation? (e.g., <a
href="https://deepblue.lib.umich.edu/data/Deep_Blue_Data_Example_Readme.txt">readme
Example</a>)
</li>
</ul></li>
<li>
Record all questions and concerns in Curation Log.
</li>
</ul>
<em>Tasks vary based on file formats and subject domain. Sample tasks
based on format:</em>
Tabular Data (e.g, Microsoft Excel) Questions:
<ul>
<li>
Check the organization of the data–is it well-structured?
</li>
<li>
Are headers/codes clearly defined?
</li>
<li>
Is quality control clearly defined?

<ul>
<li>
Is methodology clear and sufficient?
</li>
</ul></li>
</ul>
Database(s) Questions:
<ul>
<li>
Is there documentation on tables, relationships, queries, etc?
</li>
<li>
Can the data be exported (to CSV(s), TXT or other) easily?
</li>
<li>
Which tables or queries are the relevant ones used in a
publication?
</li>
</ul>
Code Questions:
<ul>
<li>
Does the provided code execute without errors?
</li>
<li>
Is the code commented, i.e., did the author provide descriptive
information on sections of code?
</li>
<li>
Is data for input missing? Are environmental conditions and
parameters noted? Is it clear which language(s) and version(s) are
used?
</li>
<li>
Does the code use absolute paths or relative paths? If absolute
paths, is this documented in the readme?
</li>
<li>
Are packages or additional libraries used? Is so, is this noted with
clear use instructions?
</li>
<li>
Are any data organized consistently for access by the code ?
</li>
<li>
Is there an indication of whether the depositor intends reusers to be
able to run the code and reproduce results, or just see the process
used?
</li>
</ul>
To view additional UNDERSTAND steps based on format, view the
following primers:
<ul>
<li>
<a href="http://hdl.handle.net/11299/210210">Acrobat PDF</a>
Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/210211">ATLAS.ti</a>
Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/210206">Confocal Microscopy
Image</a> Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/202823">Geodatabase</a>
Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/210208">GeoJSON</a>
Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/202815">Jupyter
Notebook</a> Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/202827">Microsoft
Access</a> Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/202816">Microsoft
Excel</a> Primer
</li>
<li>
<a href="http://hdl.handle.net/2027.42/145724">netCDF</a>
Primer and <a href="http://hdl.handle.net/11299/202825">Tutorial
using NCAR dataset</a>
</li>
<li>
<a href="http://hdl.handle.net/11299/202812">SPSS</a>
Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/211352">STL</a>
Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/210209">R</a> Primer
</li>
<li>
<a href="http://hdl.handle.net/11299/210207">Tableau</a>
Primer
</li>
<li>
(Twitter primer?)
</li>
<li>
<a href="http://hdl.handle.net/11299/202811">Wordpress.com</a>
Primer
</li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

# **REQUEST Step**

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Request</strong> missing information or
changes
In this step, generate a list of questions to help the researcher fix
any errors or issues and enrich the usability of the data. Common
REQUEST steps include:
<ul>
<li>
Triage and prioritize issues. Identify and highlight those with the
highest data reuse implications
</li>
<li>
Convey a sense of urgency, as there it becomes more difficult to get
responses from researchers as time passes.
</li>
<li>
Collaborate with the researcher(s) to make necessary changes
</li>
<li>
Communicate any changes you, the curator, will make on their
behalf
</li>
<li>
Pause and consider how best to frame and communicate requests. This
should be the start of a conversation.
</li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><strong>Key Ethical Considerations</strong>
<ul>
<li>
<mark>Consider asking researchers if their participants will be
notified that their data (in addition to published results) are being
shared.</mark>
</li>
<li>
<mark>If you feel uncomfortable about sharing the data in its current
state and/or it does not meet your institution's requirements, reserve
the right not to publish.</mark>
</li>
<li>
Consider asking researcher(s) if there are limitations to how data
could/should be used to include in documentation. (Based on, e.g.,
representativeness of sample).
</li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><strong>Essential Tasks</strong>
<ul>
<li>
Ask about additional data contributors, beyond publication authors.
Consider using the Contributor Roles Taxonomy to communicate this:
https://casrai.org/credit/
</li>
<li>
Summarize conversations / outreach efforts in Curator Log
</li>
</ul>
Sample email to researcher:
Dear [<em>name of the data set author or contact</em>],
Thank you for depositing your data set, [<em>title of the data
set</em>], to [<em>name of repository</em>].
After we receive a data set, we review it to ensure that the data we
host are as complete and understandable as possible. We have reviewed
your data set and have the following recommendations for you:
<ul>
<li>
Recommendation #1
</li>
<li>
Recommendation #2
</li>
<li>
Recommendation #3
</li>
<li>
Recommendation #4
</li>
</ul>
We look forward to hearing your response.
Please let us know if you have any questions about our
recommendations. We would be happy to talk with you or meet in person to
discuss our review of your data, if you would like
Sincerely,
[<em>Name of Curator</em>]</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

# **AUGMENT Step**

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Augment</strong> the dataset
In this step we ensure metadata conforms to repository and/or
appropriate discipline standards; adjust metadata to improve findability
and accessibility; and improve documentation to make data more
understandable, interoperable and reusable. Common AUGMENT steps
include:
<ul>
<li>
Enhance metadata to best facilitate discoverability, such as by
ensuring datasets have a persistent identifier.
</li>
<li>
Create and apply metadata for the data record, including descriptive
keywords
</li>
<li>
When appropriate, structure and present metadata in domain-specific
schemas to facilitate interoperability with other systems
</li>
<li>
Implement any other agreed-on enhancements to metadata or
documentation following discussion with researcher
</li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><strong>Key Ethical Considerations</strong>
<ul>
<li>
Make sure bibliographic information reflects correct author
attribution.
</li>
<li>
Ensure any augmentation by the depositor to resolve ethical questions
from previous steps is completed.
</li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><strong>Essential Tasks</strong>
<ul>
<li>
Review information received from the researcher from initial deposit
and all subsequent conversations
</li>
<li>
Update, as appropriate:

<ul>
<li>
Metadata
</li>
<li>
Documentation (readme, Codebook, Data Dictionary, Other)
</li>
<li>
Replacement files
</li>
<li>
Organization and Arrangement of files
</li>
<li>
Documentation of file organization, hierarchy, and naming
convention(s)
</li>
</ul></li>
<li>
Facilitate discoverability:

<ul>
<li>
Add links to related publications, grants, reports, source data,
etc.
</li>
<li>
Provide additional description of files as appropriate for external
indexing or other purposes.
</li>
<li>
Add subject terms
</li>
</ul></li>
<li>
Ensure keywords are sufficient and representative
</li>
<li>
Record all changes in the Curation Log
</li>
<li>
Provide suggestions to improve accessibility of content (e.g.,
alt-text or additional descriptions; color contrast; etc)
</li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

# **TRANSFORM Step**

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Transform</strong> file formats
In this step, consider the file formats in the dataset to make them
more interoperable, reusable, preservation friendly, and non-proprietary
when possible.<sup>1</sup> Common TRANSFORM steps include:
<ul>
<li>
Identify specialized file formats and their restrictions (e.g., Is
the software freely available? If so, link to it or archive it alongside
the data)
</li>
<li>
Propose open source or more reusable formats when appropriate
</li>
<li>
Retain original file formats
</li>
</ul>
<sup>1</sup> See Cornell’s list of preservation format
recommendations: <a
href="http://guides.library.cornell.edu/ecommons/formats">http://guides.library.cornell.edu/ecommons/formats</a></th>
</tr>
<tr class="odd">
<th colspan="2"><strong>Key Ethical Considerations</strong>
<ul>
<li>
Consider how best to navigate researcher bandwidth limitations and
ownership of data with repository commitments to reducing barriers to
reuse.
</li>
<li>
<mark>Decide how to balance the potential benefits of transformation
with the risks of mistakes and loss of content/context, especially if
the curator or repository will be performing transformation. Document
the decision.</mark>
</li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><strong>Essential Tasks</strong>
<ul>
<li>
Check whether preferred file formats are in use

<ul>
<li>
If not, recommend conversion
</li>
<li>
Retain original formats
</li>
</ul></li>
<li>
Check whether software needed is readily available

<ul>
<li>
Suggest open source options, if applicable and appropriate
</li>
<li>
Ensure software and software version is documented
</li>
</ul></li>
<li>
Convert any data visualization(s) that are not accessible (e.g., R <a
href="https://github.com/DataCurationNetwork/data-primers/blob/master/R%20Data%20Curation%20Primer/R-data-curation-primer.md#accessibility-considerations">visualizations</a>,
which need to be converted for screen reader use, or visualizations that
do not meet color contrast guidelines)
</li>
<li>
Reorganize files as appropriate
</li>
<li>
Standardize file names
</li>
<li>
Record any transformations in Curator Log
</li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

# **EVALUATE Step**

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Evaluate</strong> and rate the dataset
In this step, review the dataset and companion data record against
international standards, including FAIR,<sup>2</sup> CARE,<sup>3</sup>
and FATE.<sup>4</sup> Common EVALUATE steps:
<ul>
<li>
Score the dataset and recommend ways to increase the FAIRness of the
data
</li>
<li>
Review data for ethical concerns in line with CARE and FATE
</li>
</ul>
2. Rubric evaluating the FAIR principles are based on the scoring
matrix by Dunning, de Smaele, &amp; Böhmer (<a
href="http://dx.doi.org/10.2218/ijdc.v12i2.567">2017</a>).
3. CARE principles: <a
href="https://www.gida-global.org/care">https://www.gida-global.org/care</a>
4. FATE in AI: <a
href="https://www.microsoft.com/en-us/research/theme/fate/">https://www.microsoft.com/en-us/research/theme/fate/</a></th>
</tr>
<tr class="odd">
<th colspan="2"><strong>Key Ethical Considerations</strong>
<ul>
<li>
Final review--remember it is not too late to surface any ethical
concerns.
</li>
<li>
Verify the words/language being used are not racist/harmful.
</li>
<li>
Remind the submitter of their responsibility, if they choose to
ignore requests for de-identification or similar concerns.
</li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><strong>Essential Tasks</strong>
<ul>
<li>
Test that files successfully download
</li>
<li>
Check that any transformations didn’t introduce problems
</li>
<li>
Review final state of data and record with researcher before
publication
</li>
<li>
Add any final changes to Curator Log
</li>
</ul>
<em>This is a sample checklist for evaluating datasets against a set
of principles.</em>
<strong>FAIR evaluation</strong>
Findable:
<ul>
<li>
Metadata exceeds researcher/ title/ date.
</li>
<li>
There is a unique Persistent ID (DOI, Handle, PURL, etc.).
</li>
<li>
Data/record is discoverable via web search engines.
</li>
</ul>
Accessible:
<ul>
<li>
Data/ record are retrievable via a standard protocol (e.g.,
HTTP).
</li>
<li>
Data/ record are free, open (e.g., via a download link).
</li>
</ul>
Interoperable:
<ul>
<li>
Metadata is formatted in a standard schema (e.g., Dublin Core).
</li>
<li>
Metadata is provided in machine-readable format (OAI feed).
</li>
</ul>
Reusable:
<ul>
<li>
Data include sufficient metadata and supporting documentation about
the data characteristics for reuse.
</li>
<li>
A way to contact the researcher directly for further questions is
provided
</li>
<li>
There are clear indicators of who created, owns, and stewards the
data.
</li>
<li>
Data are released with clear data usage terms (e.g., a CC
License).
</li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

# **DOCUMENT Step**

<table>
<colgroup>
<col style="width: 46%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th colspan="2"><strong>Document</strong> curation activities
throughout
In the Curator Log mentioned throughout this guide, record the
significant treatments or actions applied to the dataset. This is for
your archival record keeping (distinct from documentation the
researcher(s) created to accompany their own datasets). DOCUMENT
requires:
<ul>
<li>
Recording all information relevant to the tracking and administration
of the deposit, about who did what to the dataset and when
</li>
<li>
Tracking communication with the researcher(s)
</li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><strong>Key Ethical Considerations</strong>
<ul>
<li>
Document that disclosure risk review has taken place. State if
changes from original data have been made, but do not give enough detail
on changes to reverse-engineer any anonymization.
</li>
<li>
Include consent (or waiver) and/or IRB approval of sharing with
administrative documentation.
</li>
<li>
Consider collecting contributor demographics.
</li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><strong>Essential Tasks</strong>
<ul>
<li>
Ensure the following information is captured in the Curator Log:

<ul>
<li>
Activities taken during the CURATE process
</li>
<li>
Accessioning &amp; deposit records (Names, dates, contact
information, submission agreements, etc.)
</li>
<li>
Repository collection metadata
</li>
<li>
Provenance logs (changes by curators in the Transform step)
</li>
<li>
Service workflow
</li>
<li>
Correspondences and other interactions
</li>
<li>
Preservation packaging
</li>
<li>
Any additional requirements at your institution
</li>
</ul></li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
