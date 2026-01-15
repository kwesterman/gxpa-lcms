git clone https://github.com/kwesterman/gxpa-lcms.git
cd gxpa-lcms
gcloud storage cp *.Rmd   gs://fc-secure-4a392455-5587-4d6f-b8bd-01a1f834ae63/notebooks/
gcloud storage cp *.ipynb gs://fc-secure-4a392455-5587-4d6f-b8bd-01a1f834ae63/notebooks/
gcloud storage cp variants_of_interest.csv geno_files_drs.csv gs://fc-secure-4a392455-5587-4d6f-b8bd-01a1f834ae63/
cd ..
rm -rf gxpa-lcms
