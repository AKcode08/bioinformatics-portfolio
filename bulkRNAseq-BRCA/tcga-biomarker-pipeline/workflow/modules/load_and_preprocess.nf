process preprocess {
    input:
    path input_dir

    output:
    path "results/preprocessed_data.csv"

    script:
    """
    python3 ${baseDir}/bin/preprocess.py --input ${input_dir} --output results/preprocessed_data.csv
    """
}
