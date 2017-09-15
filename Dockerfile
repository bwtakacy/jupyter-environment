From jupyter/datascience-notebook

COPY . /tmp/jupyter-environment
WORKDIR /tmp/jupyter-environment
RUN mkdir -p /tmp/notebooks
RUN chmod 777 /tmp/notebooks

RUN pip install td-client pandas-td
RUN pip install RISE
RUN jupyter-nbextension install rise --py --sys-prefix
RUN jupyter-nbextension enable rise --py --sys-prefix

EXPOSE 8888

CMD ["/tmp/jupyter-environment/run.sh"]
