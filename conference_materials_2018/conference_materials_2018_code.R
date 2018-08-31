# ------------------------------------------------------------------------------ #
# Code for Conference Materials 2018
# By: Cynthia M. Kroeger & Andrew W. Brown
# ------------------------------------------------------------------------------ #

# Dependencies 

# install.packages("vcd")
# install.packages("rentrez") 
# Note on rentrez version: To replicate the figures in these presentations, one
# must use a rEntrez version less than 1.2. All of the releases are tagged in 
# the GitHub repo. Use devtools GitHub install function with the 'ref' argument 
# to set release tag. Otherwise, the search query for the "five" object will be 
# too large a query and will return an error.


# ------------------------------------------------------------------------------ #
# Study: pm_1_org_ren (rEntrez method 1 in PubMed)
# ------------------------------------------------------------------------------ #

# Create objects for individual p-value bin search strings 
three <- "(p=.03*[TIAB] OR p=0.03*[TIAB])"
four <- "(p=.04*[TIAB] OR p=0.04*[TIAB])"
five <- "(p 050[TIAB] OR p 0500[TIAB] OR p 05006[TIAB] OR p 0501[TIAB] OR 
          p 0501a[TIAB] OR p 0502[TIAB] OR p 0505[TIAB] OR p 0507[TIAB] OR 
          p 051[TIAB] OR p 0511[TIAB] OR p 0513[TIAB] OR p 0514[TIAB] OR 
          p 0515[TIAB] OR p 0518[TIAB] OR p 0519[TIAB] OR p 052[TIAB] OR 
          p 0529[TIAB] OR p 053[TIAB] OR p 0537[TIAB] OR p 054[TIAB] OR 
          p 0542[TIAB] OR p 055[TIAB] OR p 0557[TIAB] OR p 056[TIAB] OR 
          p 0566[TIAB] OR p 057[TIAB] OR p 0571[TIAB] OR p 0573[TIAB] OR 
          p 058[TIAB] OR p 0583[TIAB] OR p 0585[TIAB] OR p 0588[TIAB] OR 
          p 059[TIAB] OR p 0591[TIAB] OR p 0594[TIAB] OR p 0595[TIAB] OR 
          p 0597[TIAB]) OR (p 0 05,15[TIAB] OR p 0 05,863[TIAB] OR 
          p 0 05,95[TIAB] OR p 0 050[TIAB] OR p 0 0500[TIAB] OR p 0 0501[TIAB] OR 
          p 0 0502[TIAB] OR p 0 0503[TIAB] OR p 0 0504[TIAB] OR p 0 0505[TIAB] OR 
          p 0 0505385[TIAB] OR p 0 0506[TIAB] OR p 0 0507[TIAB] OR p 0 0508[TIAB] 
          OR p 0 0509[TIAB] OR p 0 051[TIAB] OR p 0 0510[TIAB] OR p 0 0511[TIAB] 
          OR p 0 0512[TIAB] OR p 0 0513[TIAB] OR p 0 0514[TIAB] OR p 0 0515[TIAB] 
          OR p 0 0516[TIAB] OR p 0 0517[TIAB] OR p 0 0518[TIAB] OR p 0 0519[TIAB] 
          OR p 0 052[TIAB] OR p 0 0520[TIAB] OR p 0 0522[TIAB] OR p 0 0523[TIAB] 
          OR p 0 0524[TIAB] OR p 0 0525[TIAB] OR p 0 052574[TIAB] OR p 0 0526[TIAB] 
          OR p 0 0527[TIAB] OR p 0 0529[TIAB] OR p 0 053[TIAB] OR p 0 0530[TIAB] 
          OR p 0 0531[TIAB] OR p 0 0532[TIAB] OR p 0 0533[TIAB] OR p 0 0534[TIAB] 
          OR p 0 0535[TIAB] OR p 0 0536[TIAB] OR p 0 0537[TIAB] OR p 0 0539[TIAB] 
          OR p 0 054[TIAB] OR p 0 0540[TIAB] OR p 0 0541[TIAB] OR p 0 0542[TIAB] 
          OR p 0 0543[TIAB] OR p 0 0544[TIAB] OR p 0 0545[TIAB] OR p 0 0546[TIAB] 
          OR p 0 0547[TIAB] OR p 0 0548[TIAB] OR p 0 0549[TIAB] OR p 0 055[TIAB] 
          OR p 0 0550[TIAB] OR p 0 0551[TIAB] OR p 0 0552[TIAB] OR p 0 0553[TIAB] 
          OR p 0 0554[TIAB] OR p 0 05548[TIAB] OR p 0 0556[TIAB] OR p 0 0557[TIAB] 
          OR p 0 0558[TIAB] OR p 0 0559[TIAB] OR p 0 056[TIAB] OR p 0 0560[TIAB] 
          OR p 0 0561[TIAB] OR p 0 0562[TIAB] OR p 0 0563[TIAB] OR p 0 0564[TIAB] 
          OR p 0 0566[TIAB] OR p 0 0567[TIAB] OR p 0 0568[TIAB] OR p 0 0569[TIAB] 
          OR p 0 057[TIAB] OR p 0 0570[TIAB] OR p 0 0571[TIAB] OR p 0 0572[TIAB] 
          OR p 0 0573[TIAB] OR p 0 0574[TIAB] OR p 0 0575[TIAB] OR p 0 0576[TIAB] 
          OR p 0 05760[TIAB] OR p 0 0577[TIAB] OR p 0 0578[TIAB] OR p 0 0579[TIAB] 
          OR p 0 058[TIAB] OR p 0 0580[TIAB] OR p 0 0581[TIAB] OR p 0 0582[TIAB] 
          OR p 0 0583[TIAB] OR p 0 0584[TIAB] OR p 0 05846[TIAB] OR p 0 0585[TIAB] 
          OR p 0 0586[TIAB] OR p 0 0587[TIAB] OR p 0 0588[TIAB] OR p 0 0589[TIAB] 
          OR p 0 05891[TIAB] OR p 0 059[TIAB] OR p 0 0590[TIAB] OR p 0 0591[TIAB] 
          OR p 0 0592[TIAB] OR p 0 0593[TIAB] OR p 0 0594[TIAB] OR p 0 0595[TIAB] 
          OR p 0 0596[TIAB] OR p 0 0597[TIAB] OR p 0 0598[TIAB] OR p 0 0599[TIAB])"
six <- "(p=.06*[TIAB] OR p=0.06*[TIAB])"


# Create objects for exclusive p-value bin search strings 
three_ex <- paste(three, "NOT", four, "NOT", five, "NOT", six)
four_ex <- paste(four, "NOT", three, "NOT", five, "NOT", six)
five_ex <- paste(five, "NOT", three, "NOT", four, "NOT", six)
six_ex <- paste(six, "NOT", three, "NOT", four, "NOT", five)

# Create object for common tests search string for Method 1
com_1 <- "(t-test[TIAB] OR t test[TIAB] OR t-student[TIAB] OR t student[TIAB] OR 
          anova[TIAB] OR ancova[TIAB])"


# Create object for atypical tests search string for Method 1
atyp_1 <- "(nonparametric[TIAB] OR non-parametric[TIAB] OR non parametric[TIAB] 
            OR kruskal-wallis[TIAB] OR rank-sum test[TIAB] OR rank sum test[TIAB]
            OR spearman rank correlation coefficient[TIAB] OR 
            spearman correlation[TIAB] OR wilcox test[TIAB] OR 
            kolmogorov-smirnov test[TIAB] OR kolmogorov smirnov test[TIAB] OR 
            u-test[TIAB] OR mann whitney[TIAB] OR mann-whitney[TIAB] OR 
            wilcoxon-mann-whitney[TIAB] OR wilcoxon[TIAB] OR wilcoxon-rank[TIAB] 
            OR kruskal wallis[TIAB] OR sign test[TIAB] OR signed-rank[TIAB] OR 
            friedman test[TIAB] OR mood’s median test[TIAB] OR 
            bootstrapping[TIAB] OR permutation test[TIAB] OR log-transform*[TIAB] 
            OR log transform[TIAB] OR log transformed[TIAB] OR 
            (outlier*[TIAB] AND remov*[TIAB]))"


# Create object for exclusive common tests search string 
com_1_ex <- paste(com_1, "NOT", atyp_1)


# Create object for exclusive atypical tests search string
atyp_1_ex <- paste(atyp_1, "NOT", com_1)


# Creat object for each exclusive p-value bin and test type combination search
three_com_1_ex <- paste(com_1_ex, "AND", three_ex)
four_com_1_ex <- paste(com_1_ex, "AND", four_ex)
five_com_1_ex <- paste(com_1_ex, "AND", five_ex)
six_com_1_ex <- paste(com_1_ex, "AND", six_ex)
three_atyp_1_ex <- paste(atyp_1_ex, "AND", three_ex) 
four_atyp_1_ex <- paste(atyp_1_ex, "AND", four_ex) 
five_atyp_1_ex <- paste(atyp_1_ex, "AND", five_ex) 
six_atyp_1_ex <- paste(atyp_1_ex, "AND", six_ex)


# Obtain counts for each exclusive p-value bin and test type combination 

library(rentrez)

three_com_1_ex_ct <- entrez_search(db = "pubmed", 
                                   term = three_com_1_ex, 
                                   retmax = 0)
four_com_1_ex_ct <- entrez_search(db = "pubmed", 
                                  term = four_com_1_ex, 
                                  retmax = 0)
five_com_1_ex_ct <- entrez_search(db = "pubmed", 
                                  term = five_com_1_ex, 
                                  retmax = 0)
six_com_1_ex_ct <- entrez_search(db = "pubmed", 
                                 term = six_com_1_ex, 
                                 retmax = 0)
three_atyp_1_ex_ct <- entrez_search(db = "pubmed", 
                                    term = three_atyp_1_ex, 
                                    retmax = 0)
four_atyp_1_ex_ct <- entrez_search(db = "pubmed", 
                                   term = four_atyp_1_ex, 
                                   retmax = 0)
five_atyp_1_ex_ct <- entrez_search(db = "pubmed", 
                                   term = five_atyp_1_ex, 
                                   retmax = 0)
six_atyp_1_ex_ct <- entrez_search(db = "pubmed", 
                                  term = six_atyp_1_ex, 
                                  retmax = 0)


# Format rEntrez count results into a matrix for pm_1_rep_ren
pm_1_rep_ren <- matrix(c(three_com_1_ex_ct$count, four_com_1_ex_ct$count, 
                         five_com_1_ex_ct$count, six_com_1_ex_ct$count, 
                         three_atyp_1_ex_ct$count, four_atyp_1_ex_ct$count, 
                         five_atyp_1_ex_ct$count, six_atyp_1_ex_ct$count), 
                       byrow = TRUE, 2, 4)


# Rename rows and columns 
rownames(pm_1_rep_ren) <- c("Common Analyses", "Atypical Analyses")
colnames(pm_1_rep_ren) <- c("0.03*", "0.04*", "0.05*", "0.06*")


# Print results
pm_1_rep_ren


# Run chi-squared test
pm_1_rep_ren_xsq <- chisq.test(pm_1_rep_ren)


# Calculate percentage deviation to visualize 
pm_1_rep_ren_xsq_pd <- ((pm_1_rep_ren_xsq$observed - 
                           pm_1_rep_ren_xsq$expected)/
                          pm_1_rep_ren_xsq$expected) * 100 


# Visualize with association plot 
require(vcd)
assoc(pm_1_rep_ren, main = "Method 1 in PubMed: rEntrez", 
      shade = TRUE, legend = TRUE)


# ------------------------------------------------------------------------------ #
# Study: dss_1_org_ren (rEntrez method 1 in supplement subset)
# ------------------------------------------------------------------------------ #

# Create object for Dietary Supplement PubMed Subset search string filter
dss <- "(dietsuppl [Filter])"


# Create object for each exclusive p-value bin and test type combination search
three_com_1_ex_dss <- paste(com_1_ex, "AND", three_ex, "AND", dss)
four_com_1_ex_dss <- paste(com_1_ex, "AND", four_ex, "AND", dss)
five_com_1_ex_dss <- paste(com_1_ex, "AND", five_ex, "AND", dss)
six_com_1_ex_dss <- paste(com_1_ex, "AND", six_ex, "AND", dss)
three_atyp_1_ex_dss <- paste(atyp_1_ex, "AND", three_ex, "AND", dss) 
four_atyp_1_ex_dss <- paste(atyp_1_ex, "AND", four_ex, "AND", dss) 
five_atyp_1_ex_dss <- paste(atyp_1_ex, "AND", five_ex, "AND", dss) 
six_atyp_1_ex_dss <- paste(atyp_1_ex, "AND", six_ex, "AND", dss)


# Create counts for each exclusive p-value bin and test type combination 
three_com_1_ex_ct_dss <- entrez_search(db = "pubmed", 
                                       term = three_com_1_ex_dss, 
                                       retmax = 0)
four_com_1_ex_ct_dss <- entrez_search(db = "pubmed", 
                                      term = four_com_1_ex_dss, 
                                      retmax = 0)
five_com_1_ex_ct_dss <- entrez_search(db = "pubmed", 
                                      term = five_com_1_ex_dss, 
                                      retmax = 0)
six_com_1_ex_ct_dss <- entrez_search(db = "pubmed", 
                                     term = six_com_1_ex_dss, 
                                     retmax = 0)
three_atyp_1_ex_ct_dss <- entrez_search(db = "pubmed", 
                                        term = three_atyp_1_ex_dss, 
                                        retmax = 0)
four_atyp_1_ex_ct_dss <- entrez_search(db = "pubmed", 
                                       term = four_atyp_1_ex_dss, 
                                       retmax = 0)
five_atyp_1_ex_ct_dss <- entrez_search(db = "pubmed", 
                                       term = five_atyp_1_ex_dss, 
                                       retmax = 0)
six_atyp_1_ex_ct_dss <- entrez_search(db = "pubmed", 
                                      term = six_atyp_1_ex_dss, 
                                      retmax = 0)


# Format rEntrez count results into a matrix for dss_1_rep_ren
dss_1_rep_ren <- matrix(c(three_com_1_ex_ct_dss$count, four_com_1_ex_ct_dss$count, 
                          five_com_1_ex_ct_dss$count, six_com_1_ex_ct_dss$count, 
                          three_atyp_1_ex_ct_dss$count, four_atyp_1_ex_ct_dss$count, 
                          five_atyp_1_ex_ct_dss$count, six_atyp_1_ex_ct_dss$count), 
                        byrow = TRUE, 2, 4)


# Rename rows and columns 
rownames(dss_1_rep_ren) <- c("Common Analyses", "Atypical Analyses")
colnames(dss_1_rep_ren) <- c("0.03*", "0.04*", "0.05*", "0.06*")


# Print results
dss_1_rep_ren


# Run chi-squared test
dss_1_rep_ren_xsq <- chisq.test(dss_1_rep_ren)


# Calculate percentage deviation to visualize 
dss_1_rep_ren_xsq_pd <- ((dss_1_rep_ren_xsq$observed - 
                            dss_1_rep_ren_xsq$expected)/
                           dss_1_rep_ren_xsq$expected) * 100 


# Visualize with association plot 
require(vcd)
assoc(dss_1_rep_ren, main = "Method 1 in DSS: rEntrez", 
      shade = TRUE, legend = TRUE)


# ------------------------------------------------------------------------------ #
# Study: pm_2_org_ren (rEntrez method 2 in PubMed)
# ------------------------------------------------------------------------------ #

# Create object for atypical tests search string for Method 2
atyp_2 <- "(nonparametric[TIAB] OR non-parametric[TIAB] OR non parametric[TIAB] 
            OR kruskal-wallis[TIAB] OR rank-sum test[TIAB] OR rank sum test[TIAB]
            OR spearman rank correlation coefficient[TIAB] OR 
            spearman correlation[TIAB] OR wilcox test[TIAB] OR 
            kolmogorov-smirnov test[TIAB] OR kolmogorov smirnov test[TIAB] OR 
            u-test[TIAB] OR mann whitney[TIAB] OR mann-whitney[TIAB] OR 
            wilcoxon-mann-whitney[TIAB] OR wilcoxon[TIAB] OR wilcoxon-rank[TIAB] 
            OR kruskal wallis[TIAB] OR sign test[TIAB] OR signed-rank[TIAB] OR 
            friedman test[TIAB] OR mood’s median test[TIAB] OR bootstrapping[TIAB]
            OR permutation test[TIAB] OR log-transform*[TIAB] OR 
            log transform*[TIAB] OR log transformed[TIAB] OR 
            (outlier*[TIAB] AND remov*[TIAB]))"


# Create object for search string: No mention of atypical tests in abstracts  
three_atyp_2_not_ex <- paste(three_ex, "NOT", atyp_2)
four_atyp_2_not_ex <- paste(four_ex, "NOT", atyp_2)
five_atyp_2_not_ex <- paste(five_ex, "NOT", atyp_2)
six_atyp_2_not_ex <- paste(six_ex, "NOT", atyp_2)


# Create object for search string: Mention of atypical tests in abstracts
three_atyp_2_ex <- paste(three_ex, "AND", atyp_2)
four_atyp_2_ex <- paste(four_ex, "AND", atyp_2)
five_atyp_2_ex <- paste(five_ex, "AND", atyp_2)
six_atyp_2_ex <- paste(six_ex, "AND", atyp_2)


# Create counts for each exclusive p-value bin and test type combination 
three_atyp_2_not_ex_ct <- entrez_search(db = "pubmed", 
                                        term = three_atyp_2_not_ex, 
                                        retmax = 0)
four_atyp_2_not_ex_ct <- entrez_search(db = "pubmed", 
                                       term = four_atyp_2_not_ex, 
                                       retmax = 0)
five_atyp_2_not_ex_ct <- entrez_search(db = "pubmed", 
                                       term = five_atyp_2_not_ex, 
                                       retmax = 0)
six_atyp_2_not_ex_ct <- entrez_search(db = "pubmed", 
                                      term = six_atyp_2_not_ex, 
                                      retmax = 0)
three_atyp_2_ex_ct <- entrez_search(db = "pubmed", 
                                    term = three_atyp_2_ex, 
                                    retmax = 0)
four_atyp_2_ex_ct <- entrez_search(db = "pubmed", 
                                   term = four_atyp_2_ex, 
                                   retmax = 0)
five_atyp_2_ex_ct <- entrez_search(db = "pubmed", 
                                   term = five_atyp_2_ex, 
                                   retmax = 0)
six_atyp_2_ex_ct <- entrez_search(db = "pubmed", 
                                  term = six_atyp_2_ex, 
                                  retmax = 0)


# Format rEntrez count results into a matrix for pm_2_rep_ren
pm_2_rep_ren <- matrix(c(three_atyp_2_not_ex_ct$count, four_atyp_2_not_ex_ct$count, 
                         five_atyp_2_not_ex_ct$count, six_atyp_2_not_ex_ct$count, 
                         three_atyp_2_ex_ct$count, four_atyp_2_ex_ct$count, 
                         five_atyp_2_ex_ct$count, six_atyp_2_ex_ct$count), 
                       byrow = TRUE, 2, 4)


# Rename rows and columns 
rownames(pm_2_rep_ren) <- c("No Atypical Analyses", "Atypical Analyses")
colnames(pm_2_rep_ren) <- c("0.03*", "0.04*", "0.05*", "0.06*")


# Print results
pm_2_rep_ren


# Run chi-squared test
pm_2_rep_ren_xsq <- chisq.test(pm_2_rep_ren)


# Calculate percentage deviation to visualize 
pm_2_rep_ren_xsq_pd <- ((pm_2_rep_ren_xsq$observed - 
                           pm_2_rep_ren_xsq$expected)/
                          pm_2_rep_ren_xsq$expected) * 100 


# Visualize with association plot 
require(vcd)
assoc(pm_2_rep_ren, main = "Method 2 in PubMed: rEntrez", 
      shade = TRUE, legend = TRUE)


# ------------------------------------------------------------------------------ #
# Study: dss_2_rep_ren (rEntrez method 2 and supplement subset)
# ------------------------------------------------------------------------------ #

# Create object for each exclusive p-value bin and test type combination search
three_atyp_2_not_ex_dss <- paste(three_ex, "NOT", atyp_2, "AND", dss)
four_atyp_2_not_ex_dss <- paste(four_ex, "NOT", atyp_2, "AND", dss)
five_atyp_2_not_ex_dss <- paste(five_ex, "NOT", atyp_2, "AND", dss)
six_atyp_2_not_ex_dss <- paste(six_ex, "NOT", atyp_2, "AND", dss)
three_atyp_2_ex_dss <- paste(three_ex, "AND", atyp_2, "AND", dss) 
four_atyp_2_ex_dss <- paste(four_ex, "AND", atyp_2, "AND", dss) 
five_atyp_2_ex_dss <- paste(five_ex, "AND", atyp_2, "AND", dss) 
six_atyp_2_ex_dss <- paste(six_ex, "AND", atyp_2, "AND", dss)


# Create counts for each exclusive p-value bin and test type combination 
three_atyp_2_not_ex_ct_dss <- entrez_search(db = "pubmed", 
                                            term = three_atyp_2_not_ex_dss, 
                                            retmax = 0)
four_atyp_2_not_ex_ct_dss <- entrez_search(db = "pubmed", 
                                           term = four_atyp_2_not_ex_dss, 
                                           retmax = 0)
five_atyp_2_not_ex_ct_dss <- entrez_search(db = "pubmed", 
                                           term = five_atyp_2_not_ex_dss, 
                                           retmax = 0)
six_atyp_2_not_ex_ct_dss <- entrez_search(db = "pubmed", 
                                          term = six_atyp_2_not_ex_dss, 
                                          retmax = 0)
three_atyp_2_ex_ct_dss <- entrez_search(db = "pubmed", 
                                        term = three_atyp_2_ex_dss, 
                                        retmax = 0)
four_atyp_2_ex_ct_dss <- entrez_search(db = "pubmed", 
                                       term = four_atyp_2_ex_dss, 
                                       retmax = 0)
five_atyp_2_ex_ct_dss <- entrez_search(db = "pubmed", 
                                       term = five_atyp_2_ex_dss, 
                                       retmax = 0)
six_atyp_2_ex_ct_dss <- entrez_search(db = "pubmed", 
                                      term = six_atyp_2_ex_dss, 
                                      retmax = 0)


# Format rEntrez count results into a matrix for dss_2_rep_ren
dss_2_rep_ren <- matrix(c(three_atyp_2_not_ex_ct_dss$count, 
                          four_atyp_2_not_ex_ct_dss$count, 
                          five_atyp_2_not_ex_ct_dss$count, 
                          six_atyp_2_not_ex_ct_dss$count, 
                          three_atyp_2_ex_ct_dss$count, 
                          four_atyp_2_ex_ct_dss$count, 
                          five_atyp_2_ex_ct_dss$count, 
                          six_atyp_2_ex_ct_dss$count), 
                        byrow = TRUE, 2, 4)


# Rename rows and columns 
rownames(dss_2_rep_ren) <- c("No Atypical Analyses", "Atypical Analyses")
colnames(dss_2_rep_ren) <- c("0.03*", "0.04*", "0.05*", "0.06*")


# Print results
dss_2_rep_ren


# Run chi-squared test
dss_2_rep_ren_xsq <- chisq.test(dss_2_rep_ren)


# Calculate percentage deviation to visualize 
dss_2_rep_ren_xsq_pd <- ((dss_2_rep_ren_xsq$observed - 
                            dss_2_rep_ren_xsq$expected)/
                           dss_2_rep_ren_xsq$expected) * 100 


# Visualize with association plot 
require(vcd)
assoc(dss_2_rep_ren, main = "Method 2 in DSS: rEntrez", 
      shade = TRUE, legend = TRUE)