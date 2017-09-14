From jupyter/datascience-notebook

COPY . /opt/jupyter-environment
WORKDIR /opt/jupyter-environment

EXPOSE 8888

CMD ["/opt/jupyter-environment/run.sh"]
