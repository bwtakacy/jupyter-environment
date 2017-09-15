From jupyter/datascience-notebook

COPY . /opt/jupyter-environment
WORKDIR /opt/jupyter-environment
RUN mkdir -p /tmp/notebooks
RUN chmod 777 -R /tmp/notebooks

COPY profile_default /tmp
RUN pip install td-client pandas-td

EXPOSE 8888

CMD ["/opt/jupyter-environment/run.sh"]
