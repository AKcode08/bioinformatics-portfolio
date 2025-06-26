#!/usr/bin/env nextflow

include { preprocess } from './modules/load_and_preprocess'
include { run_cox } from './modules/cox_model_analysis'
include { run_enrichment } from './modules/enrichment_analysis'

workflow {
    preprocessed_data = preprocess(file(params.input))
    cox_results = run_cox(preprocessed_data)
    run_enrichment(cox_results)
}
