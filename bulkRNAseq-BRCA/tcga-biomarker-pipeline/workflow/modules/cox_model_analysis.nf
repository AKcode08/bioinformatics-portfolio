process run_cox {
    input:
    path input_data

    output:
    path "results/cox_results.csv"

    script:
    """
    python3 bin/run_cox.py --input ${input_data} --output results/cox_results.csv
    """
}
