From jupyter/datascience-notebook

COPY . /opt/jupyter-environment
WORKDIR /opt/jupyter-environment
RUN mkdir /opt/notebooks
RUN chmod 777 -R /opt/notebooks

EXPOSE 8888

CMD ["/opt/jupyter-environment/run.sh"]
