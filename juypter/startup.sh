#! /bin/bash

/home/jack/.local/share/virtualenvs/datagpu-WouzjJ5V/bin/python3 \
    -m \
    jupyter notebook \
    --no-browser \
    --NotebookApp.allow_origin='*' \
    --ip='172.23.0.10' \
    --port=8080 \
    --NotebookApp.token='1234567890' \
    --NotebookApp.password='1234567890'