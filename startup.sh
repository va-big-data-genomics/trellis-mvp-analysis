# NOTE: This script is embedded in Terraform deployment
#! /bin/bash

# Copy notebook bash scripts from GCS to instance
gsutil cp -r gs://${TRELLIS_BUCKET}/analysis-notebooks/source/cronjobs/* /home/jupyter/cronjobs/

# Set Trellis bucket as environment variable so it can be used by the bash scripts that run the notebooks
export TRELLIS_BUCKET=${TRELLIS_BUCKET}

# Add notebook cron jobs to crontab
crontab /home/jupyter/cronjobs/notebook-crons
