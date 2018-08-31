# ------------------------------------------------------------------------------ #
# Code for: Conference Materials 2016
# By: Cynthia M. Kroeger 
# ------------------------------------------------------------------------------ #

# Import and read dataset 
library(readr)
abstract_2016_data <- read_csv("conference_materials_2016_data.csv")
View(abstract_2016_data)


# ------------------------------------------------------------------------------ #
# Format data to matrix for pm_a_rep_man (manual PubMed method a replication)
# ------------------------------------------------------------------------------ #

pm_a_rep_man <- matrix(as.numeric(c(abstract_2016_data[1,c(6:13)])), 
                       byrow = TRUE, 2, 4)


# Rename rows and columns 
rownames(pm_a_rep_man) <- c("Common Analyses", "Atypical Analyses")
colnames(pm_a_rep_man) <- c("0.03*", "0.04*", "0.05*", "0.06*")


# Print results
pm_a_rep_man


# ------------------------------------------------------------------------------ #
# Run chi-squared test for pm_a_rep_man
# ------------------------------------------------------------------------------ #

pm_a_rep_man_xsq <- chisq.test(pm_a_rep_man)


# Calculate percentage deviation to visualize 
pm_a_rep_man_xsq_pd <- ((pm_a_rep_man_xsq$observed - 
                           pm_a_rep_man_xsq$expected)/
                          pm_a_rep_man_xsq$expected) * 100 
pm_a_rep_man_xsq_pd


# Visualize with association plot 
require(vcd)
assoc(pm_a_rep_man, 
      main = "Method a in PubMed: Replication", 
      shade = TRUE, 
      legend = TRUE)


# ------------------------------------------------------------------------------ #
# Format data to matrix for dss_a_org_man (manual method a in supplement subset)
# ------------------------------------------------------------------------------ #

dss_a_org_man <- matrix(as.numeric(c(abstract_2016_data[2,c(6:13)])), 
                       byrow = TRUE, 2, 4)


# Rename rows and columns 
rownames(dss_a_org_man) <- c("Common Analyses", "Atypical Analyses")
colnames(dss_a_org_man) <- c("0.03*", "0.04*", "0.05*", "0.06*")


# Print results
dss_a_org_man


# ------------------------------------------------------------------------------ #
# Run chi-squared test for dss_a_org_man
# ------------------------------------------------------------------------------ #

dss_a_org_man_xsq <- chisq.test(dss_a_org_man)


# Calculate percentage deviation to visualize 
dss_a_org_man_xsq_pd <- ((dss_a_org_man_xsq$observed - 
                            dss_a_org_man_xsq$expected)/
                           dss_a_org_man_xsq$expected) * 100 
dss_a_org_man_xsq_pd


# Visualize with association plot 
require(vcd)
assoc(dss_a_org_man, 
      main = "Method a in DSS: Original", 
      shade = TRUE, 
      legend = TRUE)


# Run Fisher's Exact test due to bin(s) less than 5 
dss_a_org_man_fex <- fisher.test(dss_a_org_man)
dss_a_org_man_fex


# ------------------------------------------------------------------------------ #
# Format data to matrix for pm_b_org_man (manual method b in PubMed)
# ------------------------------------------------------------------------------ #

pm_b_org_man <- matrix(as.numeric(c(abstract_2016_data[3,c(6:13)])), 
                        byrow = TRUE, 2, 4)


# Rename rows and columns 
rownames(pm_b_org_man) <- c("Common Analyses", "Atypical Analyses")
colnames(pm_b_org_man) <- c("0.03*", "0.04*", "0.05*", "0.06*")


# Print results
pm_b_org_man


# ------------------------------------------------------------------------------ #
# Run chi-squared test for pm_b_org_man
# ------------------------------------------------------------------------------ #

pm_b_org_man_xsq <- chisq.test(pm_b_org_man)


# Calculate percentage deviation to visualize 
pm_b_org_man_xsq_pd <- ((pm_b_org_man_xsq$observed - 
                            pm_b_org_man_xsq$expected)/
                           pm_b_org_man_xsq$expected) * 100 
pm_b_org_man_xsq_pd


# Visualize with association plot 
require(vcd)
assoc(pm_b_org_man, 
      main = "Method b in PubMed: Original", 
      shade = TRUE, 
      legend = TRUE)


# ------------------------------------------------------------------------------ #
# Format data to matrix for dss_b_org_man (manual method b supplement subset)
# ------------------------------------------------------------------------------ #

dss_b_org_man <- matrix(as.numeric(c(abstract_2016_data[4,c(6:13)])), 
                         byrow = TRUE, 2, 4)


# Rename rows and columns 
rownames(dss_b_org_man) <- c("Common Analyses", "Atypical Analyses")
colnames(dss_b_org_man) <- c("0.03*", "0.04*", "0.05*", "0.06*")


# Print results
dss_b_org_man


# ------------------------------------------------------------------------------ #
# Run chi-squared test for dss_b_org_man
# ------------------------------------------------------------------------------ #

dss_b_org_man_xsq <- chisq.test(dss_b_org_man)


# Calculate percentage deviation to visualize 
dss_b_org_man_xsq_pd <- ((dss_b_org_man_xsq$observed - 
                             dss_b_org_man_xsq$expected)/
                            dss_b_org_man_xsq$expected) * 100 
dss_b_org_man_xsq_pd


# Visualize with association plot 
require(vcd)
assoc(dss_b_org_man, 
      main = "Method b in DSS: Original", 
      shade = TRUE, 
      legend = TRUE)


# Run Fisher's Exact test due to bin(s) less than 5 
dss_b_org_man_fex <- fisher.test(dss_b_org_man)
dss_b_org_man_fex

