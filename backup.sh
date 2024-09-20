if [ -z "$1" ]; then
  echo "Provide a backup date/name like 240919"
else
  gsutil -m cp -r *.Rmd $WORKSPACE_BUCKET/phanson_backup/$1
fi
