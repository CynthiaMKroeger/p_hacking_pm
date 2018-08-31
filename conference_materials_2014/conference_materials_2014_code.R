# ------------------------------------------------------------------------------ #
# Code for: Conference Materials 2014
# By: Cynthia M. Kroeger 
# ------------------------------------------------------------------------------ #

# Import and read dataset 
library(readr)
abstract_2014_data <- read_csv("conference_materials_2014_data.csv")
View(abstract_2014_data)


# ------------------------------------------------------------------------------ #
# Format the data to matrix
# ------------------------------------------------------------------------------ #

pm_a_org_man <- matrix(as.numeric(c(abstract_2014_data[1,c(6:13)])), 
                       byrow = TRUE, 2, 4)


# Rename rows and columns 
rownames(pm_a_org_man) <- c("Common Analyses", "Atypical Analyses")
colnames(pm_a_org_man) <- c("0.03*", "0.04*", "0.05*", "0.06*")


# Print results
pm_a_org_man


# ------------------------------------------------------------------------------ #
# Run chi-squared test
# ------------------------------------------------------------------------------ #

pm_a_org_man_xsq <- chisq.test(pm_a_org_man)


# Calculate percentage deviation to visualize 
pm_a_org_man_xsq_pd <- ((pm_a_org_man_xsq$observed - 
                           pm_a_org_man_xsq$expected)/
                          pm_a_org_man_xsq$expected) * 100 
pm_a_org_man_xsq_pd


# Visualize with association plot 
require(vcd)
assoc(pm_a_org_man, 
      main = "P-values from Common vs. Atypical Statistical Analyses", 
      shade = TRUE, 
      legend = TRUE)

