#!/bin/bash

#jupyter lab --config='/opt/jupyter-environment/jupyter_notebook_config.py'
jupyterhub -f /opt/jupyter-environment/jupyterhub_config.py --no-ssl
