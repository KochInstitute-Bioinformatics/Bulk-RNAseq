# Bulk-RNAseq data analysis

This repository contains scripts and functions for analyzing any RNA-Seq dataset from Human and Mouse, including differential expression analysis, PCA, and data visualization. The pipeline is designed to facilitate the processing and analysis of RNA-Seq data, starting from importing quantification results to generating figures and statistical analysis. 
It assumes that you have already run the nf-core pipeline and pre-processed the FASTQ files.

## Overview

The analysis pipeline includes the following components:

1. **Data Preparation**: Downloading and preparing annotation files.

2. **RNA-Seq Data Import**: Importing and processing RNA-Seq quantification data.

3. **Quality Control**: Generating boxplots to check the quality of the data.

4. **Data Annotation and Filtering**: Annotating and filtering the gene-level data.

5. **Differential Expression Analysis**: Performing differential expression analysis and generating results for simple model (~Condition) or complex model with batch effect (~Batch + Condition).

6. **Principal Component Analysis (PCA)**: Performing PCA for exploratory data analysis.

7. **Volcano plot**.

8. **Upset plot**.

9. **Over-representation analysis (ORA)**.

10. **g:Profiler**.

11. **Single sample Gene Set Enrichment Analysis (ssGSEA)**.

12. **GSEA - Functional Class Sorting**.

## docker image for R environment available here:

docker://bumproo/bulk_r441

Bash script singularity_Rstudio_bulkRNAseq.sh will initialize singularity Rstudio connection.
