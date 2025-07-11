if (!require("TCGAbiolinks")) {
  BiocManager::install("TCGAbiolinks")
}
library(TCGAbiolinks)

# Download PAM50 subtype labels for TCGA-BRCA
pam50_df <- TCGAquery_subtype(tumor = "BRCA")

# The result contains columns `patient` (short barcode) and `BRCA_Subtype_PAM50`
head(pam50_df)

# Save to CSV file
write.csv(pam50_df[, c("patient", "BRCA_Subtype_PAM50")],
          file = "tcga_brca_subtypes.csv", row.names = FALSE)

