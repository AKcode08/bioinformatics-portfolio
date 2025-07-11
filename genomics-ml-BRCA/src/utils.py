import pandas as pd
import matplotlib.pyplot as plt

def load_maf(filepath):
    """Load a MAF file and return a cleaned dataframe."""
    return pd.read_csv(filepath, sep='\t', comment='#', low_memory=False)

def save_plot(filename, step, title=None, dpi=300):
    """Save current matplotlib plot to standardized figures/ directory."""
    path = f"../figures/{step}-{filename}.png"
    plt.tight_layout()
    plt.savefig(path, dpi=dpi, bbox_inches='tight')
    if title:
        print(f"[✅] Saved: {title} → {path}")
    else:
        print(f"[✅] Saved: {path}")

def preprocess_maf(maf_df):
    """Preprocess MAF: drop silent mutations, null samples/genes, and keep SNPs/indels."""
    df = maf_df.copy()
    df = df[df['Variant_Classification'] != 'Silent']
    df = df[df['Tumor_Sample_Barcode'].notna()]
    df = df[df['Hugo_Symbol'].notna()]
    df = df[df['Variant_Type'].isin(['SNP', 'INS', 'DEL'])]
    return df

