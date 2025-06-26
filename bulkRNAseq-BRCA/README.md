# 🧬 TCGA Breast Cancer Biomarker Discovery (`bulkRNAseq-BRCA`)

This project explores the discovery of prognostic biomarkers in breast cancer using RNA-seq and clinical data from The Cancer Genome Atlas (TCGA-BRCA). The pipeline includes statistical analysis, biological enrichment, and an ongoing automation workflow using **Nextflow DSL2**.

---

## 📁 Project Structure

```
bulkRNAseq-BRCA/
├── data/                        # Raw input files (e.g., expression, clinical)
├── figures/                     # Generated plots (KM, volcano, enrichment)
├── results/                     # Output files (tables, plots, pathway annotations)
├── notebooks/                   # Jupyter notebooks for each analysis step
│   ├── 01_load_and_preprocess.ipynb
│   ├── 02_cox_model_analysis.ipynb
│   └── 03_enrichment_Analysis.ipynb
├── tcga-biomarker-pipeline/     # Nextflow automation (in progress)
│   ├── bin/                     # Python scripts for each step
│   ├── workflow/               # Nextflow configs and modules
│   └── ...
├── Final_Report.ipynb          # Integrated project summary report
├── README.md                   # This file
```

---

## 🔬 Pipeline Summary

### 📌 Steps:
1. **Preprocessing**: Clean and integrate RNA-seq and clinical data  
2. **Survival Modeling**: Cox regression + Kaplan-Meier plots  
3. **Biological Enrichment**: GO/Reactome analysis of significant genes  
4. **Automation**: Workflow in `tcga-biomarker-pipeline` using **Nextflow DSL2**

---

## 🚀 Run the Automated Pipeline

> ⚙️ The automation is in progress, but core processes are working and testable.

```bash
cd tcga-biomarker-pipeline
nextflow run workflow/main.nf
```

Ensure you have input data in the `data/` folder before running.

---

## 📈 Sample Outputs

-  Kaplan-Meier survival plots for top genes
- Volcano plot of Cox regression significance
- GO & Reactome enrichment barplots
- Final integrated report in Jupyter Notebook (`Final_Report.ipynb`)

---

## 🧪 Status

- All core analysis scripts complete and tested
- Nextflow automation partially implemented

---

## 📚 Developed By

**Aman Kumar**  
> Part of a bioinformatics portfolio focused on cancer genomics, RNA-seq, and reproducible pipelines.

---

## 📎 License

MIT License
