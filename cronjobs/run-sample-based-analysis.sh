#!/bin/bash

PATH=/usr/bin:/bin:/usr/local/bin:/opt/conda/bin

papermill \
    /home/jupyter/notebooks/trellis_mvp_phase3_SampleBasedAnalysis.ipynb \
    gs://${TRELLIS_BUCKET}/analysis-notebooks/trellis_mvp_phase3_SampleBasedAnalysis.ipynb \
    -p bucket_info ${TRELLIS_BUCKET} \
    -p credential_info trellis-config.yaml
