jupyter nbconvert --ClearOutputPreprocessor.enabled=True --ClearMetadataPreprocessor.enabled=True --to=markdown *.ipynb
sed -i'' 's/```R/```{r}/' *.md
for file in *.md; do mv "$file" "${file%.md}.Rmd"; done
