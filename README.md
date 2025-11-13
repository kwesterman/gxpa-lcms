# Dependencies

These scripts depend on pulling data from Terra workspace. To run all code, you will need access to the following workspaces:

* [`bdcmsg22/QC_metabolomics`](https://app.terra.bio/#workspaces/bdcmsg22/QC_metabolomics)
* [`mgb-KEW-K01-GCP/gxpa-lcms-mediation`](https://app.terra.bio/#workspaces/mgb-KEW-K01-GCP/gxpa-lcms-mediation)
* [`manning-lab-2024-2025/manning-lab-2024-2025-topmed-analysis`](https://app.terra.bio/#workspaces/manning-lab-2024-2025/manning-lab-2024-2025-topmed-analysis)

In addition, script `01b` will only work if run in Terra, as it depends on the `tnu` command for fast random access of the TOPMed genotype data.

If you only want to run the analysis scripts (`02*` and beyond), you only need access to [`mgb-KEW-K01-GCP/gxpa-lcms-mediation`](https://app.terra.bio/#workspaces/mgb-KEW-K01-GCP/gxpa-lcms-mediation).

This code will only work on Linux or Mac (not Windows), because it uses `parallel::mcMap/mclapply`, but could be made compatible with some modification.

# GxPA LC-MS
The overall goal of this project is to identify LC-MS metabolomics mediators of a previously-identified gene-physical activity interaction at the *KCNK10* locus., using MESA as the primary dataset.

RMarkdown notebooks are numbered in the order in which they should be run.

# Notes:
* Notebook `00a` is soon to be deleted. Its purpose is as a record of where a couple of the phenotype files came from, but these phenotype variables are not actually used.
* Notebook `00b` is soon to be deleted. It is used to get MESA phenotype data from PIC-SURE. This will soon be replaced with a more reproducible script which uses the PIC-SURE R API instead of the web UI.
* Running locally, you need to install the [GCloud CLI](https://cloud.google.com/sdk/docs/install) and do `gcloud auth login`. The scripts rely on pulling data from the Terra workspace bucket.
* After making commits to GitHub, `push_to_terra.sh` and `push_to_dbx.sh` are used to copy the scripts from GitHub to Terra or DropBox.
