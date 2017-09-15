From jupyter/datascience-notebook

COPY . /opt/jupyter-environment
WORKDIR /opt/jupyter-environment
#RUN mkdir -p /tmp/notebooks
#RUN chmod 777 -R /tmp/notebooks

RUN useradd -p `perl -e "print(crypt('password', 'ab'));"` bwtakacy
RUN useradd -p `perl -e "print(crypt('password', 'ab'));"` user01
RUN mkdir -p /home/bwtakacy/notebooks
RUN mkdir -p /home/user01/notebooks
RUN chown bwtakacy /home/bwtakacy/notebooks
RUN chown user01 /home/user01/notebooks

#RUN pip install jupyterlab
RUN pip install jupyterhub
RUN npm install -g configurable-http-proxy

EXPOSE 8888

CMD ["/opt/jupyter-environment/run.sh"]
