FROM jupyter/base-notebook
# Use root user 
USER root
# install firebird client
RUN sudo apt-get update
RUN sudo apt-get -y install libfbclient2
# install python packages
RUN pip install -r requirements.txt

