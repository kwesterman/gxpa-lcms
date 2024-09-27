if [ -z "$1" ]; then
  echo "Provide a backup date/name like 240919"
else
  gsutil -m cp -r *.Rmd *.sh .git .gitignore gs://fc-secure-4a392455-5587-4d6f-b8bd-01a1f834ae63/phanson_backup/$1
fi
