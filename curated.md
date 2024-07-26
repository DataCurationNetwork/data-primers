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

<table>
<colgroup>
<col style="width: 100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><em><strong>Should the data be shared?</strong></em></p>
<p>Data curators analyze content to assess near and long-term impacts of
data sharing, which is especially critical when evaluating for ethical
concerns in data derived from human participants. To learn more about
this, review:</p>
<ul>
<li><blockquote>
<p><u>Human Participants Data Essentials primer</u></p>
</blockquote></li>
<li><blockquote>
<p><a
href="https://github.com/DataCurationNetwork/data-primers/blob/master/Consent%20Forms%20Data%20Curation%20Primer/consent-forms-data-curation-primer.md"><u>Curation
of Data Collected by Informed Consent</u></a></p>
</blockquote></li>
<li><blockquote>
<p><a href="https://www.gida-global.org/care"><u>CARE Principles for
Indigenous Data Governance</u></a></p>
</blockquote></li>
<li><blockquote>
<p><a
href="https://www.urban.org/research/publication/principles-advancing-equitable-data-practice"><u>Principles
for Advancing Equitable Data Practice</u></a></p>
</blockquote></li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

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
<th colspan="2"><p><strong>Check</strong> data files/code and read
documentation</p>
<p>In this step we secure the dataset by inventorying and reviewing the
contents, applying local appraisal and selection criteria. Common CHECK
steps include:</p>
<ul>
<li><blockquote>
<p>Review to ensure data is in scope for the repository</p>
</blockquote></li>
<li><blockquote>
<p>Inventory the contents of the data files (e.g., open and sample the
files or code)</p>
</blockquote></li>
<li><blockquote>
<p>Verify all metadata provided by the researcher; check available
documentation</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><p><strong>Key Ethical Considerations</strong></p>
<ul>
<li><blockquote>
<p>Review participant agreement and data use agreements; examine
potential impacts of sharing this data. Consider:</p>
</blockquote>
<ul>
<li><blockquote>
<p>Individuals and communities represented</p>
</blockquote></li>
<li><blockquote>
<p><mark>Representativeness of diverse human populations</mark></p>
</blockquote></li>
<li><blockquote>
<p>Protection or endangerment status of species</p>
</blockquote></li>
<li><blockquote>
<p>Geographic locations (e.g., contested boundaries, historical and
current political situations)</p>
</blockquote></li>
<li><blockquote>
<p>Animal research ethics and approval</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p><mark>Is it possible that the dataset may impact a specific
group?</mark></p>
</blockquote></li>
<li><blockquote>
<p>Does this dataset follow compliance &amp; institutional policy?</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><p><strong>Essential Tasks</strong></p>
<ul>
<li><blockquote>
<p><mark>Begin Curator Log to track curation decisions</mark></p>
</blockquote></li>
<li><blockquote>
<p><mark>Open the related article and supporting information if
available</mark></p>
</blockquote></li>
<li><blockquote>
<p>Inventory the dataset</p>
</blockquote>
<ul>
<li><blockquote>
<p>Identify file formats</p>
</blockquote></li>
<li><blockquote>
<p>Review file organization, hierarchy, and naming convention(s)</p>
</blockquote></li>
<li><blockquote>
<p>Extract zip files when possible</p>
</blockquote></li>
<li><blockquote>
<p>Create working copy of files for formal inventory and testing</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Examine code for obvious errors/missing components, etc.</p>
</blockquote></li>
<li><blockquote>
<p>Check that metadata quality is rich, accurate, and complete to
institutional requirements.</p>
</blockquote></li>
<li><blockquote>
<p>Check documentation type (circle)<br />
readme / Codebook / Data Dictionary / Other:
________________________</p>
</blockquote>
<ul>
<li><blockquote>
<p>Complete</p>
</blockquote></li>
<li><blockquote>
<p>Needs work</p>
</blockquote></li>
<li><blockquote>
<p>If missing, document for the “Request” step</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Check whether human subject data (data about humans regardless of IRB
determination) is present. If so,</p>
</blockquote>
<ul>
<li><blockquote>
<p>Request consent form / participation agreement if not present</p>
</blockquote></li>
<li><blockquote>
<p>If the data are not de-identified, document for the "Request"
step.</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Check the accessibility of all files</p>
</blockquote>
<ul>
<li><blockquote>
<p>Ensure there are robust descriptions in plain text of data files and
any images.</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Check whether any visualization(s) of data are easily accessible</p>
</blockquote>
<ul>
<li><blockquote>
<p>Review alt-text and visualization descriptions. Ensure these
describe, but do not interpret, associated visualizations.</p>
</blockquote></li>
<li><blockquote>
<p>Check data visualizations follow accessible color contrast
guidelines</p>
</blockquote></li>
<li><blockquote>
<p>Recommend graphical representation ____________</p>
</blockquote></li>
<li><blockquote>
<p>Recommend web-accessible surrogate ________________</p>
</blockquote></li>
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
<th colspan="2"><p><strong>Understand</strong> the data (or try to)</p>
<p>In this step, examine the dataset closely to understand what it is,
how the files interrelate, and what information is needed to reuse.
Common UNDERSTAND steps include:</p>
<ul>
<li><blockquote>
<p>Check for quality assurance and usability issues such as missing
data, ambiguous headings, code execution failures, and data presentation
concerns</p>
</blockquote></li>
<li><blockquote>
<p>Try to detect and extract any “hidden documentation” inherent to the
data files that may facilitate reuse or expose unintended
information</p>
</blockquote></li>
<li><blockquote>
<p>Determine if the documentation of the data is sufficient for a user
with similar qualifications to the researcher’s to understand and reuse
the data. If not, recommend or create additional documentation (e.g., a
readme.txt template)</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><p><strong>Key Ethical Considerations</strong></p>
<ul>
<li><blockquote>
<p>If working with human data, is this research done <em>with</em> and
not <em>on</em> communities and populations involved? (You may wish to
review data sources, researchers, and their connections to the
communities and subjects they are serving to facilitate further
conversation with researcher(s).)</p>
</blockquote>
<ul>
<li><blockquote>
<p>Are there authoritative group representatives who should be contacted
in the next (request) step?</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Are there labels or other descriptive indicators that could be
applied to better represent or protect an identified group of people
impacted by this dataset? (Example: <a
href="https://localcontexts.org/labels/traditional-knowledge-labels/"><u>TK
labels</u></a>)</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><p><strong>Essential Tasks</strong></p>
<ul>
<li><blockquote>
<p>Examine files, organization, and documentation more thoroughly. Are
there changes that could enhance the dataset?</p>
</blockquote>
<ul>
<li><blockquote>
<p>Are there missing data?</p>
</blockquote></li>
<li><blockquote>
<p>Could a user with similar qualifications to the author’s understand
and reuse these data and reproduce the results?</p>
</blockquote></li>
<li><blockquote>
<p>Are the data, documentation and/or metadata presented in a way that
aids in interpretation? (e.g., <a
href="https://deepblue.lib.umich.edu/data/Deep_Blue_Data_Example_Readme.txt"><u>readme
Example</u></a>)</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Record all questions and concerns in Curation Log.</p>
</blockquote></li>
</ul>
<p><em>Tasks vary based on file formats and subject domain. Sample tasks
based on format:</em></p>
<p>Tabular Data (e.g, Microsoft Excel) Questions:</p>
<ul>
<li><blockquote>
<p>Check the organization of the data–is it well-structured?</p>
</blockquote></li>
<li><blockquote>
<p>Are headers/codes clearly defined?</p>
</blockquote></li>
<li><blockquote>
<p>Is quality control clearly defined?</p>
</blockquote>
<ul>
<li><blockquote>
<p>Is methodology clear and sufficient?</p>
</blockquote></li>
</ul></li>
</ul>
<p>Database(s) Questions:</p>
<ul>
<li><blockquote>
<p>Is there documentation on tables, relationships, queries, etc?</p>
</blockquote></li>
<li><blockquote>
<p>Can the data be exported (to CSV(s), TXT or other) easily?</p>
</blockquote></li>
<li><blockquote>
<p>Which tables or queries are the relevant ones used in a
publication?</p>
</blockquote></li>
</ul>
<p>Code Questions:</p>
<ul>
<li><blockquote>
<p>Does the provided code execute without errors?</p>
</blockquote></li>
<li><blockquote>
<p>Is the code commented, i.e., did the author provide descriptive
information on sections of code?</p>
</blockquote></li>
<li><blockquote>
<p>Is data for input missing? Are environmental conditions and
parameters noted? Is it clear which language(s) and version(s) are
used?</p>
</blockquote></li>
<li><blockquote>
<p>Does the code use absolute paths or relative paths? If absolute
paths, is this documented in the readme?</p>
</blockquote></li>
<li><blockquote>
<p>Are packages or additional libraries used? Is so, is this noted with
clear use instructions?</p>
</blockquote></li>
<li><blockquote>
<p>Are any data organized consistently for access by the code ?</p>
</blockquote></li>
<li><blockquote>
<p>Is there an indication of whether the depositor intends reusers to be
able to run the code and reproduce results, or just see the process
used?</p>
</blockquote></li>
</ul>
<p>To view additional UNDERSTAND steps based on format, view the
following primers:</p>
<ul>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/210210"><u>Acrobat PDF</u></a>
Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/210211"><u>ATLAS.ti</u></a>
Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/210206"><u>Confocal Microscopy
Image</u></a> Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/202823"><u>Geodatabase</u></a>
Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/210208"><u>GeoJSON</u></a>
Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/202815"><u>Jupyter
Notebook</u></a> Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/202827"><u>Microsoft
Access</u></a> Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/202816"><u>Microsoft
Excel</u></a> Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/2027.42/145724"><u>netCDF</u></a>
Primer and <a href="http://hdl.handle.net/11299/202825"><u>Tutorial
using NCAR dataset</u></a></p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/202812"><u>SPSS</u></a>
Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/211352"><u>STL</u></a>
Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/210209"><u>R</u></a> Primer</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/210207"><u>Tableau</u></a>
Primer</p>
</blockquote></li>
<li><blockquote>
<p>(Twitter primer?)</p>
</blockquote></li>
<li><blockquote>
<p><a href="http://hdl.handle.net/11299/202811"><u>Wordpress.com</u></a>
Primer</p>
</blockquote></li>
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
<th colspan="2"><p><strong>Request</strong> missing information or
changes</p>
<p>In this step, generate a list of questions to help the researcher fix
any errors or issues and enrich the usability of the data. Common
REQUEST steps include:</p>
<ul>
<li><blockquote>
<p>Triage and prioritize issues. Identify and highlight those with the
highest data reuse implications</p>
</blockquote></li>
<li><blockquote>
<p>Convey a sense of urgency, as there it becomes more difficult to get
responses from researchers as time passes.</p>
</blockquote></li>
<li><blockquote>
<p>Collaborate with the researcher(s) to make necessary changes</p>
</blockquote></li>
<li><blockquote>
<p>Communicate any changes you, the curator, will make on their
behalf</p>
</blockquote></li>
<li><blockquote>
<p>Pause and consider how best to frame and communicate requests. This
should be the start of a conversation.</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><p><strong>Key Ethical Considerations</strong></p>
<ul>
<li><blockquote>
<p><mark>Consider asking researchers if their participants will be
notified that their data (in addition to published results) are being
shared.</mark></p>
</blockquote></li>
<li><blockquote>
<p><mark>If you feel uncomfortable about sharing the data in its current
state and/or it does not meet your institution's requirements, reserve
the right not to publish.</mark></p>
</blockquote></li>
<li><blockquote>
<p>Consider asking researcher(s) if there are limitations to how data
could/should be used to include in documentation. (Based on, e.g.,
representativeness of sample).</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><p><strong>Essential Tasks</strong></p>
<ul>
<li><blockquote>
<p>Ask about additional data contributors, beyond publication authors.
Consider using the Contributor Roles Taxonomy to communicate this:
https://casrai.org/credit/</p>
</blockquote></li>
<li><blockquote>
<p>Summarize conversations / outreach efforts in Curator Log</p>
</blockquote></li>
</ul>
<p>Sample email to researcher:</p>
<p>Dear [<em>name of the data set author or contact</em>],</p>
<p>Thank you for depositing your data set, [<em>title of the data
set</em>], to [<em>name of repository</em>].</p>
<p>After we receive a data set, we review it to ensure that the data we
host are as complete and understandable as possible. We have reviewed
your data set and have the following recommendations for you:</p>
<ul>
<li><blockquote>
<p>Recommendation #1</p>
</blockquote></li>
<li><blockquote>
<p>Recommendation #2</p>
</blockquote></li>
<li><blockquote>
<p>Recommendation #3</p>
</blockquote></li>
<li><blockquote>
<p>Recommendation #4</p>
</blockquote></li>
</ul>
<p>We look forward to hearing your response.</p>
<p>Please let us know if you have any questions about our
recommendations. We would be happy to talk with you or meet in person to
discuss our review of your data, if you would like</p>
<p>Sincerely,</p>
<p>[<em>Name of Curator</em>]</p></th>
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
<th colspan="2"><p><strong>Augment</strong> the dataset</p>
<p>In this step we ensure metadata conforms to repository and/or
appropriate discipline standards; adjust metadata to improve findability
and accessibility; and improve documentation to make data more
understandable, interoperable and reusable. Common AUGMENT steps
include:</p>
<ul>
<li><blockquote>
<p>Enhance metadata to best facilitate discoverability, such as by
ensuring datasets have a persistent identifier.</p>
</blockquote></li>
<li><blockquote>
<p>Create and apply metadata for the data record, including descriptive
keywords</p>
</blockquote></li>
<li><blockquote>
<p>When appropriate, structure and present metadata in domain-specific
schemas to facilitate interoperability with other systems</p>
</blockquote></li>
<li><blockquote>
<p>Implement any other agreed-on enhancements to metadata or
documentation following discussion with researcher</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><p><strong>Key Ethical Considerations</strong></p>
<ul>
<li><blockquote>
<p>Make sure bibliographic information reflects correct author
attribution.</p>
</blockquote></li>
<li><blockquote>
<p>Ensure any augmentation by the depositor to resolve ethical questions
from previous steps is completed.</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><p><strong>Essential Tasks</strong></p>
<ul>
<li><blockquote>
<p>Review information received from the researcher from initial deposit
and all subsequent conversations</p>
</blockquote></li>
<li><blockquote>
<p>Update, as appropriate:</p>
</blockquote>
<ul>
<li><blockquote>
<p>Metadata</p>
</blockquote></li>
<li><blockquote>
<p>Documentation (readme, Codebook, Data Dictionary, Other)</p>
</blockquote></li>
<li><blockquote>
<p>Replacement files</p>
</blockquote></li>
<li><blockquote>
<p>Organization and Arrangement of files</p>
</blockquote></li>
<li><blockquote>
<p>Documentation of file organization, hierarchy, and naming
convention(s)</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Facilitate discoverability:</p>
</blockquote>
<ul>
<li><blockquote>
<p>Add links to related publications, grants, reports, source data,
etc.</p>
</blockquote></li>
<li><blockquote>
<p>Provide additional description of files as appropriate for external
indexing or other purposes.</p>
</blockquote></li>
<li><blockquote>
<p>Add subject terms</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Ensure keywords are sufficient and representative</p>
</blockquote></li>
<li><blockquote>
<p>Record all changes in the Curation Log</p>
</blockquote></li>
<li><blockquote>
<p>Provide suggestions to improve accessibility of content (e.g.,
alt-text or additional descriptions; color contrast; etc)</p>
</blockquote></li>
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
<th colspan="2"><p><strong>Transform</strong> file formats</p>
<p>In this step, consider the file formats in the dataset to make them
more interoperable, reusable, preservation friendly, and non-proprietary
when possible.<sup>1</sup> Common TRANSFORM steps include:</p>
<ul>
<li><blockquote>
<p>Identify specialized file formats and their restrictions (e.g., Is
the software freely available? If so, link to it or archive it alongside
the data)</p>
</blockquote></li>
<li><blockquote>
<p>Propose open source or more reusable formats when appropriate</p>
</blockquote></li>
<li><blockquote>
<p>Retain original file formats</p>
</blockquote></li>
</ul>
<p><sup>1</sup> See Cornell’s list of preservation format
recommendations: <a
href="http://guides.library.cornell.edu/ecommons/formats"><u>http://guides.library.cornell.edu/ecommons/formats</u></a></p></th>
</tr>
<tr class="odd">
<th colspan="2"><p><strong>Key Ethical Considerations</strong></p>
<ul>
<li><blockquote>
<p>Consider how best to navigate researcher bandwidth limitations and
ownership of data with repository commitments to reducing barriers to
reuse.</p>
</blockquote></li>
<li><blockquote>
<p><mark>Decide how to balance the potential benefits of transformation
with the risks of mistakes and loss of content/context, especially if
the curator or repository will be performing transformation. Document
the decision.</mark></p>
</blockquote></li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><p><strong>Essential Tasks</strong></p>
<ul>
<li><blockquote>
<p>Check whether preferred file formats are in use</p>
</blockquote>
<ul>
<li><blockquote>
<p>If not, recommend conversion</p>
</blockquote></li>
<li><blockquote>
<p>Retain original formats</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Check whether software needed is readily available</p>
</blockquote>
<ul>
<li><blockquote>
<p>Suggest open source options, if applicable and appropriate</p>
</blockquote></li>
<li><blockquote>
<p>Ensure software and software version is documented</p>
</blockquote></li>
</ul></li>
<li><blockquote>
<p>Convert any data visualization(s) that are not accessible (e.g., R <a
href="https://github.com/DataCurationNetwork/data-primers/blob/master/R%20Data%20Curation%20Primer/R-data-curation-primer.md#accessibility-considerations"><u>visualizations</u></a>,
which need to be converted for screen reader use, or visualizations that
do not meet color contrast guidelines)</p>
</blockquote></li>
<li><blockquote>
<p>Reorganize files as appropriate</p>
</blockquote></li>
<li><blockquote>
<p>Standardize file names</p>
</blockquote></li>
<li><blockquote>
<p>Record any transformations in Curator Log</p>
</blockquote></li>
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
<th colspan="2"><p><strong>Evaluate</strong> and rate the dataset</p>
<p>In this step, review the dataset and companion data record against
international standards, including FAIR,<sup>2</sup> CARE,<sup>3</sup>
and FATE.<sup>4</sup> Common EVALUATE steps:</p>
<ul>
<li><blockquote>
<p>Score the dataset and recommend ways to increase the FAIRness of the
data</p>
</blockquote></li>
<li><blockquote>
<p>Review data for ethical concerns in line with CARE and FATE</p>
</blockquote></li>
</ul>
<p>2. Rubric evaluating the FAIR principles are based on the scoring
matrix by Dunning, de Smaele, &amp; Böhmer (<a
href="http://dx.doi.org/10.2218/ijdc.v12i2.567"><u>2017</u></a>).</p>
<p>3. CARE principles: <a
href="https://www.gida-global.org/care"><u>https://www.gida-global.org/care</u></a></p>
<p>4. FATE in AI: <a
href="https://www.microsoft.com/en-us/research/theme/fate/"><u>https://www.microsoft.com/en-us/research/theme/fate/</u></a></p></th>
</tr>
<tr class="odd">
<th colspan="2"><p><strong>Key Ethical Considerations</strong></p>
<ul>
<li><blockquote>
<p>Final review--remember it is not too late to surface any ethical
concerns.</p>
</blockquote></li>
<li><blockquote>
<p>Verify the words/language being used are not racist/harmful.</p>
</blockquote></li>
<li><blockquote>
<p>Remind the submitter of their responsibility, if they choose to
ignore requests for de-identification or similar concerns.</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><p><strong>Essential Tasks</strong></p>
<ul>
<li><blockquote>
<p>Test that files successfully download</p>
</blockquote></li>
<li><blockquote>
<p>Check that any transformations didn’t introduce problems</p>
</blockquote></li>
<li><blockquote>
<p>Review final state of data and record with researcher before
publication</p>
</blockquote></li>
<li><blockquote>
<p>Add any final changes to Curator Log</p>
</blockquote></li>
</ul>
<p><em>This is a sample checklist for evaluating datasets against a set
of principles.</em></p>
<p><strong>FAIR evaluation</strong></p>
<p>Findable:</p>
<ul>
<li><blockquote>
<p>Metadata exceeds researcher/ title/ date.</p>
</blockquote></li>
<li><blockquote>
<p>There is a unique Persistent ID (DOI, Handle, PURL, etc.).</p>
</blockquote></li>
<li><blockquote>
<p>Data/record is discoverable via web search engines.</p>
</blockquote></li>
</ul>
<p>Accessible:</p>
<ul>
<li><blockquote>
<p>Data/ record are retrievable via a standard protocol (e.g.,
HTTP).</p>
</blockquote></li>
<li><blockquote>
<p>Data/ record are free, open (e.g., via a download link).</p>
</blockquote></li>
</ul>
<p>Interoperable:</p>
<ul>
<li><blockquote>
<p>Metadata is formatted in a standard schema (e.g., Dublin Core).</p>
</blockquote></li>
<li><blockquote>
<p>Metadata is provided in machine-readable format (OAI feed).</p>
</blockquote></li>
</ul>
<p>Reusable:</p>
<ul>
<li><blockquote>
<p>Data include sufficient metadata and supporting documentation about
the data characteristics for reuse.</p>
</blockquote></li>
<li><blockquote>
<p>A way to contact the researcher directly for further questions is
provided</p>
</blockquote></li>
<li><blockquote>
<p>There are clear indicators of who created, owns, and stewards the
data.</p>
</blockquote></li>
<li><blockquote>
<p>Data are released with clear data usage terms (e.g., a CC
License).</p>
</blockquote></li>
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
<th colspan="2"><p><strong>Document</strong> curation activities
throughout</p>
<p>In the Curator Log mentioned throughout this guide, record the
significant treatments or actions applied to the dataset. This is for
your archival record keeping (distinct from documentation the
researcher(s) created to accompany their own datasets). DOCUMENT
requires:</p>
<ul>
<li><blockquote>
<p>Recording all information relevant to the tracking and administration
of the deposit, about who did what to the dataset and when</p>
</blockquote></li>
<li><blockquote>
<p>Tracking communication with the researcher(s)</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="odd">
<th colspan="2"><p><strong>Key Ethical Considerations</strong></p>
<ul>
<li><blockquote>
<p>Document that disclosure risk review has taken place. State if
changes from original data have been made, but do not give enough detail
on changes to reverse-engineer any anonymization.</p>
</blockquote></li>
<li><blockquote>
<p>Include consent (or waiver) and/or IRB approval of sharing with
administrative documentation.</p>
</blockquote></li>
<li><blockquote>
<p>Consider collecting contributor demographics.</p>
</blockquote></li>
</ul></th>
</tr>
<tr class="header">
<th colspan="2"><p><strong>Essential Tasks</strong></p>
<ul>
<li><blockquote>
<p>Ensure the following information is captured in the Curator Log:</p>
</blockquote>
<ul>
<li><blockquote>
<p>Activities taken during the CURATE process</p>
</blockquote></li>
<li><blockquote>
<p>Accessioning &amp; deposit records (Names, dates, contact
information, submission agreements, etc.)</p>
</blockquote></li>
<li><blockquote>
<p>Repository collection metadata</p>
</blockquote></li>
<li><blockquote>
<p>Provenance logs (changes by curators in the Transform step)</p>
</blockquote></li>
<li><blockquote>
<p>Service workflow</p>
</blockquote></li>
<li><blockquote>
<p>Correspondences and other interactions</p>
</blockquote></li>
<li><blockquote>
<p>Preservation packaging</p>
</blockquote></li>
<li><blockquote>
<p>Any additional requirements at your institution</p>
</blockquote></li>
</ul></li>
</ul></th>
</tr>
</thead>
<tbody>
</tbody>
</table>
