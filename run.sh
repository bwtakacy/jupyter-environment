#!/bin/bash

mkdir -p /opt/notebooks
chmod 777 -R /opt/notebooks
jupyter notebook --config='/opt/jupyter-environment/jupyter_notebook_config.py'
