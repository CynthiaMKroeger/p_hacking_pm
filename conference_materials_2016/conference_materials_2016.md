Conference Materials 2016
================
Cynthia M. Kroeger
5/9/2018

Project Description
-------------------

This project was implemented to further develop methods that were originated previously <insert DOI for 2014 abstract> as part of a larger project (F32DK107157) to study common biases and statistical mistakes made in nutrition and obesity research. One such bias is p-hacking. As the poster describes in more detail, this project replicated a previously implemented rapid and high-volume method for detecting p-hacking in scientific literature, as well as refined previous methods. Details of these changes are described in more detail below. This work has since been further developed and presented on, and a manuscript with fully-developed methods is now being developed for publication.

Conference Description
----------------------

This work was presented at The Obesity Society (TOS) Annual Scientific Meeting in New Orleans, Louisiana, USA, in 2016.

Contact Information for Investigators
-------------------------------------

Principal Investigator:

-   Cynthia M. Kroeger, PhD, Postdoctoral Fellow, Indiana University School of Public Health-Bloomington, Department of Epidemiology and Biostatistics, <kroeger@iu.edu>

Co-investigators:

-   Andrew W. Brown, PhD, Assistant Professor, Indiana University School of Public Health-Bloomington, Department of Applied Health Sciences, <awb1@iu.edu>

-   David B. Allison, PhD, Dean, Distinguished Professor, Provost Professor, Indiana University School of Public Health-Bloomington, Department of Epidemiology and Biostatistics, <allison@iu.edu>

At the time of presentation, Dr. Kroeger was a Postdoctoral Fellow at the University of Alabama at Birmingham, and Drs. Brown and Allison were affiliated with the University of Alabama at Birmingham.

Discription of Supporting Materials
-----------------------------------

### Presentation: Poster

This work was presented as a poster. The file name for this poster is:

-   conference\_materials\_2016\_poster.pdf

### Data

The file name for the data set is:

-   conference\_materials\_2016\_data.csv

Full names and definitions of column headings: **Full names and definitions of column headings**

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
<td>a = method a; b = method b (methods are described in section &quot;Methodological details&quot; below)</td>
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
<td>three</td>
<td>number of abstracts containing a 0.03* p-value</td>
<td></td>
</tr>
<tr class="odd">
<td>four</td>
<td>number of abstracts containing a 0.04* p-value</td>
<td></td>
</tr>
<tr class="even">
<td>five</td>
<td>number of abstracts containing a 0.05* p-value</td>
<td></td>
</tr>
<tr class="odd">
<td>six</td>
<td>number of abstracts containing a 0.06* p-value</td>
<td></td>
</tr>
<tr class="even">
<td>common</td>
<td>number of abstracts containing a common statistical analysis</td>
<td></td>
</tr>
<tr class="odd">
<td>atypical</td>
<td>number of abstracts containing an atypical analysis term</td>
<td></td>
</tr>
<tr class="even">
<td>three_exclusive</td>
<td>number of abstracts containing a 0.03* p-value and not a 0.04*, 0.05* or 0.06* p-value</td>
<td></td>
</tr>
<tr class="odd">
<td>four_exclusive</td>
<td>number of abstracts containing a 0.04* p-value and not a 0.03*, 0.05* or 0.06* p-value</td>
<td></td>
</tr>
<tr class="even">
<td>five_exclusive</td>
<td>number of abstracts containing a 0.05* p-value and not a 0.03*, 0.04* or 0.06* p-value</td>
<td></td>
</tr>
<tr class="odd">
<td>six_exclusive</td>
<td>number of abstracts containing a 0.06* p-value and not a 0.03*, 0.04* or 0.05* p-value</td>
<td></td>
</tr>
<tr class="even">
<td>common_exclusive</td>
<td>number of abstracts containing a common statistical analysis term and not an atypical statistical analysis term</td>
<td></td>
</tr>
<tr class="odd">
<td>atypical_exclusive</td>
<td>number of abstracts containing an atypical statistical analysis term and not a common statistical analysis term</td>
<td></td>
</tr>
<tr class="even">
<td>three_common</td>
<td>number of abstracts containing a three_exclusive and common_exclusive term</td>
<td></td>
</tr>
<tr class="odd">
<td>four_common</td>
<td>number of abstracts containing a four_exclusive and common_exclusive term</td>
<td></td>
</tr>
<tr class="even">
<td>five_common</td>
<td>number of abstracts containing a five_exclusive and common_exclusive term</td>
<td></td>
</tr>
<tr class="odd">
<td>six_common</td>
<td>number of abstracts containing a six_exclusive and common_exclusive term</td>
<td></td>
</tr>
<tr class="even">
<td>three_atypical</td>
<td>number of abstracts containing a three_exclusive and atypical_exclusive term</td>
<td></td>
</tr>
<tr class="odd">
<td>four_atypical</td>
<td>number of abstracts containing a four_exclusive and atypical_exclusive term</td>
<td></td>
</tr>
<tr class="even">
<td>five_atypical</td>
<td>number of abstracts containing a five_exclusive and atypical_exclusive term</td>
<td></td>
</tr>
<tr class="odd">
<td>six_atypical</td>
<td>number of abstracts containing a six_exclusive and atypical_exclusive term</td>
<td></td>
</tr>
<tr class="even">
<td>n_common</td>
<td>sum of rows columns 6:9</td>
<td></td>
</tr>
<tr class="odd">
<td>n_atypical</td>
<td>sum of rows columns 10:13</td>
<td></td>
</tr>
</tbody>
</table>

Units of measurement: Number of articles found

These data were collected and formatted by Dr. Kroeger.

### Methodological details

Search string details for method a:

``` r
# p-value bin 0.03: (p=.03*[tiab] OR p=0.03*[tiab])
# p-value bin 0.04: (p=.04*[tiab] OR p=0.04*[tiab])
# p-value bin 0.05: (p 050[tiab] OR p 0500[tiab] OR p 05006[tiab] OR p 0501[tiab] OR p 0501a[tiab] OR p 0502[tiab] OR p 0505[tiab] OR p 0507[tiab] OR p 051[tiab] OR p 0511[tiab] OR p 0513[tiab] OR p 0514[tiab] OR p 0515[tiab] OR p 0518[tiab] OR p 0519[tiab] OR p 052[tiab] OR p 0529[tiab] OR p 053[tiab] OR p 0537[tiab] OR p 054[tiab] OR p 0542[tiab] OR p 055[tiab] OR p 0557[tiab] OR p 056[tiab] OR p 0566[tiab] OR p 057[tiab] OR p 0571[tiab] OR p 0573[tiab] OR p 058[tiab] OR p 0583[tiab] OR p 0585[tiab] OR p 0588[tiab] OR p 059[tiab] OR p 0591[tiab] OR p 0594[tiab] OR p 0595[tiab] OR p 0597[tiab]) OR (p 0 05,15[tiab] OR p 0 05,863[tiab] OR p 0 05,95[tiab] OR p 0 050[tiab] OR p 0 0500[tiab] OR p 0 0501[tiab] OR p 0 0502[tiab] OR p 0 0503[tiab] OR p 0 0504[tiab] OR p 0 0505[tiab] OR p 0 0505385[tiab] OR p 0 0506[tiab] OR p 0 0507[tiab] OR p 0 0508[tiab] OR p 0 0509[tiab] OR p 0 051[tiab] OR p 0 0510[tiab] OR p 0 0511[tiab] OR p 0 0512[tiab] OR p 0 0513[tiab] OR p 0 0514[tiab] OR p 0 0515[tiab] OR p 0 0516[tiab] OR p 0 0517[tiab] OR p 0 0518[tiab] OR p 0 0519[tiab] OR p 0 052[tiab] OR p 0 0520[tiab] OR p 0 0522[tiab] OR p 0 0523[tiab] OR p 0 0524[tiab] OR p 0 0525[tiab] OR p 0 052574[tiab] OR p 0 0526[tiab] OR p 0 0527[tiab] OR p 0 0529[tiab] OR p 0 053[tiab] OR p 0 0530[tiab] OR p 0 0531[tiab] OR p 0 0532[tiab] OR p 0 0533[tiab] OR p 0 0534[tiab] OR p 0 0535[tiab] OR p 0 0536[tiab] OR p 0 0537[tiab] OR p 0 0539[tiab] OR p 0 054[tiab] OR p 0 0540[tiab] OR p 0 0541[tiab] OR p 0 0542[tiab] OR p 0 0543[tiab] OR p 0 0544[tiab] OR p 0 0545[tiab] OR p 0 0546[tiab] OR p 0 0547[tiab] OR p 0 0548[tiab] OR p 0 0549[tiab] OR p 0 055[tiab] OR p 0 0550[tiab] OR p 0 0551[tiab] OR p 0 0552[tiab] OR p 0 0553[tiab] OR p 0 0554[tiab] OR p 0 05548[tiab] OR p 0 0556[tiab] OR p 0 0557[tiab] OR p 0 0558[tiab] OR p 0 0559[tiab] OR p 0 056[tiab] OR p 0 0560[tiab] OR p 0 0561[tiab] OR p 0 0562[tiab] OR p 0 0563[tiab] OR p 0 0564[tiab] OR p 0 0566[tiab] OR p 0 0567[tiab] OR p 0 0568[tiab] OR p 0 0569[tiab] OR p 0 057[tiab] OR p 0 0570[tiab] OR p 0 0571[tiab] OR p 0 0572[tiab] OR p 0 0573[tiab] OR p 0 0574[tiab] OR p 0 0575[tiab] OR p 0 0576[tiab] OR p 0 05760[tiab] OR p 0 0577[tiab] OR p 0 0578[tiab] OR p 0 0579[tiab] OR p 0 058[tiab] OR p 0 0580[tiab] OR p 0 0581[tiab] OR p 0 0582[tiab] OR p 0 0583[tiab] OR p 0 0584[tiab] OR p 0 05846[tiab] OR p 0 0585[tiab] OR p 0 0586[tiab] OR p 0 0587[tiab] OR p 0 0588[tiab] OR p 0 0589[tiab] OR p 0 05891[tiab] OR p 0 059[tiab] OR p 0 0590[tiab] OR p 0 0591[tiab] OR p 0 0592[tiab] OR p 0 0593[tiab] OR p 0 0594[tiab] OR p 0 0595[tiab] OR p 0 0596[tiab] OR p 0 0597[tiab] OR p 0 0598[tiab] OR p 0 0599[tiab])
# p-value bin 0.06: (p=.06*[tiab] OR p=0.06*[tiab])
# common tests: ("t-test"[tiab] OR "anova"[tiab] OR "ancova"[tiab] OR "mixed model"[tiab])
# atypical tests: ("nonparametric"[tiab] OR "non-parametric"[tiab] OR "wlicoxon-rank"[tiab] OR "wilcoxon rank"[tiab] OR "kruskal-wallis"[tiab] OR "kruskal wallis"[tiab] OR "transformation"[tiab] OR (outlier✶[tiab] AND remov*[tiab])
```

Asterisks in PubMed are used to indicate wildcards. PubMed returns wildcards and shows the terms returned for manual inspection. Expansion of the 0.05\* term above shows these wildcards expanded. Search 0.05\* is expanded to remove inclusion of the commonly found mention of p &lt; 0.05 in abstracts. PubMed interprets any equality characters (&lt;, =, &gt;) as blank spaces. An asterisk alone could not be used here, as we needed to manually remove references to 0.05. These are not likely to represent values in a bin, because they could represent the entire inequality of p &lt; 0.05 or reference to a significance level threshold.

Search string details for method b:

``` r
# p-value bin 0.03: same as method a
# p-value bin 0.04: same as method a
# p-value bin 0.05: same as method a
# p-value bin 0.06: same as method a
# common tests: ("t-test"[tiab] OR "anova"[tiab] OR "ancova"[tiab] OR "mixed model"[tiab])
# atypical tests: ("nonparametric"[tiab] OR "non-parametric"[tiab] OR "wlicoxon-rank"[tiab] OR "wilcoxon rank"[tiab] OR "kruskal-wallis"[tiab] OR "kruskal wallis"[tiab] OR "transformation"[tiab] OR (outlier*[tiab] AND remov*[tiab])
```

Reasons for changes:

-   Common tests:
-   Atypical tests:

### Analysis code

The file name for the analysis code is:

-   conference\_materials\_2016\_code.R

Study level naming convention: database\_method\_trial\_mode

-   database: pm = PubMed; dss = PubMed Dietary Supplement Subset
-   method: a = method a; method b = b
-   trial: org = original
-   mode: man = manual search

Analysis level naming convention: study\_function

-   study: pm\_a\_rep\_man, pm\_b\_org\_man, dss\_b\_org\_man
-   function: xsq = chisq.test; pd = percentage deviation

Code was written by Dr. Kroeger, with editorial assistance from Dr. Brown.

A Note on How to Replicate this Study
-------------------------------------

Author Contribution
-------------------

Dr. Kroeger conducted the study, refined the methods, analyzed data, and made the poster. Dr. Brown provided editorial assistance with methods and poster preparation. Dr. Allison is the study originator and senior author.

License Information
-------------------

These materials are licensed under the Creative Commons Attribution Share Alike 4.0. The file name for the license information is:

-   LICENSE.txt

Citation Information
--------------------

### Recommended citation for conference\_materials\_2016

Please use the following to cite any of the supporting materials herein:

Kroeger CM, Brown AB, Allison DB. Data from published abstract: Simple text-mining to detect comparative p-hacking is sensitive to text searching variations. Zenodo. 2018. DOI: <insert DOI>.

### Recommended citation for published abstract

Please use the following to cite the published abstract:

Kroeger CM, Brown AW, Allison DB. Simple text-mining to detect comparative p-hacking is sensitive to text searching variations. The Obesity Society (TOS): Annual Scientific Meeting. New Orleans, Louisiana, USA, 2016.

Funding Information
-------------------

The presentation and development of these materials was supported by the National Institutes of Health (F32DK107157). The content is solely the responsibility of the authors and does not necessarily represent the official views of the National Institutes of Health or any other organization.
