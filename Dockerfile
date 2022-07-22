#syntax=docker/dockerfile:experimental
FROM python:3.8

ARG WORKDIR=/root/project
ARG ENV_DIR=/root/environment
ARG ENV_NAME=.env
ENV PATH $ENV_DIR/$ENV_NAME/bin:$PATH

RUN apt-get update --fix-missing && \
    apt-get install -y --no-install-recommends git wget nano \
    openssh-client \
    vim && \
    apt-get clean 

RUN apt-get update --fix-missing && \
    apt-get -y install build-essential

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

RUN mkdir $WORKDIR
COPY . $WORKDIR

WORKDIR $WORKDIR
ENTRYPOINT [ "/bin/bash" ]