if [ -z "$1" ]; then
  echo "Provide a backup date/name like 240919"
else
  rm -rf bcftools htslib an_MESA* MESA_pilot* regions.txt rsids.txt tmp.txt freeze.9b.chr* phenotypes
  gsutil -m cp -r . $WORKSPACE_BUCKET/phanson_backup/$1
fi
