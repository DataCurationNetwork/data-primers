![](DCNlogo.png)

# Accessibility Data Primer

Authors: Emily Oxford and Rachel Woodbrook (woodbr@umich.edu)

DCN Mentors: Wendy Kozlowski, Cornell University  


## Executive Summary

|   Topic   |   Description   |
| :------------- | :------------- |
| Key questions for curation review| <li>What types of files and data are included in the dataset? What types of accessibility considerations apply or are most relevant to ensure for the dataset? </li><li>What are the applicable accessibility best practices for the dataset or file format(s)? If none exist, what alternative practices can be used to make the data set or file formats more accessible?</li><li>Are appropriate metadata present in the right format and location (including metadata on accessibility, where needed)?</li><li>Has the dataset been tested for accessibility using an assistive technology, built-in accessibility checker, or web-based or other accessibility checker?</li> |
| Tools for curation review | <li>[Assistive technologies](https://www.atia.org/home/at-resources/what-is-at/) (e.g., screen readers, text to voice, zoom capability)<sup>1</sup> that may be available for individual machines.</li><li>Accessibility checkers built into specific software (e.g., Word products, Adobe Acrobat)</li><li>Published standards (such as [WCAG](https://www.w3.org/TR/WCAG21/),<sup>2</sup> those endorsed by [DAISY](https://daisy.org/activities/standards/),<sup>3</sup> [Crossref](https://www.crossref.org/blog/accessibility-for-crossref-doi-links-call-for-comments-on-proposed-new-guidelines/),<sup>4</sup> etc.)</li><li>Online tools (for examples see [Appendix C](#appendix-c-freely-available-tools))</li><li>Accessibility experts (e.g., campus accessibility offices or centers) and users with disabilities.<sup>5</sup></li> |
| Date Created | 2023-03-01 |
| Created by | Emily Oxford<br> Rachel Woodbrook - University of Michigan <br><br> DCN Mentor - Wendy Kozwloski – Cornell University  |
| Date updated and summary of changes made | Please see README  |



----------------------------
**Suggested Citation:** Oxford, Emily and Woodbrook, Rachel. (2023). Accessibility Data Curation Primer.[Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)


----------------------------


# Table of Contents

[Summary](#summary)

[A very brief introductions to digital accessibility](#introduction)

[Accessibility by data type](#accessibility-by-data-type)
> [Text](#text) <br> 
>> [Plain text](#plain-text) <br> [Formatted text](#formatted-text)
>>> [Microsoft Word](#microsoft-word) <br> [PDF](#pdf) <br> 
>> [Images of text](#images-of-text)
> [Tabular](#tabular)
>> [Plain tabular data](#plain-tabular-data) <br> [Formatted tabular data](#formatted-tabular-data) 
> [Code](#code)
>> [Scripts](#scripts) <br> [Markdown](#markdown)
> [Images](#images)
>> [General guidance](#general-guidance) <br> [Maps](#maps) <br> [3D Images](#3d-images) <br> [Data visualizations](#data-visualizations)
> [Time-based data](#time-based-data)
>> [Audio](#audio) <br> [Moving image/video](#moving-image-video)

[Accessible datasets](#accessible-datasets)
> [Accessibility metadata](#accessibility-metadata)

[Appendix A: Areas for further study](#appendix-a-areas-for-further-study)
> [Data type-specific considerations](#data-type-specific-considerations) <br> [File formats](#file-formats) <br> [Datasets](#datasets) <br> [Software and platforms](#software-and-platforms) <br> [Repositories](#repositories)

[Appendix B: Glossary](#appendix-b-glossary)
> [Primer definitions](#primer-definitions) <br> [WCAG definitions](#wcag-definitions)

[Appendix C: Freely available tools](#appendix-c-freely-available-tools)
> [Specific tools](#specific-tools) <br> [Collections of tools or general guidance](#collections-of-tools-or-general-guidance)

[Bibliography](#bibliography)


# Summary

> “...**everyone** must be able to use, re-use and redistribute–there should be **no discrimination** against fields of endeavour or against persons or groups.” - [The Open Data Handbook](https://opendatahandbook.org/guide/en/what-is-open-data/)<sup>6</sup>     

Although accessibility is a commonly-used word in the context of data curation, it’s important to clarify that it has most often been used in the more general sense of data that is findable and widely available.<sup>7</sup>  This includes considerations around indexing, clear context (and language), well-defined and standardized access paths, using open file formats, and paywalls/affordability. However, accessibility that explicitly takes into account the needs of a range of potential users including those with disabilities or neurodivergence is most often not included in this approach, and this shortfall needs to be addressed. 

Providing truly accessible data requires resources that many repositories (and researchers) have in short supply. But **availability is not accessibility, and accessibility is not optional.** (In some cases, accessibility may also be legally mandated, such as by requirements for federally funded research data and publications under [Section 508](https://www.section508.gov/create/)<sup>8</sup>  in the U.S.) For the purposes of this document, “Accessible” data means data compatible with assistive technologies, as well as featuring the considered use of design features such as color contrast, font size and legibility, and alternatives to visual presentations of information such that users with physical/sensory disabilities or who are neurodivergent have equivalent access to the information represented by the data. 

Ideally, data (as with other artifacts such as software, websites etc.) would be “born accessible,” that is, created taking into account all possible user needs for access (see also “Universal Design” in [Appendix B: Glossary](#appendix-b-glossary)). In practice, curators are likely to encounter datasets that require remediation–that is, adjustments after the fact to address barriers to accessibility for a user or group of users (see also [Appendix B: Glossary](#appendix-b-glossary)). Remediation is often performed for a specific user upon request and can be an important path to access for historical materials; however, request-based remediation services for physical content are frequently labor-intensive, sometimes impractical, and often insufficient. Digital resources should be accessible by design. While accessibility requires work up front, **the benefits and longevity of accessible data are worth the time and resources needed to create and maintain them.**

Accessibility benefits everyone who encounters the data regardless of their abilities– **accessible data is more navigable and understandable for everyone.** Accessible data attracts more users, including:
- People with visible and invisible disabilities
- People learning the data’s “native” language (English, Python, etc.)
- Scholars from other fields with potentially valuable contributions
- Anyone who needs the data to be machine-readable and/or optimized for reuse (almost everyone!)

Fortunately, accessibility is also not all-or-nothing, and any change for the better helps build toward new default practices for considering and addressing data accessibility long before a reuser encounters the data and has to discover how accessible it is (or isn’t). Data curators see many different data and are familiar with assessing data and documentation against best practices, advocating for change, and providing researcher education. As with many other curation challenges, many of the solutions actually lie upstream, during data creation and processing. **Data curators are thus uniquely positioned to help improve access not just to individual datasets, but to the world of research data at large.** As guides to and stewards of data, curators can counsel researchers on how to build accessibility into data planning, collection, analysis, and archiving. 

**This primer is intended as a starting point for data curators who are invested in improving the accessibility of individual files or datasets, rather than as definitive guide.** There is far more work to be done than can be addressed in the scope of this primer. Disability is also a complex concept with a diversity of possible presentations, which will present varying (sometimes even conflicting) accessibility needs. Similarly, there may be points at which recommended best practices for other aspects of data curation seem to come into conflict with accessibility. (For example, open source file formats are generally preferable from a preservation perspective, but open source software projects may not have the same resources to devote to accessibility features and standards as licensed or proprietary softwares do.) There is no “quick fix” for all users. As curators become more familiar with improving accessibility at the file and dataset level, they will be better equipped to help develop accessible repositories, write policies that foreground accessibility, conduct accessibility research, responsibly engage with disabled users as appropriate throughout the curation process, and improve existing curation workflows. 

# A very brief introductions to digital accessibility

The [Web Content Accessibility Guidelines (WCAG)](https://www.w3.org/TR/WCAG21/)<sup>9</sup> are the foundation of digital accessibility. These guidelines were developed for and are most applicable to website design and maintenance (though see also the Guidance on Applying WCAG 2.0 to Non-Web Information and Communications Technologies (WCAG2ICT), below). However, many of the guidelines and principles are also applicable to datasets. While most research data is not a single web page, accessibility guidelines for non-web content tend to be based on web guidelines.<sup>10</sup>  [This abbreviated guide](https://theappbusiness.github.io/accessibility-guidelines/) <sup>11</sup>  is a good starting point for understanding WCAG.

WCAG centers on four broad objectives:
- **Perceivable:** “Information and user interface components must be presentable to users in ways they can perceive.”
- **Operable:** “User interface components and navigation must be operable.”
- **Understandable:** “Information and the operation of user interface must be understandable.”
- **Robust:** “Content must be robust enough that it can be interpreted by a wide variety of user agents, including assistive technologies.”

**Some data curation work already facilitates access.** Ensuring that information is intuitively organized (“understandable”), clearly describing files and the relationships between them (“understandable”), and promoting open-source, platform-agnostic formats (“robust”) are all key components of digital accessibility. However, **curators also need to concern themselves with whether that content is perceivable, operable, and compatible with assistive technologies.**

A single document can be any file format, and many files and formats contain multiple types of content, each with its own accessibility considerations. Additionally, accessibility does not happen only at the document level. The [Guidance on Applying WCAG 2.0 to Non-Web Information and Communications Technologies (WCAG2ICT)](https://www.w3.org/TR/wcag2ict/)<sup>12</sup> describes accessibility as a product of several interwoven layers. **In a truly accessible dataset, each layer must be accessible, both individually and in combination with all other layers.**

Regardless of a dataset’s complexity, as they curate for accessibility, **curators should document their work.** Standards like WCAG are the result of years or decades of research. Documenting best practices and the reasons particular choices are made can inform future standards and make it easier to reproduce effective solutions.<sup>13</sup> When in doubt, It is generally advisable to follow proven best practices for a particular type of content, file format, etc., as these are most likely to be familiar to users, and there are more likely to be resources to reference. If no consensus on solutions exists, or if the existing solutions are not sufficient, curators can create workflows that can be reproduced and make these workflows publicly available. 


# Accessibility by data type

When curating for accessible files, it is important not only to look at the file’s format, but also at all of the types of information or data within or generated by the file. For example, a simple code file may be accessible as a plain text document, but any visualizations it generates may not be. The following guidelines for assessing both data and accompanying documentation files are based on the many data types one may find within various file formats, in the hopes that curators may transfer best practices to whatever data types they find within files. Curators may need to be creative in deciding how best to apply these guidelines when working with formats that might not accommodate necessary accessibility features like alt-text, changing color contrast, or screen reading. See also [Appendix B: Glossary](#appendix-b-glossary)) below for a primer-specific definition of the use of “data type” within this document. 

## Text

Curators should ensure that text content is organized and formatted in a way that supports step-by-step understanding by both humans and machines.

### Plain text

Plain text (.txt) is generally accessible to those using assistive technologies like screen readers. Additionally, curators can check for [WCAG-approved](https://www.w3.org/TR/WCAG20-TECHS/text) <sup>14</sup> formatting for human-readable headings, paragraphs, lists, and line breaks, including:

- Use one blank line before and after paragraphs in a sequence.
- Use bullet points (like a dash) or sequential numbers and/or letters to indicate list items.
- Ensure that there are TWO blank lines before each heading (end of a section) and ONE blank line after each heading.

When generating plain text documents, Kozlowski and McLaren at Cornell <sup>15</sup> also suggest:
- Make sure there is one space after each colon (“: ”)
- Include both MacIntosh and Unix line breaks ([Carriage Return and Line Feed](https://stackoverflow.com/questions/1552749/difference-between-cr-lf-lf-and-cr-line-break-types) <sup>16</sup> – this will likely be a setting in the text editor)
- Ensure that lists are clearly titled or labeled to indicate their purpose

Note that some types of plain text files (e.g., video captions, markdown (text-to-HTML–see also [Appendix B: Glossary](#appendix-b-glossary)) will have specific formatting requirements to allow successful interaction with the software used to display them. There may also be choices made upon saving or exporting about what type of text encoding standard to use; those that support Unicode and multilingual text capabilities  (such as UTF-8) are preferable.

### Formatted text

For formatted text (such as .docx or PDF files, or well-structured HTML rendered in a browser), accessibility depends on both the type(s) of content as well as the file format in which it is presented, and how contextual information (e.g., document metadata) is stored and presented. Plain text is generally the preferred format for both accessibility and preservation, although it may not be the best format for a particular work for other reasons (and lacks some information and navigation assistance that can be included in formatted text–for example, by permitting users to quickly review level 1 headings). If other types of content are included in a file (such as images), refer also to the appropriate section elsewhere in this primer.

[Understanding Document Accessibility](https://pressbooks.library.ryerson.ca/docs/)<sup>17</sup> from the Chang School at Ryerson University is a comprehensive guide for creating accessible text documents in a variety of formats and versions. In general, however, be mindful of the following:
- If the software necessary to interact with the document is itself inaccessible (due to being proprietary, having an inaccessible user interface, etc.), consider converting the document to a more accessibility-friendly format.
- Use accessible formatting, including when utilizing [headings](https://accessibility.umn.edu/what-you-can-do/start-7-core-skills/headings),<sup>18</sup> [fonts](https://accessibility.psu.edu/legibility/fontface/),<sup>19</sup> and [colors](http://web-accessibility.carnegiemuseums.org/design/color/).<sup>20</sup> Make sure that no part of the document relies on visual formatting alone to convey meaning (i.e., that visual appearance is underlaid by appropriate use of features available within the file format, such as tagged tables with headers). 
- For screenreader users as well as human readers, headings are particularly important for scanning longer documents, and must be both consistent and meaningful to be useful.<sup>21</sup>
- Add metadata to the file itself (if it is not automatically generated) to facilitate accessibility. For example, it is possible to [add descriptive metadata to a Word or PDF document](https://www.open.ac.uk/libraryservices/documents/metadata-test/Adding%20metadata%20to%20documents%20pdf.pdf)<sup>22</sup> (such as title, author, and language).
- If available, use automated tools to check document accessibility. There are some third-party tools available online, and many widely-used proprietary formats have software with built-in accessibility checkers (such as Adobe Acrobat for PDFs). (These can be very useful, but are generally better at catching some types of issues than others, and do not negate the need for human review of the document(s).).
- If the formatted text contains images, make sure they are described either as [alt(ernative) text](https://webaim.org/techniques/alttext/)<sup>23</sup> or within the text itself per image description guidelines (see also section below on Images and [Appendix B: Glossary](#appendix-b-glossary)).
- Any equations or expressions in mathematical notation should be rendered with [LaTeX](https://www.latex-project.org/)<sup>204</sup> or [MathML](https://www.w3.org/Math/)<sup>25</sup> to improve readability for those using screen readers. While guidance on which [math markup language](https://en.wikipedia.org/wiki/Mathematical_markup_language)<sup>26</sup> is best for accessibility is mixed, LaTeX and MathML are the most widely adopted and thus most likely to be familiar to users regardless of ability or assistive technology. [The Diagram Center](http://diagramcenter.org/specific-guidelines-g.html#74)<sup>27</sup> and [Accessibility and Usability at Penn State](https://accessibility.psu.edu/math/equations/)<sup>28</sup> have helpful guides for creating accessible mathematical notation.
- Hyperlinked phrases used as links should be readable by screenreaders, and preferably unique within the document so they can be easily rediscovered.

Microsoft Word and PDF are the two formatted text file formats curators are most likely to encounter. Thankfully, both formats have relatively well-documented accessibility best practices, although PDF in particular, though it has a defined accessibility standard ([PDF/UA](https://en.wikipedia.org/wiki/PDF/UA)<sup>29</sup>), also has a variety of accessibility issues both when creating them, and when using assistive technology to access them. (For example, viewing very enlarged text in PDFs requires users to scroll horizontally as well as vertically, which can be very cumbersome; and any redactions made within Adobe are flagged as “figures” needing alternative text.<sup>30</sup> One option, especially where conversion to PDF is likely to have lost information present in an originating format such as LaTeX, would be to include alternative formats such as well-structured Word, HTML, or Epubs alongside PDFs.) See also this comparison chart on [HTML vs. Word vs. PDF: Accessibility Strengths and Weaknesses](https://commonlook.com/read-and-learn/accessibility-tutorials/html-vs-word-vs-pdf-accessibility-strengths-and-weaknesses/)<sup>31</sup>  and this resource on [Word, PDF or Web Page?](https://webaccess.msu.edu/Tutorials/basics/file-type.html)<sup>32</sup> 

Curators are encouraged to consult the following resources:


#### Microsoft Word

- [Microsoft Word Tips](https://accessibility.psu.edu/microsoftoffice/microsoftword/)<sup>33</sup> (Accessibility and Usability at Penn State)
- [Make your content accessible to everyone with the Accessibility Checker](https://support.microsoft.com/en-us/office/make-your-content-accessible-to-everyone-with-the-accessibility-checker-38059c2d-45ef-4830-9797-618f0e96f3ab)<sup>34</sup> (Microsoft Office)
- [Create Accessible [Word] Documents](https://www.section508.gov/create/documents/)<sup>35</sup> (Section 508)

#### PDF

- [The Case Against PDFs](https://pressbooks.library.ryerson.ca/docs/chapter/the-case-against-pdfs/)<sup>36</sup> (The Chang School at Ryerson)
- [PDF Issues and Recommendations](https://accessibility.psu.edu/pdf/pdfissues/)<sup>37</sup> (Accessibility and Usability at Penn State)
- [Create Accessible PDFs](https://www.section508.gov/create/pdfs)<sup>38</sup> (Section 508)
- [Ensuring Proper Tab and Reading Order](https://www.washington.edu/accessibility/checklist/order/)<sup>39</sup> (University of Washington–see PDF section)
- [PAC 2021 - The Free PDF Accessibility Checker](https://pdfua.foundation/en/pdf-accessibility-checker-pac/)<sup>40</sup>

### Images of text

Images of text are almost entirely inaccessible to users who primarily use screen readers. Wherever possible, such images should be replaced or at least accompanied by an alternate plain text version (or formatted text if appropriate). Although humans are generally better transcribers than computers, automated [optical character recognition (OCR)](https://en.wikipedia.org/wiki/Optical_character_recognition)<sup>41</sup> tools like [Tesseract](https://tesseract-ocr.github.io/)<sup>42</sup> can reduce the amount of work for curators and creators.

## Tabular

Tabular data (that is, data in rows and columns–tables) is one of the most common forms a data curator is likely to encounter. Thankfully, many of the practices noted below are already considered part of a curator’s work to make data more generally understandable and usable.

Of note from [WC3’s “Tips and Tricks: section of their Tables Tutorial](https://www.w3.org/WAI/tutorials/tables/tips/)<sup>43</sup>:
- More, simpler tables are better than fewer, more complex tables. Avoid combining multiple tables into one sheet or file; generally each table should start the top-leftmost cell.
- Each data point should have its own cell. (This accessibility practice in particular will also likely lead to easier-to-use and share data for all!)

Of note from the [University of Minnesota’s “Spreadsheets” section of Accessible U](https://accessibility.umn.edu/what-you-can-do/create-accessible-content/spreadsheets)<sup>44</sup>:
- Clear and meaningful column and row names facilitate understanding and make it easier for screen readers to read correctly.


### Plain tabular data

As a simple and open file format, Comma- or Tab-Separated Value (CSV/TSV) formats  are not only best for preservation, but for accessibility as well. These can be read by multiple programming languages and softwares, giving users more flexibility to interact with the data in ways that work for them. In general, many best practices for plain tabular data aid in accessibility; for one example of a standard providing guidance, see the [UK’s Tabular Data Standard](https://www.gov.uk/government/publications/recommended-open-standards-for-government/tabular-data-standard).<sup>45</sup>:

### Formatted tabular data

If at all possible, use a plain tabular version or provide a plain tabular alternative. As with formatted text, much of the accessibility of formatted tabular data depends on the software necessary to interact with it. For example, while Microsoft Excel has many accessibility features for .xslx files, MATLAB has a variety of accessibility issues, making it harder to work with any tabular data within a .mat file.<sup>46</sup>

Formatted tabular data most often lives in Microsoft Excel files. Like Microsoft Word, there are an abundance of resources on making Microsoft Excel files as accessible as possible. A few resources the reader may want to consult include:
- [Make your Excel documents accessible to people with disabilities](https://support.microsoft.com/en-us/office/make-your-excel-documents-accessible-to-people-with-disabilities-6cc05fc5-1314-48b5-8eb3-683e49b3e593)<sup>47</sup> (Microsoft Office)
- [Excel Tips](https://accessibility.psu.edu/microsoftoffice/excel/)<sup>48</sup> (Accessibility and Usability at Penn State)
- [Create Accessible Spreadsheets](https://www.section508.gov/create/spreadsheets/)<sup>49</sup> (General Services Administration of the U.S. - focused on Excel)

Of note:
- Make sure that text is aligned to the left and numbers are aligned to the right. This makes it easier to distinguish between different types of information [within the table](https://www.w3.org/WAI/tutorials/tables/tips/).<sup>50</sup>
- Include alt text for any visualizations included on the spreadsheet. See the section on data visualizations below for guidance on writing a meaningful description; Penn State also has [clear instructions](https://accessibility.psu.edu/microsoftoffice/microsoftalttags/)<sup>51</sup> on how to add alternate text in Excel.
- “[Put some text into cell A1](https://accessibility.psu.edu/tables/). Preferably this should be the title of the data set, but if that is not possible, it should include information about the structure and location of data, even if the color is set to white.”<sup>52</sup>
- [Avoid using merged cells](https://accessibility.psu.edu/tables/), as they can lead to a confusing reading order for screen readers.<sup>53</sup>

## Code

Information available on writing accessible code is unexpectedly sparse. This may be because “code” can look like so many things and use many different syntaxes; and/or because at its core, code is a type of plain text. However, many best practices for ideal code facilitate both human and machine readability, which are also aspects of accessibility. 

### Scripts

Code itself tends to be analogous to plain text, but its inputs and outputs might not be accessible; when possible, apply the accessibility considerations above to code inputs and outputs–e.g., using in-line comments to describe any visualizations generated, etc. 
- To the extent reasonable, document work throughout: for example, in-line comments that describe function inputs and outputs, etc. This helps not only with preserving work for the future (code/packages can deprecate, but human-readable comments do not), but with accessibility (navigability) as well. Follow standard conventions for a given language or format when using in-line comments.
- Include in-line comment image descriptions or rich descriptions in documentation, or embed descriptive metadata in images (see data visualization section below).
- Consider accessibility when naming and calling files and variables–for example, camelCase may be easier for screenreaders to read as natural language than filenames separated by underscores.


### Markdown<sup>54</sup>

Markdown files, similar to HTML, are themselves plain text but contain information to signal formatting when the content is rendered and displayed. Markdown can often be converted to HTML as well. Markdown files should…

- Use consistent hierarchical formatting for headings.<sup>55</sup> As with other textual data, this will improve the readability and navigability of the file.
- Also make certain that other accessibility practices (such as providing alt text for images and [using unique link text](https://accessibility.oit.ncsu.edu/it-accessibility-at-nc-state/developers/accessibility-handbook/mouse-and-keyboard-events/links/link-text-needs-to-be-uniquely-identifiable-within-the-page/)<sup>56</sup>) should be used.
- The accessibility of the markdown will likely depend on the software needed to access it, the sorts of outputs it generates, etc. This is an area in need of further study.
- See also the sections above on Plain and Formatted Text.

Some other useful considerations and tips for markdown are included in Godfrey’s “Accessible R Markdown Documents.”<sup>57</sup>

## Images

### General guidance

- All images should come with a text description for people who interact differently with (or do not perceive) visual content. The Diagram Center has [comprehensive guidelines for describing images](http://diagramcenter.org/table-of-contents-2.html)<sup>58</sup> of multiple types and purposes, with various examples to reference. In general, any description:
    -	 Should strike a balance between being concise and detailed. Provide enough information so that the reader can understand what the image contains, but not more.
    -	 Should **not** interpret the image’s meaning for the reader, but rather let the reader draw their own conclusions from the information provided.
- **Ask the creator to write the description.** As an expert in their own work, they will have the understanding and expertise to write a sufficiently detailed and focused description of an image for their desired audience.<sup>59</sup> It can be helpful for the description’s writer to imagine that they are describing the image over the phone.<sup>60</sup>
- Check for color contrast (if applicable); online tools such as [Color Brewer](https://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3)<sup>61</sup> may be useful for this purpose. Use best judgment on whether something needs to be corrected or described. If color conveys additional meaning that might not be visible to people with color blindness, include naming the color as part of the description. 
- Provide any text that is in the image in an accessible format.<sup>62</sup>

Below are additional considerations for specific image types common in academic research.


### Maps

“Maps” here refers to any visual representation of a geographical space, including but not limited to static images of maps, interactive maps, and maps generated by GIS software. There are currently no standards for making maps accessible,<sup>63</sup> so curators may need to find creative solutions to provide access to them depending on the complexity of the map and any accompanying software. However, curators can reference these general principles when working with creators, though not all will be equally relevant to all maps. Some of these resources provide examples as well:
- Where possible, provide the underlying data that generated the map, in as accessible a format as possible..
“Accessible maps for blind or visually impaired persons are meant to communicate the same or at least a sufficient subset of the information which is stored in a visual map.”<sup>64</sup>
- Who are the anticipated users? “Many [...] applications use visual maps to communicate location based information to the user, which is a problem for people [with] visual disabilities or blindness, even though they would at least equally benefit from these types of applications. In addition, other types of disabilities influence the requirements which need to be considered by a location-based application. For example, [for] deaf, hard of hearing or elderly people or people with cognitive disabilities [...] The presentation of geographic data needs to be adapted to these target groups too.”<sup>65</sup>
- “Whenever possible, organize the description using bulleted lists and by pulling the most important information to the beginning of the description, so students hear it first.”<sup>66</sup>
- “The elements in the key can be folded into the description of the map itself and do not need to be described separately.”<sup>67</sup>
- “If the map is used as part of a geography lesson and the land and water are relevant, describe the labeled areas, including their relationship and distance to each other when relevant.”<sup>68</sup>
- “If a map includes color coded regions, make sure that:
    -	 There is sufficient [contrast](https://accessibility.psu.edu/images/contrast)<sup>69</sup> between the text and the background.
    -	 [...] color coding is usable for those with [colorblindness](https://accessibility.psu.edu/accommodations/audience/colorblindness/).<sup>70</sup> A good test is to see if the map is still usable in black and white.”<sup>71</sup>

### 3D Images

3D images are likely to be even more complex, with additional files and varied file types, an additional spatial component to communicate, and more specialized (and therefore less widely-used and more likely to be proprietary) software. However, some basic practices are nonetheless useful to consider: 
- Where possible, provide the underlying data that generated the 3D image.<sup>72</sup>
- The guidelines for images above apply–rich description, ensuring that any meaning conveyed by color is described, or that color is altered to provide sufficient contrast.
- Ensure that any contextual metadata the file or program allows for is populated, as appropriate.
- Note that many 3D images may be generated and/or typically read by software that is itself inaccessible, for various reasons.


### Data visualizations

Data visualization is “the presentation of data in a pictorial or graphical format. It enables decision makers to see analytics presented visually, so they can grasp difficult concepts or identify new patterns.” Thus, visualizations are ways to present and highlight patterns, trends and connections using the brain’s ability to visually process complexity and take shortcuts not possible when looking at raw numbers. Visualizations can include simple bar graphs, scatter plots, or complex charts that allow interaction, “changing what data you see and how it’s processed.”<sup>74</sup> But the shortcuts that are leveraged in such visual presentations can also present additional barriers.

When it comes to visualizations and accessibility, “[o]n the whole, graphics are not accessible to the blind user, no matter which file format is chosen.”<sup>75</sup> Most often we end up, once again, relying on verbal description to create a proxy conveying comparable information. (There are also experiments that have been going on with [data sonification](https://en.wikipedia.org/wiki/Data_sonification) for years, however this is a much less common way to encounter data interpretation). According to A.J.R. Godfrey, “There is one file format [SVG] that stands out as having the potential to deliver added information to the blind user, but even scalable vector graphics (SVG) files rely on human intervention to manually add the necessary detail that make [sic] the graphic informative."<sup>76</sup>

"Behind every graph that has been created lies an intention to pass information, not usually data; it is this intention that should be communicated in the description.”<sup>77</sup> For example, in the section of a text that introduces scatter plots it would be preferable to provide a full description; the same dataset might also feature in the material talking about linear regression where only the linearity of the data is relevant. (Note that, as above, this does not mean interpreting the visualization, but rather describing its most salient points given the particular context). Again, this is why it is especially important for data creators to be involved in creating such descriptions, as they will be the experts on what information a given graph is intended to communicate.

For these reasons, The data from which the visualization were created should also be included in the dataset deposit where possible;<sup>78</sup> CSV is the preferred file format for accessibility of tabular data. Be mindful that access to underlying data does not mean that all users will be able to understand the visualization at the same level, since visualizations illuminate patterns and nuances in a way that tabular data alone cannot.<sup>79</sup>

- Describe, but do not overly interpret the visualization for users. They should be able to draw their own conclusions about any patterns the visualization does or does not show.<sup>80</sup>


Curators are encouraged to consult resources such as the following:
- The Diagram Center’s guidance on describing graphs: [Specific Guidelines - Graphs](http://diagramcenter.org/specific-guidelines-e.html)<sup>81</sup>
- The University of Nevada, Reno’s guidance on [Making Graphical Data More Accessible](https://www.unr.edu/accessibility/resources/documents/accessible/research-and-publications/strategy-2)<sup>82</sup>
- Penn State’s [guidance on charts and accessibility](https://accessibility.psu.edu/images/charts/)<sup>83</sup>


## Time-based data

All time-based data should be accompanied by textual descriptions (for example captions, transcripts, etc.--see [Appendix B: Glossary](#appendix-b-glossary) for a clarification of the difference between transcripts, captions, and subtitles).

### Audio

- If the audio file contains speaking, ensure that there is a transcription. (Ideally captions, which are machine-readable files with timing information, would also be generated/included).
- For any audio without speech, ask the creator to write a description, including the time(s) that certain sounds happen. 
- If applicable, provide any underlying data that generated the audio file.
- Include descriptions of other components of the audio (such as pauses, non-verbal vocalizations etc.) as well.


### Moving image/video

- As with audio data, video data that includes sound should have some form of text description of associated audio. If there is language spoken/used, a transcript and/or captions should be included. If not, as possible, include description of other sounds.
- Visual description should also be included, either as audio or via text, to describe what happens in the moving image. See for example this resource on the [Description of Visual Information](https://www.w3.org/WAI/media/av/description/)<sup>84</sup>  , and the National Center for Accessible Media’s page on [Tools and Guidelines](http://ncamftp.wgbh.org/ncam-old-site/invent_build/web_multimedia/tools-guidelines.html)<sup>85</sup>  .
- Data with animation or video may need to be assessed for its ability to induce epileptic seizures, especially if it contains “flashing or rapid transitions between light and dark background colors.”<sup>86</sup> The [Photosensitive Epilepsy Analysis Tool (PEAT) tool](https://trace.umd.edu/peat)<sup>87</sup>   is one freely-available option for creators to assess risks in their content and software. If these risks are not correctable, a warning may need to be included in the data’s metadata/documentation. 
- The University of Washington also provides some [online resources on video accessibility](https://www.washington.edu/accessibility/videos/)<sup>88</sup>  

# Accessible datasets

In addition to the considerations already mentioned for data within individual files and file types, the connections and interplay between the various parts of a dataset introduce additional complexity into accessibility assessment and improvement. It is beyond the scope of this primer to explore all of the possible relationships and interplay between complex datasets, but [Appendix A](#appendix-a-areas-for-further-study) includes some of the areas identified as in need of further study. These indicate avenues for potential advancement and improvement as we become better equipped to understand what accessibility when it comes to data truly means. Additionally, metadata at the dataset level can help communicate overall accessibility considerations, features or concerns.

## Accessibility metadata

Accessibility metadata can help users assess the accessibility (and potentially, barriers) of a dataset before downloading and opening the content. Proper formatting and placement is necessary for all types of metadata to be accessible. I.e., if there is a readme, is it machine readable text with headers? Are some columns or rows in a tabular dataset highlighted in a particular color that is meant to convey meaning? (If so, another way to communicate this information should be found). Are DOIs displayed appropriately, including with meaningful titles<sup>89</sup> ? Metadata can be stored within the dataset itself, or collected and added by the repository. 

An example of schema.org accessibility fields implemented by Cornell University is below<sup>90</sup>:

|   *Metadata Element**   |   **Display Name**   |   **Help Text**   |   **Values / Comments**   |
| ------------- | ------------- | ------------- | ------------- |
| Schema.accessibilityFeature | Accessibility feature | Select the Accessibility feature(s) for the content of the item. | alternative text <br> bookmarks <br> captions <br> ChemML <br> described math <br> display transformability <br> high contrast audio <br> high contrast display <br> large print <br> long description <br> MathML <br> reading order <br> structural navigation <br> tagged PDF <br> transcript |
| Schema.accessibilityHazard | Accessibility hazard | Select the possible Accessibility hazard(s) for the content of the item. | none <br> flashing <br> no flashing <br> motion simulation <br> no motion hazard <br> sound <br> no sound hazard <br> unknown |
| Schema.accessibilitySummary | Accessibility summary | Enter a human-readable summary of specific
accessibility feature and deficiencies.| free text |

# Appendix A: Areas for further study

*Below are some areas that came up as relevant during the research for this primer, but were determined out of scope or did not have enough information easily accessible for us to write general recommendations. If you know more about one of these areas, have resources to suggest or would be interested in revising this primer or creating an additional primer or primer section, please reach out to Rachel Woodbrook or the [DCN](https://datacurationnetwork.org/contact/)!*

## Data type-specific considerations

**Navigating data visualizations with SVG:** SVG as an accessible file format is “in its infancy.” Ideally, there would be automatic “parallel narratives of visualization,” in which a programmatic template is supplied, and filled in with data to create an accessible visualization.<sup>91</sup> The [latest full w3 SVG specification](https://www.w3.org/TR/SVG2) is available online.<sup>92</sup>

**Accessible databases:** Guidelines or best practices for creating accessible databases within different types of software or programs, and [different database models](https://en.wikipedia.org/wiki/Data_model#Types)<sup>93</sup> (e.g., hierarchical, relational, etc.) is another area for development. For example, what are the considerations for relational vs. tabular data, or using a format such as JSON which is inherently hierarchical. Other potential areas of exploration would be how best to provide clear documentation of data relationships in multiple ways. (E.g., including an Entity-relationship-diagram (ERD) with text description AND a parallel visual). In what circumstances would it make sense to do this, or what type of lead time/expertise would be needed?

**Accessible interactive content:** There is already a body of work on gaming and accessibility, which might provide a good starting point.<sup>94</sup> In general, more investigation of the accessibility of 3D content, which is often interactive, would be useful. (One potential reading on this topic is [Accessing 3D Data](https://digitalcommons.unl.edu/anthropologyfacpub/196/)<sup>95</sup> from *3D Data Creation to Curation: Community Standards for 3D Data Preservation*).

## File formats

The accessibility benefits or challenges of different programming languages, for example Python vs. MATLAB, is an area that is promising for more and more centralized investigation.

Guidelines for other specific file formats, or workarounds when a format does not lend itself to accessibility and/or modification, should also continue to be developed. This should include usability research, with one example being this practice brief on [Building a Fluent Assistive Technology Testing Pool to Improve Campus Digital Accessibility](https://files-eric-ed-gov.proxy.lib.umich.edu/fulltext/EJ1247072.pdf)<sup>96</sup>. A section on “Accessibility considerations”](https://github.com/DataCurationNetwork/data-primers/blob/master/R%20Data%20Curation%20Primer/R-data-curation-primer.md#accessibility-considerations)<sup>97</sup> has been added to the existing DCN R Primer, but other primers would benefit from similar treatment. However, there are additional challenges in keeping such a variety of resources up to date, as each program or software update can introduce new features or new challenges.

## Datasets

Accessibility guidelines for common combinations of software, sets of software, documents, sets of documents, or user agents (as defined below in [Appendix B: Glossary](#appendix-b-glossary)) would be a useful addition to available resources, as would standardized guidelines on how to make navigating a dataset accessible (again, [Building a Fluent Assistive Technology Testing Pool to Improve Campus Digital Accessibility](https://files-eric-ed-gov.proxy.lib.umich.edu/fulltext/EJ1247072.pdf0<sup>98</sup> might be a good starting point).

Accessibility should also be built into existing curation workflows. The creation of accessibility checklists or evaluation forms to use across file formats, such as those used for product and service evaluation within institutions, could be a good model. For example, see the University of Washington’s [IT Accessibility Checklist](https://depts.washington.edu/uwitats/checklist/).<sup>99</sup> The DCN’s own [CURATE(D) steps](https://datacurationnetwork.org/outputs/workflows/)<sup>100</sup> have been updated to explicitly include some accessibility questions, and other workflows and models such as the [DCC Curation Lifecycle Model](https://www.dcc.ac.uk/guidance/curation-lifecycle-model)<sup>101</sup> would likely benefit from a similar review.

## Software and platforms

Another area that requires further investigation and centralized documentation is the accessibility potential (and shortcomings) of particular platforms and programs likely to be encountered from a curation perspective. For example, DCN primers are published on GitHub, a widely-used code-sharing platform with [a variety of identified accessibility shortcomings](https://government.github.com/accessibility/)<sup>102</sup>.

## Repositories

The repository platform and interface in which data is stored also affects the accessibility of the data. In what ways might particular repository platforms, capabilities or features enhance accessibility when interacting with data that have been optimized for accessibility, and how might less accessible repository platforms or specific features create additional barriers that hinder accessibility?

# Appendix B: Glossary

## Primer definitions

**Accessible data** - For the purposes of this primer, “accessible” data means data compatible with assistive technologies, as well as featuring the considered use of design features such as color contrast, font size and legibility, and alternatives to visual presentations of information such that users with physical/sensory disabilities or who are neurodivergent have equivalent access to the information represented by the data. 

**Alt(ernative) text** - “Alternative text is a textual substitute for non-text content in web pages [that is read by assistive technology, but hidden from human sight]. This [often focuses] on images, but its principles also apply to multimedia and other non-text content.”<sup>103</sup> (See also Image description, below).

**Assistive technology** - “Assistive technology is technology used by individuals with disabilities in order to perform functions that might otherwise be difficult or impossible. [...] For example, people with limited hand function may use a keyboard with large keys or a special mouse to operate a computer, people who are blind may use software that reads text on the screen in a computer-generated voice, people with low vision may use software that enlarges screen content, people who are deaf may use a TTY (text telephone), or people with speech impairments may use a device that speaks out loud as they enter text via a keyboard.”<sup>104</sup>

**Captions** - Captions convey dialogue in the original language plus background or ambient sounds via text, and are primarily intended for viewers who cannot hear audio. They are timed to coincide with audio, and are displayed over the top of video (or audio) displays. (see also Subtitles and Transcripts, below).

**Captions, closed** - Closed captions are a timed caption text file, separate from the video, that the video player can process and display over top of the video. The user can turn them on or off, adjust display, etc., but must know how to do this in order to display them.

**Captions, open** - Open captions are captions on screen that are part of the video visuals. They are "burned in" to the video and cannot be turned off or resized, etc. because they are pixels in the video visuals.<sup>105</sup>

**Data type** - For the purposes of this primer, “data type” is roughly equivalent to content type, and is the basis of the recommendations for different accessibility considerations. Multiple data types can be included in a single dataset or file or its outputs; for example, a PDF may contain images and formatted text; an HTML file is itself made up of plain text, but its output is formatted text and/or images, etc.

**Image description** - “When an equivalent alternative for a complex image (chart, graph, map, etc.) will not fit inside a succinct alt attribute (perhaps a couple sentences in length), then the alternative must be provided elsewhere. This might be an adjacent data table on the same page, or it might be on a separate web page, linked from the page with the image. The link can be adjacent to the image, or the image itself could be linked to the description page. The alternative text for the image should still describe the general content of the image.”<sup>106</sup>

**LaTeX** - LaTeX is a math markup language used widely in the science and math communities, but is not always supported by common screenreader technology.<sup>107</sup>

**Markdown** - Markdown can be thought of as text-to-HTML: “Markdown is a lightweight markup language that you can use to add formatting elements to plaintext text documents. [...] In an application like Microsoft Word, you click buttons to format words and phrases, and the changes are visible immediately. Markdown isn’t like that. When you create a Markdown-formatted file, you add Markdown syntax to the text to indicate which words and phrases should look different.”<sup>108</sup>

**Markup** - “Markup language is a [text-encoding system](https://en.wikipedia.org/wiki/Encoding) consisting of a set of symbols inserted in a [text document](https://en.wikipedia.org/wiki/Text_file) to control its structure, formatting, or the relationship between its parts.[1] Markup is often used to control the display of the document or to enrich its content to facilitating [sic] automated processing.”<sup>109</sup>

**MathML** - MathML is a text-based XML markup language designed for the presentation of math equations. Browsers which support MathML are able to translate the XML into a formatted equation.<sup>110</sup>

**Remediation** - Generally, remediation is the act of remedying; that is, making adjustments to correct problems or make something right. In the context of this primer, remediation refers to the process of assessment and making recommendations and changes to a dataset after its creation, in order to improve its accessibility.

**Subtitles** - Subtitles display dialogue in the original or a translated language, and are primarily intended for viewers who are learning or do not know the spoken language. They are timed to coincide with audio, and are displayed over the top of video (or audio) displays. As with captions, subtitles can be open or closed (see Captions, closed and Captions, open, above).

**Transcript** - A transcript contains speech transcribed from audio or video into text; it may also include speaker identification and potentially some timing information. Transcripts are generally human-readable on their own; a transcript provides the basis for captions, which have a more structured format and contain more specific timing information.

**Universal Design** - “Universal Design is the design and composition of an environment so that it can be accessed, understood and used to the greatest extent possible by all people regardless of their age, size, ability or disability.”<sup>111</sup> In contrast to remediation, UD takes a proactive approach and tries to anticipate as many barriers to avoid ahead of time as possible.

## WCAG definitions

Although use of these terms in the primer may not follow the [WCAG definitions](https://www.w3.org/TR/wcag2ict/#keyterms_document)<sup>112</sup>, these definitions (and examples) may be useful for those consulting WCAG resources the primer links to, and are included here for reference:

**Document** -  “assembly of content, such as a file, set of files, or streamed media that functions as a single item rather than a collection, that is not part of software and that does not include its own user agent.” (Example: The video, audio, captions and timing files used to present a recorded interview as a cohesive experience).

**Set of documents** -  “group of documents that are published together, and where the items all refer to each other by name or link.” (Example: a three-part report where each part is a separate file and the individual files reference and link to each others.)<sup>113</sup>

**Software** -  “software products or software aspects of hardware-software products that have a user interface and do not require a separate user agent to present any of its content.” (Examples: Microsoft Excel, Adobe Acrobat, Stata).

**Set of software** -  “group of software programs that are distributed together and that can be launched and used independently from each other, but that are interlinked each with every other one such that users can navigate from one program to another via a consistent method that appears in each member of the set.”<sup>114</sup>

**User agent** -  “any software that retrieves and presents documents for users. Examples: Web browsers, media players, plug-ins, and other programs—including assistive technologies.”

# Appendix C: Freely available tools

As of the time of this primer’s publication–please note, this is in no way intended to be an exhaustive list, but merely a selection of tools the authors are aware of for those facing a particular curation for accessibility challenge and wondering where to begin. All links to external resources in this section and elsewhere have been evaluated for usefulness of content but cannot be guaranteed to be free of outdated or deprecated language that could potentially be distressing. These tools are also linked under the appropriate sections above.

## Specific tools

[Coolors](https://help.coolors.co/hc/en-us/articles/360010651639-Using-the-Color-Blindness-feature) - Color palette generation tool that allows you to view how your palette will appear to users with multiple types of color blindness.

[Color Brewer](https://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3) - online tool providing color advice for map creation; includes an “only show colorblind safe” palette option.

[Coblis Color Blindness Simulator](https://www.color-blindness.com/coblis-color-blindness-simulator/) - use to evaluate visual images for contrast by dragging and dropping image.

[Color Oracle](https://colororacle.org/) - A free color blindness simulator for Windows, Mac and Linux. Color Oracle applies a full screen color filter to art you are designing, independently of the software in use.

[IT Accessibility Checklist](https://depts.washington.edu/uwitats/checklist/) (University of Washington) - This checklist is geared toward web content, but many of the checks are applicable to non-web documents or datasets as well.

[MAGpie](http://ncamftp.wgbh.org/ncam-old-site/invent_build/web_multimedia/tools-guidelines/magpie.html) - Free software for adding captions and video descriptions to QuickTime, Windows Media, Real and Flash multimedia. See also these technical instructions for MAGpie: [Audio Description Authoring](http://ncamftp.wgbh.org/ncam-old-site/invent_build/web_multimedia/tools-guidelines/magpie2-audio-description-auth.html).

[PAC 2021]() (PDF Accessibility Checker - Automated PDF/UA compliance validation tool. PAC is designed to identify all of the machine verifiable success criterion of ISO 14289-1 (PDF/UA) and WCAG (Web Content Accessibility Guidelines).

[PEAT](https://trace.umd.edu/peat/) (Photosensitive Epilepsy Analysis Tool) - downloadable tool intended for developers to identify seizure risks in their web content and software.

Screen readers - screen readers are a built-in accessibility feature of technology operating systems including Windows, MacOS, and mobile devices. They are accessible through your OS settings, but you may need to look up [how to turn them on and off](https://in.nau.edu/virtual-accessibility-expedition/screen-reader-activity-hint-page/)<sup>115</sup> for your particular device.  

[Tesseract](https://github.com/tesseract-ocr/tesseract/blob/main/README.md) - Open source optical character recognition (OCR) engine. See also the [User Manual](https://tesseract-ocr.github.io/).

[Understanding Document Accessibility](https://pressbooks.library.torontomu.ca/docs/) - This free book reviews a wide range of document authoring applications, including the tools they contain for creating accessible documents, and tests them to ensure they do not contain potential barriers.

[WAVE Web accessibility evaluation tool](https://wave.webaim.org) - enter a URL to get an overview evaluation of violations or errors in a web page’s adherence to many WCAG and accessibility features.

## Collections of tools or general guidance

[Accessibility and Usability at Penn State](https://accessibility.psu.edu/) contains many pages with specific recommendations for creating and evaluating different types of content in documents, multimedia, and other files.

[The DIAGRAM Center](http://diagramcenter.org/), which works toward accessible educational materials, has resources on image description, accessible math, born-accessible publishing, and 3D printing, tactiles and haptics

The National Center for Accessible Media has a page listing [Tools and Guidelines](http://ncamftp.wgbh.org/ncam-old-site/invent_build/web_multimedia/tools-guidelines.html) for creating accessible media.

The Section 508 site of the U.S. General Services Administration includes many instructional resources on “[Creating Accessible Digital Products](https://www.section508.gov/create/)”

[Guidance on Applying WCAG 2.0 to Non-Web Information and Communications Technologies (WCAG2ICT)](https://www.w3.org/TR/wcag2ict/)

The University of Washington’s Accessibility site provides various guidelines and resources under its [Make Digital Content Accessible](https://www.washington.edu/accessibility) section (see the “Make Things Accessible” dropdown in particular)


# Bibliography<sup>116</sup> 

A. Jonathan R. Godfrey. (n.d.). Accessible R Markdown Documents. Retrieved December 4, 2022, from [https://r-resources.massey.ac.nz/rmarkdown/](https://r-resources.massey.ac.nz/rmarkdown/)

Accessibility Statement for MATLAB®—Q1 2021. (n.d.). Retrieved December 4, 2022, from [https://www.mathworks.com/support/accessibility.html](https://www.mathworks.com/support/accessibility.html)

Accessibility: Voluntary Product Accessibility Template (VPAT) outlining §508 accessibility information for GitHub.com, GitHub Enterprise, and GitHub Desktop. (n.d.). GitHub and Government. Retrieved December 4, 2022, from [https://government.github.com/accessibility/](https://government.github.com/accessibility/)

Adding Metadata to Documents. (n.d.). The Open University. [https://www.open.ac.uk/libraryservices/documents/metadata-test/Adding%20metadata%20to%20documents%20pdf.pdf](https://www.open.ac.uk/libraryservices/documents/metadata-test/Adding%20metadata%20to%20documents%20pdf.pdf)

Albrezzi, F., Bonnett, J., Gniady, T., Richards-Rissetto, H., & Snyder, L. (2022). Accessing 3D Data. In 3D Data Creation to Curation: Community Standards for 3D Data Preservation. Association of College and Research Libraries. [https://digitalcommons.unl.edu/anthropologyfacpub/196](https://digitalcommons.unl.edu/anthropologyfacpub/196)

Anderson, T., Colón, R. D., Goben, A., & Karcher, S. (2022). Curating for Accessibility. International Journal of Digital Curation, 17(1), Article 1. [https://doi.org/10.2218/ijdc.v17i1.837](https://doi.org/10.2218/ijdc.v17i1.837)

Charts & Accessibility. (2014, December 13). Accessibility at Penn State. [https://accessibility.psu.edu/images/charts/](https://accessibility.psu.edu/images/charts/)

Color | Accessibility Guidelines. (n.d.). Skip to Content Innovation Studio Logo Web Accessibility Guidelines v1.0. Retrieved December 4, 2022, from [http://web-accessibility.carnegiemuseums.org/design/color/](http://web-accessibility.carnegiemuseums.org/design/color/)

Color Deficient Vision (Color Blindness). (2014, October 13). Accessibility at Penn State. [https://accessibility.psu.edu/accommodations/audience/colorblindness/](https://accessibility.psu.edu/accommodations/audience/colorblindness/)

Contrast or Luminosity/Brightness. (2014, November 5). Accessibility at Penn State. [https://accessibility.psu.edu/legibility/contrast/](https://accessibility.psu.edu/legibility/contrast/)

Create Accessible Documents. (n.d.). Retrieved March 24, 2023, from [https://www.section508.gov/create/documents/](https://www.section508.gov/create/documents/)

Create Accessible PDFs. (n.d.). Retrieved December 4, 2022, from [https://www.section508.gov/create/pdfs/](https://www.section508.gov/create/pdfs/)

Create Accessible Spreadsheets. (n.d.). Retrieved March 24, 2023, from [https://www.section508.gov/create/spreadsheets/](https://www.section508.gov/create/spreadsheets/)

Data model. (2022). In Wikipedia. [https://en.wikipedia.org/w/index.php?title=Data_model&oldid=1109677104#Types](https://en.wikipedia.org/w/index.php?title=Data_model&oldid=1109677104#Types)

Data Visualization: What it is and why it matters. (n.d.). SAS. Retrieved January 5, 2023, from [https://www.sas.com/en_us/insights/big-data/data-visualization.html](https://www.sas.com/en_us/insights/big-data/data-visualization.html)

Equations: MathML, Images and LaTeX. (2014, October 27). Accessibility at Penn State. [https://accessibility.psu.edu/math/equations/](https://accessibility.psu.edu/math/equations/)

Excel Tips. (2014, September 5). Accessibility at Penn State. [https://accessibility.psu.edu/microsoftoffice/excel/](https://accessibility.psu.edu/microsoftoffice/excel/)

Font Face. (2015, January 6). Accessibility at Penn State. [https://accessibility.psu.edu/legibility/fontface/](https://accessibility.psu.edu/legibility/fontface/)

Getting Started | Markdown Guide. (n.d.). Retrieved March 19, 2023, from [https://www.markdownguide.org/getting-started/](https://www.markdownguide.org/getting-started/)

Godfrey, A. J. R., & Loots, M. T. (2014). Statistical Software (R, SAS, SPSS, and Minitab) for Blind Students and Practitioners. Journal of Statistical Software, 58, 1–25. [https://doi.org/10.18637/jss.v058.s01](https://doi.org/10.18637/jss.v058.s01)

Godfrey, A. J. R., & Loots, M. T. (2015). Advice From Blind Teachers on How to Teach Statistics to Blind Students. Journal of Statistics Education, 23(3), 4. [https://doi.org/10.1080/10691898.2015.11889746](https://doi.org/10.1080/10691898.2015.11889746)

Godfrey, A. J. R., Murrell, P., & Sorge, V. (2018). An Accessible Interaction Model for Data Visualisation in Statistics. In K. Miesenberger & G. Kouroupetroglou (Eds.), Computers Helping People with Special Needs (pp. 590–597). Springer International Publishing. [https://doi.org/10.1007/978-3-319-94277-3_92](https://doi.org/10.1007/978-3-319-94277-3_92)

Guidance on Applying WCAG 2.0 to Non-Web Information and Communications Technologies (WCAG2ICT). (n.d.). Retrieved December 4, 2022, from [https://www.w3.org/TR/wcag2ict/](https://www.w3.org/TR/wcag2ict/)

Headings | Accessible U. (n.d.). Retrieved December 4, 2022, from [https://accessibility.umn.edu/what-you-can-do/start-7-core-skills/headings](https://accessibility.umn.edu/what-you-can-do/start-7-core-skills/headings)

Higgins, S. (2008). The DCC Curation Lifecycle Model. International Journal of Digital Curation, 3(1), 134–140. [https://doi.org/10.2218/ijdc.v3i1.48](https://doi.org/10.2218/ijdc.v3i1.48)

How to turn on built-in screen readers. (n.d.). Virtual Accessibility Expedition. Retrieved March 24, 2023, from [https://in.nau.edu/virtual-accessibility-expedition/screen-reader-activity-hint-page/](https://in.nau.edu/virtual-accessibility-expedition/screen-reader-activity-hint-page/)

HTML vs. Word vs. PDF | PDF Accessibility and Compliance. (2019, April 13). [https://commonlook.com/read-and-learn/accessibility-tutorials/html-vs-word-vs-pdf-accessibility-strengths-and-weaknesses/](https://commonlook.com/read-and-learn/accessibility-tutorials/html-vs-word-vs-pdf-accessibility-strengths-and-weaknesses/)

Image ALT Text in Microsoft Office. (2014, October 8). Accessibility at Penn State. [https://accessibility.psu.edu/microsoftoffice/microsoftalttags/](https://accessibility.psu.edu/microsoftoffice/microsoftalttags/)

Image Description Guidelines. (n.d.). DIAGRAM Center. Retrieved December 4, 2022, from [http://diagramcenter.org/table-of-contents-2.html/](http://diagramcenter.org/table-of-contents-2.html/)

Initiative (WAI), W. W. A. (n.d.). Tips and Tricks. Web Accessibility Initiative (WAI). Retrieved December 4, 2022, from [https://www.w3.org/WAI/tutorials/tables/tips/](https://www.w3.org/WAI/tutorials/tables/tips/)

Kemp, J. (n.d.). Accessibility for Crossref DOI Links: Call for comments on proposed new guidelines [Website]. Crossref. Retrieved March 24, 2023, from [https://www.crossref.org/blog/accessibility-for-crossref-doi-links-call-for-comments-on-proposed-new-guidelines/](https://www.crossref.org/blog/accessibility-for-crossref-doi-links-call-for-comments-on-proposed-new-guidelines/)

LaTeX - A document preparation system. (n.d.). Retrieved December 4, 2022, from [https://www.latex-project.org/](https://www.latex-project.org/)

Link text needs to be uniquely identifiable within the page – IT Accessibility. (n.d.). Retrieved March 19, 2023, from [https://accessibility.oit.ncsu.edu/it-accessibility-at-nc-state/developers/accessibility-handbook/mouse-and-keyboard-events/links/link-text-needs-to-be-uniquely-identifiable-within-the-page/](https://accessibility.oit.ncsu.edu/it-accessibility-at-nc-state/developers/accessibility-handbook/mouse-and-keyboard-events/links/link-text-needs-to-be-uniquely-identifiable-within-the-page/)

MAGpie. (n.d.). NCAM. Retrieved March 24, 2023, from [http://ncamftp.wgbh.org/ncam-old-site/invent_build/web_multimedia/tools-guidelines/magpie.html](http://ncamftp.wgbh.org/ncam-old-site/invent_build/web_multimedia/tools-guidelines/magpie.html)

Make your content accessible to everyone with the Accessibility Checker—Microsoft Support. (n.d.). Retrieved December 4, 2022, from [https://support.microsoft.com/en-us/office/make-your-content-accessible-to-everyone-with-the-accessibility-checker-38059c2d-45ef-4830-9797-618f0e96f3ab](https://support.microsoft.com/en-us/office/make-your-content-accessible-to-everyone-with-the-accessibility-checker-38059c2d-45ef-4830-9797-618f0e96f3ab)

Make your Excel documents accessible to people with disabilities—Microsoft Support. (n.d.). Retrieved December 4, 2022, from [https://support.microsoft.com/en-us/office/make-your-excel-documents-accessible-to-people-with-disabilities-6cc05fc5-1314-48b5-8eb3-683e49b3e593](https://support.microsoft.com/en-us/office/make-your-excel-documents-accessible-to-people-with-disabilities-6cc05fc5-1314-48b5-8eb3-683e49b3e593)

Making Graphical Data More Accessible. (n.d.). University of Nevada, Reno. Retrieved December 4, 2022, from [https://www.unr.edu/accessibility/resources/documents/accessible/research-and-publications/strategy-2](https://www.unr.edu/accessibility/resources/documents/accessible/research-and-publications/strategy-2)

Maps. (2014, October 6). Accessibility at Penn State. [https://accessibility.psu.edu/images/maps/](https://accessibility.psu.edu/images/maps/)

Markup language. (2023). In Wikipedia. [https://en.wikipedia.org/w/index.php?title=Markup_language&oldid=1140707117](https://en.wikipedia.org/w/index.php?title=Markup_language&oldid=1140707117)

Mathematical markup language. (2020). In Wikipedia. [https://en.wikipedia.org/w/index.php?title=Mathematical_markup_language&oldid=973879953](https://en.wikipedia.org/w/index.php?title=Mathematical_markup_language&oldid=973879953)

McGlone, Jon. (2020, July 30). McGlone, Jon. University of Michigan Library Front End Developer and UI Designer. Personal conversation with Emily Oxford. July 30, 2020. [Personal communication].

Microsoft Word Tips. (2014, September 2). Accessibility at Penn State. [https://accessibility.psu.edu/microsoftoffice/microsoftword/](https://accessibility.psu.edu/microsoftoffice/microsoftword/)

NCAM. (n.d.). Multimedia Tools & Guidelines. Retrieved March 24, 2023, from [http://ncamftp.wgbh.org/ncam-old-site/invent_build/web_multimedia/tools-guidelines.html](http://ncamftp.wgbh.org/ncam-old-site/invent_build/web_multimedia/tools-guidelines.html)

Optical character recognition. (2022). In Wikipedia. [https://en.wikipedia.org/w/index.php?title=Optical_character_recognition&oldid=1124850396](https://en.wikipedia.org/w/index.php?title=Optical_character_recognition&oldid=1124850396)

PDF Accessibility Checker (PAC) 2021—PDF/UA Foundation. (n.d.). [https://Pdfua.Foundation/](https://Pdfua.Foundation/). Retrieved March 24, 2023, from [https://pdfua.foundation/en/pdf-accessibility-checker-pac/](https://pdfua.foundation/en/pdf-accessibility-checker-pac/)

PDF Issues & Recommendations. (2014, October 21). Accessibility at Penn State. [https://accessibility.psu.edu/pdf/pdfissues/](https://accessibility.psu.edu/pdf/pdfissues/)

PDF/UA. (2022). In Wikipedia. [https://en.wikipedia.org/w/index.php?title=PDF/UA&oldid=1114070130](https://en.wikipedia.org/w/index.php?title=PDF/UA&oldid=1114070130)

Photosensitive Epilepsy Analysis Tool (PEAT). (n.d.). Trace Research & Development Center. Retrieved December 4, 2022, from [https://trace.umd.edu/peat/](https://trace.umd.edu/peat/)

Plain Text Techniques | Techniques for WCAG 2.0. (n.d.). Retrieved December 4, 2022, from [https://www.w3.org/TR/WCAG20-TECHS/text](https://www.w3.org/TR/WCAG20-TECHS/text)

Rosen, Stephanie. (2020, July 23). Rosen, Stephanie. University of Michigan Library Accessibility Specialist. Personal conversation with Emily Oxford. July 9, 2020 and July 23, 2020. [Personal communication].

Scalable Vector Graphics (SVG) 2. (n.d.). Retrieved December 4, 2022, from [https://www.w3.org/TR/SVG2/](https://www.w3.org/TR/SVG2/)

Section508.gov. (n.d.). Retrieved March 24, 2023, from [https://www.section508.gov/](https://www.section508.gov/)

Shachmut, K., & Deschenes, A. (2019). Building a Fluent Assistive Technology Testing Pool to Improve Campus Digital Accessibility (Practice Brief). Journal of Postsecondary Education and Disability, 32(4), 445–452.

Specific Guidelines—Graphs. (n.d.). DIAGRAM Center. Retrieved March 24, 2023, from [http://diagramcenter.org/specific-guidelines-e.html/](http://diagramcenter.org/specific-guidelines-e.html/)

Specific Guidelines—Maps. (n.d.). DIAGRAM Center. Retrieved December 4, 2022, from [http://diagramcenter.org/specific-guidelines-e-2.html/](http://diagramcenter.org/specific-guidelines-e-2.html/)

Specific Guidelines—Mathematics. (n.d.). DIAGRAM Center. Retrieved March 24, 2023, from [http://diagramcenter.org/specific-guidelines-g.html/](http://diagramcenter.org/specific-guidelines-g.html/)

Spreadsheets | Accessible U. (n.d.). Retrieved December 4, 2022, from [https://accessibility.umn.edu/what-you-can-do/create-accessible-content/spreadsheets](https://accessibility.umn.edu/what-you-can-do/create-accessible-content/spreadsheets)

Standards. (n.d.). The DAISY Consortium. Retrieved March 24, 2023, from [https://daisy.org/activities/standards/](https://daisy.org/activities/standards/)

Strategies, D. E., & School, T. C. (2020a). The Case Against PDFs. [https://pressbooks.library.torontomu.ca/docs/chapter/the-case-against-pdfs/](https://pressbooks.library.torontomu.ca/docs/chapter/the-case-against-pdfs/)

Strategies, D. E., & School, T. C. (2020b). Understanding Document Accessibility. The Chang School, Toronto Metropolitan University (formerly Ryerson University). [https://pressbooks.library.torontomu.ca/docs/](https://pressbooks.library.torontomu.ca/docs/)

Tab and read order on websites. (n.d.). Accessible Technology. Retrieved December 4, 2022, from [https://www.washington.edu/accessibility/websites/order/](https://www.washington.edu/accessibility/websites/order/)

Tables. (2014, February 1). Accessibility at Penn State. [https://accessibility.psu.edu/tables/](https://accessibility.psu.edu/tables/)

Tabular data standard. (n.d.). GOV.UK. Retrieved March 24, 2023, from [https://www.gov.uk/government/publications/recommended-open-standards-for-government/tabular-data-standard](https://www.gov.uk/government/publications/recommended-open-standards-for-government/tabular-data-standard)

Tesseract documentation. (n.d.). Tesseract OCR. Retrieved December 4, 2022, from [https://tesseract-ocr.github.io/](https://tesseract-ocr.github.io/)

The DCN CURATE(D) Steps – Data Curation Network. (n.d.). Retrieved December 4, 2022, from [https://datacurationnetwork.org/outputs/workflows/](https://datacurationnetwork.org/outputs/workflows/)

U-M Accessibility Team: Jane Berliss-Vincent, Phil Deaton, Gonzalo Silvero, Darrell Williams [https://accessibility.umich.edu/about-us](https://accessibility.umich.edu/about-us). In conversation with Emily Oxford. July 13, 2020. (2020, July 13). [Personal communication].

University of Washington. (n.d.). Audio and video. Accessible Technology. Retrieved December 4, 2022, from [https://www.washington.edu/accessibility/checklist/media/](https://www.washington.edu/accessibility/checklist/media/)

UW IT Accessibility Checklist. (n.d.). Retrieved December 4, 2022, from [https://depts.washington.edu/uwitats/checklist/](https://depts.washington.edu/uwitats/checklist/)

Videos. (n.d.). Accessible Technology. Retrieved December 4, 2022, from [https://www.washington.edu/accessibility/videos/](https://www.washington.edu/accessibility/videos/)

W3C Math Home. (n.d.). Retrieved December 4, 2022, from [https://www.w3.org/Math/](https://www.w3.org/Math/)

W3C Research and Development Working Group. (n.d.). Accessible Maps. In Research and Development Working Group Wiki. [https://www.w3.org/WAI/RD/wiki/Accessible_Maps](https://www.w3.org/WAI/RD/wiki/Accessible_Maps)

Walker, W., & Keenan, T. (2015). Going Beyond Availability: Truly Accessible Research Data. Journal of Librarianship and Scholarly Communication, 3(2), Article 2. [https://doi.org/10.7710/2162-3309.1223](https://doi.org/10.7710/2162-3309.1223)

WebAIM: Alternative Text. (n.d.). Retrieved December 4, 2022, from [https://webaim.org/techniques/alttext/](https://webaim.org/techniques/alttext/)

WebAIM: Screen Reader User Survey #9 Results. (n.d.). Retrieved March 24, 2023, from [https://webaim.org/projects/screenreadersurvey9/#heading](https://webaim.org/projects/screenreadersurvey9/#heading)

What is assistive technology? | DO-IT. (n.d.). Retrieved March 19, 2023, from [https://www.washington.edu/doit/what-assistive-technology](https://www.washington.edu/doit/what-assistive-technology)

What is AT? (2015, October 11). Assistive Technology Industry Association. [https://www.atia.org/home/at-resources/what-is-at/](https://www.atia.org/home/at-resources/what-is-at/)

What is Open Data? (n.d.). In The Open Data Handbook. Retrieved March 24, 2023, from [https://opendatahandbook.org/guide/en/what-is-open-data/](https://opendatahandbook.org/guide/en/what-is-open-data/)

What is the difference between open and closed captioning? | DO-IT. (n.d.). Retrieved March 19, 2023, from [https://www.washington.edu/doit/what-difference-between-open-and-closed-captioning](https://www.washington.edu/doit/what-difference-between-open-and-closed-captioning)

What is Universal Design | Centre for Excellence in Universal Design. (n.d.). Retrieved March 24, 2023, from [https://universaldesign.ie/what-is-universal-design/](https://universaldesign.ie/what-is-universal-design/)

Word, PDF, or Web Page? | Web Accessibility | Michigan State University. (n.d.). Retrieved March 24, 2023, from [https://webaccess.msu.edu/Tutorials/basics/file-type.html](https://webaccess.msu.edu/Tutorials/basics/file-type.html)



# Footnotes
<p  id="note1"><sup>1</sup> What is AT? (Assistive Technology Industry Association); see also [Appendix B: Glossary](#appendix-b-glossary) </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>
<p  id="note1"><sup>1</sup> </p>