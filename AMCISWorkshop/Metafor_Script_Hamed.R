# Load "metafor" library
library(metafor)


# Read CSV data file. 
  ### Remember that corrections for unreliability, etc, should have been included in CSV file ###
Examples <- read.csv("/Users/hamed/Box Sync/Meta-Analysis Workshop/Workshop/Example_DataFile.csv")
View(Examples)


# Do the Fisher's Z transformation on Effect sizes
Examples <- escalc(measure = "ZCOR", ri=r, ni=n, data = Examples, append = TRUE)
View(Examples)


# Run Random-Effects Meta-Analysis using REML method as default
res <- rma(yi, vi, data = Examples)
res

# Transofmr the outputs back to correlations (from Z-transformed values)
predict(res, digits = 3, transf = transf.ztor)


# Moderation Analysis:
  ## Moderation Analysis using Categorical Moderators:
rma(yi, vi, mods = ~ factor(Adoption), data = Examples)
rma(yi, vi, mods = ~ factor(Gender), data = Examples)
rma(yi, vi, mods = ~ factor(Gender) + factor(Adoption), data = Examples)


  ## Moderation Analysis using Continuous Moderators
rma(yi, vi, mods = ~ Female_Perc, data = Examples)


  ## Moderation Analysis using both continuous and categorical moderators
rma(yi, vi, mods = ~ Female_Perc + factor(Adoption), data = Examples)


#Plots:
# Generates the Forest Plot for the Z-transformed effect sizes in your meta-analysis
forest(res)


# Generates the Funnel Plot for the Z-transformed effect sizes in your meta-analysis
funnel(res)


# Optional: This generates confidence interval values for heterogenity indices.
confint(res)


