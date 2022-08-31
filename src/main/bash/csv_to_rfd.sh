#!/bin/bash

# Transform csv, ../resources/be/vlaanderen/omgeving/data/id/conceptscheme/matrix/matrix.csv
# to jsonld, /tmp/matrix.jsonld
Rscript ../R/csv_to_json.R

# Make formatted jsonld and turtle
riot --formatted=TURTLE /tmp/matrix.jsonld   > '../resources/be/vlaanderen/omgeving/data/id/conceptscheme/matrix/matrix.ttl'
riot --formatted=JSONLD '../resources/be/vlaanderen/omgeving/data/id/conceptscheme/matrix/matrix.ttl'   > '../resources/be/vlaanderen/omgeving/data/id/conceptscheme/matrix/matrix.jsonld' 

