process run_enrichment {
    input:
    path cox_file

    output:
    path "results/enrichment_results.tsv"
    path "results/fig_enrichment_terms.png"

    script:
    """
    python3 bin/run_enrichment.py --input ${cox_file} --outdir results/
    """
}
