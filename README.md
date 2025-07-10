Note: due to the data being restricted-access, this code will only work for you if you have access to the [gxpa-lcms_mediation Terra workspace](https://app.terra.bio/#workspaces/mgb-KEW-K01-GCP/gxpa-lcms-mediation/analyses).

This code will only work on Linux or Mac, because it uses `parallel::mclapply`.

# GxPA LC-MS
TODO: project description

# Notes:
* Running locally, you need to install the [GCloud CLI](https://cloud.google.com/sdk/docs/install) and do `gcloud auth login`. The scripts rely on pulling data from the Terra workspace bucket.
* Skip `00a_export_data_picsure.Rmd`. It's just there for provenance. The token used to download the PIC-SURE data is probably expired now.
* If running locally, skip `01b_genotype_preprocessing.Rmd`. (It depends on the Terra-only `tnu drs access` command to pull particular variants from big VCF files without having to download the whole file. Even on Terra, you may wish to skip it because it takes a while and the result is already present in the Terra bucket for use by later scripts.)
* After making commits to GitHub, run `push_to_terra.sh` to copy the scripts from GitHub to Terra.
