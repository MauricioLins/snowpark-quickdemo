#syntax=docker/dockerfile:experimental
FROM python:3.8

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

WORKDIR /workspace

ENTRYPOINT [ "/bin/bash" ]