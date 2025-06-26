# 🧬 Single-Cell RNA-seq Analysis of Human PBMCs

This project presents an end-to-end analysis of single-cell RNA sequencing (scRNA-seq) data from **Peripheral Blood Mononuclear Cells (PBMCs)** using the [10X Genomics PBMC 3k dataset](https://www.10xgenomics.com/resources/datasets/3-k-pbmc-10-k-v3-chemistry-3-1-standard-3-0-0). The goal is to identify distinct immune cell populations, explore cellular heterogeneity, and generate reproducible figures and metrics for downstream interpretation.

---

## 📁 Project Structure

```
scRNAseq-PBMC/
├── data/                # Raw and filtered data (not pushed to GitHub if large)
├── figures/             # All figures generated during analysis
├── results/             # Output tables (e.g., marker genes, cell type counts)
├── notebooks/
│   └── scRNAseq_PBMC_analysis_report.ipynb  # Main report notebook
├── README.md            # This file
├── .gitignore           # Excludes large or unnecessary files
├── environment.yml      # Conda environment for reproducibility (optional)
```

---

## 🧪 Methods Overview

This analysis was performed using Python and the [Scanpy](https://scanpy.readthedocs.io/en/stable/) package. Key steps include:

- **Data loading** from 10X `.mtx` format
- **Quality control** using gene count, total counts, and mitochondrial gene percentage
- **Normalization** and **log transformation**
- **Dimensionality reduction** via PCA and UMAP
- **Graph-based clustering** (Leiden algorithm)
- **Cell type annotation** using marker genes
- **Visualization** with `matplotlib` and `seaborn`

---

## 📊 Key Figures

| Figure # | Description                            | Filename                                          |
|----------|----------------------------------------|--------------------------------------------------|
| 1        | Violin plot of QC metrics              | `scRNAseq_Fig01_violin_qc_metrics.png`           |
| 2        | PCA variance ratio (log scale)         | `scRNAseq_Fig02_pca_variance_ratio_log.png`      |
| 3        | UMAP colored by QC metrics             | `scRNAseq_Fig03_umap_qc_metrics.png`             |
| 4        | Heatmap of top 20 marker genes         | `scRNAseq_Fig04_heatmap_top20_marker_genes.png`  |
| 5        | Ranked marker genes (top 5)            | `scRNAseq_Fig05_ranked_genes_groups_top5.png`    |
| 6        | UMAP of annotated cell types           | `scRNAseq_Fig06_umap_cell_type_annotation.png`   |
| 7        | Bar plot of cell type proportions      | `scRNAseq_Fig07_barplot_cell_type_proportions.png` |

---

## 📁 Outputs

- 📄 `top5_marker_genes_long_format.csv`: Table of top marker genes per cluster annotated with cell type and percentage
- 📊 All figures saved in `figures/` for use in publications or presentations

---

## 🧠 Key Insights

- Clear separation of immune cell types via UMAP
- Marker genes such as **CD3D**, **MS4A1**, and **NKG7** were critical in assigning T cells, B cells, and NK cells, respectively
- Cell proportions align with expected immune composition of PBMCs

---

## 🧰 Tools & Dependencies

- Python 3.10+
- Scanpy
- Matplotlib
- Seaborn
- Pandas
- Numpy

To install all dependencies:

```bash
conda env create -f environment.yml
conda activate scrnaseq-pbmc
```

---

## 📌 How to Reproduce

1. Clone the repository  
   ```bash
   git clone https://github.com/AKcode08/scRNAseq-PBMC.git
   cd scRNAseq-PBMC
   ```

2. (Optional) Set up the conda environment  
3. Open and run the notebook  
   ```bash
   jupyter notebook notebooks/scRNAseq_PBMC_analysis_report.ipynb
   ```

---

## 📚 References

- [Scanpy Documentation](https://scanpy.readthedocs.io)
- [10X Genomics PBMC Dataset](https://www.10xgenomics.com/resources/datasets)
- Wolf et al. (2018) *SCANPY: large-scale single-cell gene expression data analysis*. Genome Biology.

---

## 👤 Author

**Aman Kumar**  
📧 amanaastha.ak@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/aman-kumar-6218a0165/)

---

## 📃 License

MIT License 
