From jupyter/datascience-notebook

COPY . /opt/jupyter-environment
WORKDIR /opt/jupyter-environment
RUN mkdir -p /tmp/notebooks
RUN chmod 777 -R /tmp/notebooks

#RUN pip install jupyterlab
RUN pip install jupyterhub
RUN npm install -g configurable-http-proxy
RUN pip install notebook

EXPOSE 8888

CMD ["/opt/jupyter-environment/run.sh"]
