Conference Materials 2018
================
Cynthia M. Kroeger, Andrew W. Brown
8/28/2018

Project Description
-------------------

This project was implemented to further develop methods that were originated previously (DOI: 10.5281/zenodo.1406885) as part of a larger project (F32DK107157) to study common biases and statistical mistakes made in nutrition and obesity research. One such bias is p-hacking. As the talk and poster describe in more detail, this project replicated a previously implemented rapid and high-volume method for detecting p-hacking in scientific literature, as well as refined previous methods. Details of these changes are described in more detail below. This work has since been further developed, and a manuscript is now being prepared for publication.

-   2014: Initial, manual search in PubMed
-   2016: Replication of 2014, refinement of search methods, and inclusion of search within PubMed dietary supplement subset
-   2017: Replication of 2016, excluding the initial 2014 method
-   2018: Refinement of search methods and implemented with rEntrez to improve replicability

Conference Description
----------------------

This work was presented at The American Society for Nutrition (ASN) Annual Scientific Meeting in Boston, MA, 2018.

This work also was presented at the Indiana University School of Public Health Research Day in Bloomington, Indiana, USA, in 2018, as both a talk and a poster.

Contact Information for Principal Investigator and Corresponding Author
-----------------------------------------------------------------------

-   Cynthia M. Kroeger, PhD, Postdoctoral Fellow, Charles Perkins Centre, School of Pharmacy, Faculty of Medicine and Health, The University of Sydney. <cynthia.kroeger@sydney.edu.au>

At the time of presentation, Dr. Kroeger was a Postdoctoral Fellow at Indiana University School of Public Health-Bloomington.

Description of Supporting Materials
-----------------------------------

### Presentation

This work was presented as both a talk and poster.

**File name for poster:** conference\_materials\_2018\_poster.pdf

**File name for talk:** conference\_materials\_2018\_talk.pdf

### Data

All data were generated within R and thus are produced and described by the code file for this project.

### Methodological details

All methodological details are visible and described within the code file for this project.

Reasons for changes in Method 1, compared to previous methods in this repository:

-   Common tests: The term "t student" was added for consistency, as the space between words instead of a hyphen yields additional results. The terms "mixed model" and "parametric tests" were removed as the former may be used in atypical contexts and the latter could include abstracts with the phrase "non parametric tests"
-   Atypical tests: A librarian was consulted about appropriate search terms for nonparametric tests and the terms "Rank-sum test", "Rank sum test", "Spearman Rank Correlation Coefficient", "Spearman Correlation", "Wilcox test", "Kolmogorov-Smirnov Test", "Kolmogorov Smirnov Test", "Mann-Whitney U Test", "Mann Whitney U", "sign test", "Signed-Rank", "Friedman Test", and "Mood’s Median Test" yielded additional relevant results. Further, we found "bootstrapping" and "permutation test" yielded additional relevant results. The term "log transform" was added for consistency, as the space versus hyphen yields additional results.

Method 2 tests mention of atypical tests in abstracts compared to no mention of these tests in abstracts for each bin and test type.

### Analysis code

**File name for analysis code:** conference\_materials\_2018\_code.R

**Study level naming convention:** database\_method\_trial\_mode

-   database: pm = PubMed; dss = PubMed Dietary Supplement Subset
-   method: 1 = method 1; 2 = method 2
-   trial: org = original
-   mode: ren = rEntrez

**Analysis level naming convention:** study\_function

-   study: pm\_1\_org\_ren, dss\_1\_org\_ren, pm\_2\_org\_ren, dss\_2\_org\_ren
-   function: xsq = chisq.test; pd = percentage deviation

Code was written by Dr. Kroeger, with assistance from Dr. Brown.

A Note on How to Replicate this Study
-------------------------------------

Because data were extracted from PubMed via rEntrez on a specific date, one would need to download PubMed history and assess the literature from the point in time noted in the code file. Another option might be to run the search described herein and subtract dates from the date reported in our code file. We have not done this ourselves.

Note on rEntrez version: To replicate the figures in these presentations, one must use a rEntrez version less than 1.2. All of the releases are tagged in the GitHub repo. Use devtools GitHub install function with the 'ref' argument to set release tag. Otherwise, the search query for the "five" object will be too large a query and will return an error.

Author Contribution
-------------------

Dr. Kroeger conducted the study, refined the methods, analyzed data, made the presentations, and created the open science documents for the repository. Dr. Brown provided editorial assistance with methods and code. Dr. Allison originated the study and is the senior author of the presentation.

License Information
-------------------

These materials are licensed under the Creative Commons Attribution Share Alike 4.0.

**File name for analysis code:** LICENSE.txt

Citation Information
--------------------

### Recommended citation for conference\_materials\_2018

Please use the following to cite any of the supporting materials herein:

Kroeger CM, Brown AW. Data and analysis code for published abstract: Detection of p-hacking in biomedical and dietary supplement scientific literature: Use of open science R packages to improve reproducibility and research transparency. Zenodo. 2018. DOI:

### Recommended citation for published abstract

Please use the following to cite the published abstract:

Kroeger CM, Brown AW, Allison DB. Detection of p-hacking in biomedical and dietary supplement scientific literature: Use of open science R packages to improve reproducibility and research transparency. American Society for Nutrition (ASN): Annual Scientific Meeting. Boston, MA, 2018.

Funding Information
-------------------

The presentation and development of these materials was supported by the National Institute of Diabetes, Digestive and Kidney Diseases of the National Institutes of Health (F32DK107157). The content is solely the responsibility of the authors and does not necessarily represent the official views of the National Institutes of Health or any other organization.
