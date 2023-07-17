FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get update && \
    apt-get install -y libpq-dev && \
    rm -rf /var/lib/apt/lists/*

USER jovyan
