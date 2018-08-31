Conference Materials 2017
================
Cynthia M. Kroeger, Andrew W. Brown
8/28/2018

Project Description
-------------------

This project was implemented to further develop methods that were originated previously (DOI: 10.5281/zenodo.1406882) as part of a larger project (F32DK107157) to study common biases and statistical mistakes made in nutrition and obesity research. One such bias is p-hacking. As the poster describes in more detail, this project replicated a previously implemented rapid and high-volume method for detecting p-hacking in scientific literature. This work has since been further developed and presented on, and a manuscript with fully-developed methods is now being prepared for publication.

An abbreviated description of these two projects is as follows:

-   2014: Initial, manual search in PubMed
-   2016: Replication of 2014, refinement of search methods, and inclusion of search within PubMed dietary supplement subset
-   2017: Replication of 2016, excluding the initial 2014 method

Conference Description
----------------------

This work was presented at the 5th Workshop on Biostatistics and Bioinformatics in Atlanta, Georgia, USA, in 2017.

Contact Information for Principal Investigator and Corresponding Author
-----------------------------------------------------------------------

-   Cynthia M. Kroeger, PhD, Postdoctoral Fellow, Charles Perkins Centre, School of Pharmacy, Faculty of Medicine and Health, The University of Sydney. <cynthia.kroeger@sydney.edu.au>

At the time of presentation, Dr. Kroeger was a Postdoctoral Fellow at The University of Alabama at Birmingham.

Description of Supporting Materials
-----------------------------------

### Presentation: Poster

This work was presented as a poster.

**File name for poster:** conference\_materials\_2017\_poster.pdf

### Data

**File name for dataset:** conference\_materials\_2017\_data.csv

**Full names and definitions of column headings**

<table>
<colgroup>
<col width="24%" />
<col width="46%" />
<col width="28%" />
</colgroup>
<thead>
<tr class="header">
<th>Column Heading</th>
<th>Definition</th>
<th>Possible Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>trial</td>
<td>study trial</td>
<td>org = original trial; rep = replication study</td>
</tr>
<tr class="even">
<td>method</td>
<td>search string method</td>
<td>a = method a; b = method b*</td>
</tr>
<tr class="odd">
<td>database</td>
<td>database data were collected from</td>
<td>pm = PubMed; dss = PubMed Dietary Supplement Subset</td>
</tr>
<tr class="even">
<td>date</td>
<td>date data were collected</td>
<td></td>
</tr>
<tr class="odd">
<td>mode</td>
<td>mode of data extraction</td>
<td>man = manual extraction</td>
</tr>
<tr class="even">
<td>three_common</td>
<td>number of abstracts containing p = 0.03* and a common statistical term and NOT p = 0.04*, p = 0.05*, p = 0.06*, or an atypical term</td>
<td></td>
</tr>
<tr class="odd">
<td>four_common</td>
<td>number of abstracts containing p = 0.04* and a common statistical term and NOT p = 0.03*, p = 0.05*, p = 0.06*, or an atypical term</td>
<td></td>
</tr>
<tr class="even">
<td>five_common</td>
<td>number of abstracts containing p = 0.05* and a common statistical term and NOT p = 0.03*, p = 0.04*, p = 0.06*, or an atypical term</td>
<td></td>
</tr>
<tr class="odd">
<td>six_common</td>
<td>number of abstracts containing p = 0.06* and a common statistical term and NOT p = 0.03*, p = 0.05*, p = 0.04*, or an atypical term</td>
<td></td>
</tr>
<tr class="even">
<td>three_atypical</td>
<td>number of abstracts containing p = 0.03* and an atypical statistical term and NOT p = 0.04*, p = 0.05*, p = 0.06*, or a common term</td>
<td></td>
</tr>
<tr class="odd">
<td>four_atypical</td>
<td>number of abstracts containing p = 0.04* and an atypical statistical term and NOT p = 0.03*, p = 0.05*, p = 0.06*, or a common term</td>
<td></td>
</tr>
<tr class="even">
<td>five_atypical</td>
<td>number of abstracts containing p = 0.05* and an atypical statistical term and NOT p = 0.03*, p = 0.04*, p = 0.06*, or a common term</td>
<td></td>
</tr>
<tr class="odd">
<td>six_atypical</td>
<td>number of abstracts containing p = 0.06* and an atypical statistical term and NOT p = 0.03*, p = 0.04*, p = 0.05*, or a common term</td>
<td></td>
</tr>
</tbody>
</table>

\*Methods are described in section "Methodological details" below.

These data were collected and formatted by Dr. Kroeger.

### Methodological details

**Search string details for method a**

``` r
# p-value bin 0.03: (p=.03*[tiab] OR p=0.03*[tiab])
# p-value bin 0.04: (p=.04*[tiab] OR p=0.04*[tiab])
# p-value bin 0.05: (p 05,05[tiab] OR p 050[tiab] OR p 0500[tiab] OR p 05006[tiab] OR p 0501[tiab] OR p 0501a[tiab] OR p 0502[tiab] OR p 0505[tiab] OR p 0507[tiab] OR p 051[tiab] OR p 0511[tiab] OR p 0513[tiab] OR p 0514[tiab] OR p 0515[tiab] OR p 0518[tiab] OR p 0519[tiab] OR p 052[tiab] OR p 0529[tiab] OR p 053[tiab] OR p 0537[tiab] OR p 054[tiab] OR p 0542[tiab] OR p 055[tiab] OR p 0557[tiab] OR p 056[tiab] OR p 0566[tiab] OR p 057[tiab] OR p 0571[tiab] OR p 0573[tiab] OR p 058[tiab] OR p 0583[tiab] OR p 0585[tiab] OR p 0588[tiab] OR p 059[tiab] OR p 0591[tiab] OR p 0594[tiab] OR p 0595[tiab] OR p 0597[tiab]) OR (p 0 05,15[tiab] OR p 0 05,863[tiab] OR p 0 05,95[tiab] OR p 0 050[tiab] OR p 0 0500[tiab] OR p 0 0501[tiab] OR p 0 0502[tiab] OR p 0 0503[tiab] OR p 0 0504[tiab] OR p 0 0505[tiab] OR p 0 0505385[tiab] OR p 0 0506[tiab] OR p 0 0507[tiab] OR p 0 0508[tiab] OR p 0 0509[tiab] OR p 0 051[tiab] OR p 0 0510[tiab] OR p 0 0511[tiab] OR p 0 0512[tiab] OR p 0 0513[tiab] OR p 0 0514[tiab] OR p 0 0515[tiab] OR p 0 0516[tiab] OR p 0 0517[tiab] OR p 0 0518[tiab] OR p 0 0519[tiab] OR p 0 052[tiab] OR p 0 0520[tiab] OR p 0 0522[tiab] OR p 0 0523[tiab] OR p 0 0524[tiab] OR p 0 0525[tiab] OR p 0 052574[tiab] OR p 0 0526[tiab] OR p 0 0527[tiab] OR p 0 0529[tiab] OR p 0 053[tiab] OR p 0 0530[tiab] OR p 0 0531[tiab] OR p 0 0532[tiab] OR p 0 0533[tiab] OR p 0 0534[tiab] OR p 0 0535[tiab] OR p 0 0536[tiab] OR p 0 0537[tiab] OR p 0 0539[tiab] OR p 0 054[tiab] OR p 0 0540[tiab] OR p 0 0541[tiab] OR p 0 0542[tiab] OR p 0 0543[tiab] OR p 0 0544[tiab] OR p 0 0545[tiab] OR p 0 0546[tiab] OR p 0 0547[tiab] OR p 0 0548[tiab] OR p 0 0549[tiab] OR p 0 055[tiab] OR p 0 0550[tiab] OR p 0 0551[tiab] OR p 0 0552[tiab] OR p 0 0553[tiab] OR p 0 0554[tiab] OR p 0 05548[tiab] OR p 0 0556[tiab] OR p 0 0557[tiab] OR p 0 0558[tiab] OR p 0 0559[tiab] OR p 0 056[tiab] OR p 0 0560[tiab] OR p 0 0561[tiab] OR p 0 0562[tiab] OR p 0 0563[tiab] OR p 0 0564[tiab] OR p 0 0566[tiab] OR p 0 0567[tiab] OR p 0 0568[tiab] OR p 0 0569[tiab] OR p 0 057[tiab] OR p 0 0570[tiab] OR p 0 0571[tiab] OR p 0 0572[tiab] OR p 0 0573[tiab] OR p 0 0574[tiab] OR p 0 0575[tiab] OR p 0 0576[tiab] OR p 0 05760[tiab] OR p 0 0577[tiab] OR p 0 0578[tiab] OR p 0 0579[tiab] OR p 0 058[tiab] OR p 0 0580[tiab] OR p 0 0581[tiab] OR p 0 0582[tiab] OR p 0 0583[tiab] OR p 0 0584[tiab] OR p 0 05846[tiab] OR p 0 0585[tiab] OR p 0 0586[tiab] OR p 0 0587[tiab] OR p 0 0588[tiab] OR p 0 0589[tiab] OR p 0 05891[tiab] OR p 0 059[tiab] OR p 0 0590[tiab] OR p 0 0591[tiab] OR p 0 0592[tiab] OR p 0 0593[tiab] OR p 0 0594[tiab] OR p 0 0595[tiab] OR p 0 0596[tiab] OR p 0 0597[tiab] OR p 0 0598[tiab] OR p 0 0599[tiab])
# p-value bin 0.06: (p=.06*[tiab] OR p=0.06*[tiab])
# common tests: (t-test[tiab] OR anova[tiab] OR ancova[tiab] OR "mixed model"[tiab])
# atypical tests: (nonparametric[tiab] OR non-parametric[tiab] OR wlicoxon-rank[tiab] OR "wilcoxon rank"[tiab] OR kruskal-wallis[tiab] OR "kruskal wallis"[tiab] OR transformation[tiab] OR (outlier*[tiab] AND remov*[tiab]))
```

Asterisks in PubMed are used to indicate wildcards. PubMed returns wildcards and shows the terms returned for manual inspection. Expansion of the 0.05\* term above shows these wildcards expanded. Search 0.05\* is expanded to remove inclusion of the commonly found mention of p &lt; 0.05 in abstracts. PubMed interprets any equality characters (&lt;, =, &gt;) as blank spaces. An asterisk alone could not be used here, as we needed to manually remove references to 0.05. These are not likely to represent values in a bin, because they could represent the entire inequality of p &lt; 0.05 or reference to a significance level threshold.

**Search string details for method b**

``` r
# p-value bin 0.03: same as method a
# p-value bin 0.04: same as method a
# p-value bin 0.05: same as method a
# p-value bin 0.06: same as method a
# common tests: (t-test[tiab] OR "t test" OR t-student[tiab] OR anova[tiab] OR ANOVA[tiab] OR ancova[tiab] OR "mixed model"[tiab] OR "parametric tests")
# atypical tests: (nonparametric[tiab] OR non-parametric[tiab] OR "non parametric" OR wilcoxon-mann-whitney[tiab] OR mann-whitney[tiab] OR u-test[tiab] OR wilcoxon[tiab] OR wlicoxon-rank[tiab] OR "wilcoxon rank"[tiab] OR kruskal-wallis[tiab] OR "kruskal wallis"[tiab] OR log-transformed[tiab] OR "log transformed"[tiab] OR (outlier*[tiab] AND remov*[tiab]))
```

Reasons for changes:

-   Common tests: "t test", t-student, ANOVA, and "parametric tests" were added as they are revelant common tests, and different versions (i.e. addition or removal of a "-") yielded additional results.
-   Atypical tests: "transformation" was removed, as it was found to yield numerous irrelevant results. "non parametric", wilcoxon-mann-whitney, mann-whitney, u-test, wilcoxon, log-transformed, and "log transformed" were added, as these terms were found to yield additional relevant results.

### PubMed query data file

The .csv file with the search query conducted in and exported by PubMed could not be located for this study. Instead, notes were located on the the search query obtained for the 2016 abstract. Details on this search query can be found here: *(insert 2016 DOI)*. Screenshots of chi-squared tests were located to obtain the data used for this poster and replicate analyses in R for open sharing. To better document the research process and enhance replicability, R and rEntrez were employed to conduct future studies on this topic. Files for this work will be available in the study repository upon completion.

### Analysis code

**File name for analysis code:** conference\_materials\_2017\_code.R

**Study level naming convention:** database\_method\_trial\_mode

-   database: pm = PubMed; dss = PubMed Dietary Supplement Subset
-   a = method a; b = method b
-   trial: org = original; rep = replication
-   mode: man = manual search

**Analysis level naming convention:** study\_function

-   study: pm\_a\_rep\_man, dss\_a\_rep\_man, pm\_b\_rep\_man, dss\_b\_rep\_man
-   function: xsq = chisq.test; pd = percentage deviation

Code was written by Dr. Kroeger, with assistance from Dr. Brown.

A Note on How to Replicate this Study
-------------------------------------

Because data were extracted from PubMed manually on a specific date, one would need to download PubMed history and assess the literature from the point in time noted in the data file, using the methods described in this document. Another option might be to run the search described herein and subtract dates from the date reported in our data file. We have not done this ourselves. However, this work does replicate previous findings in the same literature set at a later date.

Author Contribution
-------------------

Dr. Kroeger conducted the study, refined the methods, analyzed data, made the poster, and created the open science documents for the repository. Dr. Brown provided editorial assistance with methods, poster preparation, and open science documents. Dr. Allison provided editorial assistance and is the senior author of the abstract.

### License Information

These materials are licensed under the Creative Commons Attribution Share Alike 4.0.

**File name for analysis code:** LICENSE.txt

Citation Information
--------------------

### Recommended citation for conference\_materials\_2017

Please use the following to cite any of the supporting materials herein:

Kroeger CM, Brown AW. Data and analysis code for published abstract: Use of text-mining and comparative analysis to detect p-hacking in dietary supplement scientific literature. Zenodo. 2018. DOI: 10.5281/zenodo.1406885

### Recommended citation for published abstract

Please use the following to cite the published abstract:

Kroeger CM, Brown AW, Allison DB. Use of text-mining and comparative analysis to detect p-hacking in dietary supplement scientific literature. 5th Workshop on Biostatistics and Bioinformatics. Atlanta, Georgia, USA. 2017.

Funding Information
-------------------

The presentation and development of these materials was supported by the National Institute of Diabetes, Digestive and Kidney Diseases of the National Institutes of Health (F32DK107157). The content is solely the responsibility of the authors and does not necessarily represent the official views of the National Institutes of Health or any other organization.
