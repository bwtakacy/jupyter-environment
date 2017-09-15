From jupyter/datascience-notebook

COPY . /opt/jupyter-environment
WORKDIR /opt/jupyter-environment
#RUN mkdir -p /tmp/notebooks
#RUN chmod 777 -R /tmp/notebooks

RUN useradd -m -d /home/bwtakacy -s /bin/bash bwtakacy \
 && echo "bwtakacy:password" | chpasswd \
  && mkdir /home/bwtakacy/notebooks \
  && chown bwtakacy /home/bwtakacy/notebooks
RUN useradd -m -d /home/user01 -s /bin/bash user01 \
 && echo "user01:password" | chpasswd \
  && mkdir /home/user01/notebooks \
  && chown user01 /home/user01/notebooks

#RUN pip install jupyterlab
RUN pip install jupyterhub
RUN npm install -g configurable-http-proxy

EXPOSE 8888

CMD ["/opt/jupyter-environment/run.sh"]
