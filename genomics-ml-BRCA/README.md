# Genomics-ML-BRCA: Subtype Classification Using Somatic Mutations

This project investigates the feasibility of predicting breast cancer molecular subtypes using only somatic mutation data. Using The Cancer Genome Atlas (TCGA) BRCA cohort, we processed mutation profiles to explore tumor mutational burden (TMB), mutation types, driver gene prevalence, biological pathway enrichment, and subtype classification using machine learning.

The primary goal was to understand the limits and utility of sparse mutational features in breast cancer subtyping — especially in the absence of gene expression or copy number data.

---

## Project Summary

| **Aspect**             | **Details**                                                                 |
|------------------------|------------------------------------------------------------------------------|
| **Data**               | TCGA BRCA MAF files + PAM50 subtype annotations                             |
| **Language**           | Python                                                                      |
| **Tools**              | `pandas`, `matplotlib`, `seaborn`, `scikit-learn`, `gseapy`                 |
| **Model**              | Random Forest Classifier                                                    |
| **Key Concepts**       | Tumor Mutational Burden (TMB), OncoKB Driver Genes, GO/KEGG Enrichment      |

---

## Pipeline Overview

### 1. Mutation Analysis
- Parsed and cleaned sample-level MAF files
- Computed tumor mutational burden and visualized top 30 samples
- Summarized mutation types across all samples
- Identified top recurrent mutations and filtered for known oncogenic drivers using OncoKB

### 2. Pathway Enrichment
- Used GSEApy to perform GO and KEGG enrichment on the most frequently mutated driver genes
- Highlighted pathways involving phosphorylation, cell adhesion, and viral signaling mechanisms

### 3. Machine Learning for Subtype Classification
- Created a binary gene mutation matrix across samples
- Matched sample barcodes with PAM50 subtype labels
- Trained a Random Forest classifier with class weights to handle imbalance
- Evaluated classification performance using precision, recall, F1-score, and support metrics
- Visualized top 20 features (genes) driving subtype predictions

---

## Key Insights

- Mutation data alone provides moderate predictive signal for BRCA subtypes, especially LumA vs. Basal.
- Expression-heavy subtypes like LumB and Her2 were difficult to distinguish from mutation profiles alone.
- Frequent driver genes (e.g., TP53, PIK3CA, CDH1) consistently appeared as high-importance features.
- Enriched pathways reflect canonical cancer biology mechanisms such as protein phosphorylation and ECM interaction.

---

## Limitations

- Subtype classification from mutations alone suffers from low precision for Her2, LumB, and Normal classes.
- Class imbalance and small sample sizes limit generalization performance.
- Mutation encoding was binary; more granular features like variant allele frequency (VAF) or functional impact were not used.
- No expression or multi-omics integration — subtypes like PAM50 are primarily expression-defined.

---

## Future Directions

- Integrate RNA-seq or CNV data to boost subtype prediction accuracy.
- Test other models (XGBoost, logistic regression with regularization, or neural nets) for performance comparison.
- Expand to other cancer types in TCGA or integrate pan-cancer mutation signatures.
- Explore model interpretation via SHAP or LIME to further dissect gene contributions.

---

## Repository Contents

```
genomics-ml-BRCA/
│
├── data/                   # Sample-level MAF files and subtype labels
├── figures/                # All figures generated across the pipeline
├── results/                # Output tables, classification reports, etc.
├── notebooks/
│   ├── 01_mutation_analysis.ipynb
│   ├── 02_ml_classification.ipynb
│   └── final_brca_report_corrected.ipynb  # Clean, code-free research summary
├── utils.py                # Custom functions used across notebooks
├── environment.yml         # Conda environment file
├── README.md               # This file
```

---

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/genomics-ml-BRCA.git
   cd genomics-ml-BRCA
   ```

2. Create the conda environment:
   ```bash
   conda env create -f environment.yml
   conda activate genomics-ml-BRCA
   ```

3. Launch Jupyter Notebook:
   ```bash
   jupyter notebook
   ```

---

## References & Tools

- TCGA-BRCA: https://portal.gdc.cancer.gov/projects/TCGA-BRCA  
- OncoKB: https://www.oncokb.org/  
- GSEApy: https://gseapy.readthedocs.io/  
- scikit-learn: https://scikit-learn.org/  
- PAM50 subtype info: Parker et al., J Clin Oncol. 2009

---

## Author

**Aman Kumar**  
MSc Bioinformatics (Candidate), University of Birmingham Dubai  
📧 amanaastha.ak@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/aman-kumar-6218a0165/)
