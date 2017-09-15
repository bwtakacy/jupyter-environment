From jupyter/datascience-notebook

COPY . /tmp/jupyter-environment
WORKDIR /tmp/jupyter-environment

RUN pip install td-client pandas-td

EXPOSE 8888

CMD ["/opt/jupyter-environment/run.sh"]
