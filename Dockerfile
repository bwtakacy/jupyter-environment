From jupyter/datascience-notebook

COPY . /tmp/jupyter-environment
WORKDIR /tmp/jupyter-environment
RUN mkdir -p /tmp/notebooks
RUN chmod 777 /tmp/notebooks
RUN chmod 777 /tmp/jupyter-environment

RUN pip install td-client pandas-td

EXPOSE 8888

CMD ["/tmp/jupyter-environment/run.sh"]
