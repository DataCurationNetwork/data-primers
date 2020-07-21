![](DCNlogo.png)

# Twitter Primer

## Overview

|   Topic   |   Description   |
| :------------- | :------------- |
| File Extensions | .csv, .txt, .json |
| Structure | Tabular, Javascript Object Notation |
| Primary fields or areas of use | A variety of fields including social sciences, education, and public health. |
| Source and affiliation | [Twitter](https://twitter.com/explore), a social media platform that makes data available in a variety of formats |
| Key questions for curation review | <ul><li> Will the data be restricted or open access? </li><li> Was the data deposited in compliance with the Terms of Service? </li><li> Are the Tweet IDs separate from the tweet or user content? </li><li> Is the content accessible, or has much of the content been lost since data collection? |
| Tools for curation review | DocNow Hydrator, Microsoft Excel, R, Python, Social Feed Manager, twarc |
| Date Created | 6/26/2020 |
| Created by | <ul><li> Marley Kalt, Johns Hopkins University </li><li> Dorris Scott, Washington University in St. Louis |
| Date updated and summary of changes made | |

**Suggested Citation:** Kalt, Marley and Scott, Dorris. (2020). Twitter Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)

This work was created as part of the “Specialized Data Curation” Workshop #3 held at Washington University in St.Louis, MO on November 5-6, 2019. These workshops have been generously funded by the Institute of Museum and Library Services # RE-85-18-0040-18.

# Table of Contents

[Description of Format](#description-of-format)

[Examples](#examples)

[Sample Citations](#sample-citations)

[Key Questions to Ask Yourself as a Curator](#key-questions-to-ask-yourself-as-a-curator)

[Key Clarifications to Get From Researcher](#key-clarifications-to-get-from-researcher)

[Metadata Standards and README Requirements](#metadata-standards-and-readme-requirements)

[Resources and Software for Reviewing Data](#resources-and-software-for-reviewing-data)

[Preservation Actions](#preservation-actions)

[What to Look for to Make Sure Files Meet FAIR Principles](#what-to-look-for-to-make-sure-files-meet-fair-principles)

[Ways in Which Fields May Use This Format](#ways-in-which-fields-may-use-this-format)

[Documentation of Curation Process What to Capture](#documentation-of-curation-process-what-to-capture)

[Bibliography](#bibliography)

[Appendix A file type CURATED checklist](#appendix-a-file-type-curated-checklist)

[Appendix B Resources ](#appendix-b-resources)

# Description of Format

Twitter is a social media site founded in 2006. The Twitter platform, started as a “microblogging” site where individuals could post statements, or “tweets,” comprised of 140 characters or less (raised to 280 characters in 2017),  has grown into one of the largest social networking sites worldwide with over 320 million active users (Molina, 2017). The site’s popularity and ability to share information quickly and with a wide audience – users can “retweet” a tweet to share it with their followers in addition to the followers of the original poster, and can use “hashtags” to connect their post to all other tweets about an event – has made Twitter a go-to platform for sharing breaking news and current events. Many individuals use Twitter to respond to current events, as well, making Twitter a hotbed for political and social commentary and sense-making in real time. Twitter data can serve as a rich resource for researchers, due to its ability to capture the flow of information and public sentiment surrounding a particular event or point in time. 

Twitter data can be obtained through four main methods; retrieving tweets using one of Twitter’s APIs, re-using an open Twitter dataset that is archived online, directly purchasing a dataset from Twitter, and accessing or purchasing tweets from a Twitter service provider (Littman, 2017).

This primer will focus on Twitter data obtained from an Application Programming Interface (API). An API is an interface that allows two applications to talk to each other (MuleSoft, 2020). Twitter has several APIs that allow users to interact programmatically with the platform through posting or retrieving tweets and their associated metadata.

Three APIs of interest are the Standard, Premium, and Enterprise API. With the Standard API, users can post, interact, and retrieve tweets and timelines, post and receive direct messages (DMs), search, follow, and get user IDs, get trends, manage and retrieve account information, and create and manage lists (Twitter, 2020a). The Premium and Enterprise APIs come with more advanced functions such as advanced filtering and access to historical tweets from a longer time range. One important distinction between these three APIs is the access to historical tweets. While the Standard API allows users to search for tweets that were created within the last seven days, the Premium API provides access to the last 30 days and the Enterprise API allows users to search for Tweets created from 2006. While the Premium API has both free and paid access to these tweets, users must pay to use the Enterprise API. 

Another common method to get Twitter data is through a website that archives Twitter data, such as [TweetSets](https://tweetsets.library.gwu.edu) or the [Documenting the Now Catalog](https://catalog.docnow.io) (DocNow). Twitter’s Terms of Service do not allow for the actual tweets to be published online, but the content of a dataset can still be retrieved through tweet IDs, which are allowed to be publicly shared. Once a dataset of tweet IDs is obtained, users can use an API or download software with a graphical user interface, such as [DocNow’s Hydrator](https://github.com/DocNow/hydrator), to retrieve the tweet content associated with each unique tweet ID.

Users can also buy Twitter data directly from Twitter through the Historical PowerTrack API. The Historical PowerTrack API gives users access to the entire archive of Twitter data and has an advanced set of filtering options (Twitter, 2020b). Twitter data can also be accessed from a number of commercial and academic Twitter service providers such as [DiscoverText](https://discovertext.com) and [Brandwatch](https://www.brandwatch.com) for a fee.

To preserve tweet content or design, Twitter datasets can also be created through web archiving services such as Webrecorder and Archive-It.

Twitter data can be used in a variety of formats, but the most common are JSON, text files and spreadsheet formats including .xlsx and .csv. Twitter researchers and curators should be comfortable with JSON as Twitter’s APIs return tweet data and metadata in the JSON format. However, for preservation and sharing, Twitter data is often stored in text files or spreadsheets.

Sharing Twitter data can be limited, as [Twitter’s Developer Agreement and Policy](https://developer.twitter.com/en/developer-terms/agreement-and-policy) (Twitter Developers, 2020) governs the amount of content and metadata that can be shared. This policy only allows content and metadata for public tweets to be shared in publicly-available datasets. Twitter’s APIs only return tweets that are publicly available, but users are able to make their profile settings private or delete tweets at any time.

Over time, tweets that were once public can be made private, which means datasets with public content and metadata shared in compliance with Twitter’s developer policy may become non-compliant over time. It would be possible for researchers to share their entire dataset and periodically check Twitter to verify the tweets are still public.

However, an easier way to publicly share Twitter datasets in compliance with Twitter’s policies is to only share the unique identifier (tweet ID) for each tweet. For researchers to access the full content and metadata of a dataset, they would “hydrate” the dataset of tweet IDs, by making requests to one of Twitter’s APIs (or using a third-party service) using each tweet ID as a search query. If the corresponding tweet is still publicly available, researchers will be able to retrieve the full content and metadata of that tweet; if not, researchers will receive a response indicating the individual tweet is no longer available.

It is important for curators to remain up-to-date on Twitter’s latest developer policies, as Twitter regularly updates its terms of use.

# Examples

# In the process of being published. Your patience is appreciated



