cd /home/jack/Documents/Workspace/datadev/datagpu

pipenv shell

jupyter notebook \
    --no-browser \
    --NotebookApp.allow_origin='*' \
    --ip='172.23.0.10' \
    --port=8080 \
    --NotebookApp.token='' \
    --NotebookApp.password=''