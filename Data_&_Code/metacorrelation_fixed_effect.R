library(meta)

# Perform fixed-effect meta-analysis
str(Meta_Analysis_Data)
m.cor <- metacor(cor, n, data = Meta_Analysis_Data, studlab = Meta_Analysis_Data$Author,
                 comb.random = FALSE, overall = TRUE,  overall.hetstat = FALSE)

# Forest-plot meta-analysis results
forest(m.cor)

# Bias analyses
pcurve(m.cor)
funnel(m.cor, xlab = "Effect size")
m.cor.trimfill<-trimfill(m.cor, comb.random = FALSE, comb.fixed = TRUE, overall.hetstat = FALSE)
forest(m.cor.trimfill)
funnel(m.cor.trimfill,xlab = "R^2")




