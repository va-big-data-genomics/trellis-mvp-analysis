#!/bin/bash

source /home/jupyter/.bashrc

papermill \
    /home/jupyter/notebooks/trellis_mvp_phase3_JobBasedAnalysis.ipynb \
    gs://${TRELLIS_BUCKET}/analysis-notebooks/completed/trellis_mvp_phase3_JobBasedAnalysis.ipynb \
    -p bucket_info ${TRELLIS_BUCKET} \
    -p credential_info trellis-config.yaml
