#!/bin/bash

# Transform csv, ../resources/be/vlaanderen/omgeving/data/id/conceptscheme/matrix/matrix.csv
# to jsonld, /tmp/matrix.jsonld
Rscript ../R/csv_to_json.R
