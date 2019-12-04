#!/bin/sh

set -e

cat cloudbuild.yaml.example | sed s/{{REPOSITORY}}/${REPOSITORY}/ > cloudbuild.yaml

gcloud builds submit .
