#!/bin/sh

set -e

cat cloudbuild.yaml.example | sed s/{{REPOSITORY}}/${PROJECT}/ > cloudbuild.yaml

gcloud builds submit . --project=${PROJECT}
