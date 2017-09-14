From jupyter/datascience-notebook

COPY . /opt/jupyter-environment
WORKDIR /opt/jupyter-environment
RUN mkdir -p /tmp/notebooks
RUN chmod 777 -R /tmp/notebooks

EXPOSE 8888

CMD ["/opt/jupyter-environment/run.sh"]
