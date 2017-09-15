From jupyter/datascience-notebook

COPY . /tmp/jupyter-environment
WORKDIR /tmp/jupyter-environment
RUN mkdir -p /tmp/jupyter-environment/notebooks

RUN pip install td-client pandas-td

EXPOSE 8888

CMD ["/tmp/jupyter-environment/run.sh"]
