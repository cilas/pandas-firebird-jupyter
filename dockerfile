FROM jupyter/base-notebook
USER root
# ENV PYTHONUNBUFFERED 1
# ENV PYTHONPATH $PYTHONPATH:/usr/src/app

# WORKDIR /usr/src/app

# COPY requirements.txt /usr/src/app/

# RUN apk add --no-cache make
# RUN apk add --no-cache --virtual .build-deps build-base gcc

RUN pip install fdb
RUN sudo apt install libfbclient2
# RUN apk del .build-deps \
#     && rm -rf /var/cache/apk/* \
#     && rm -rf /root/.cache
# RUN sudo apt update
# RUN sudo apt-get install libfbclient2-dbg


