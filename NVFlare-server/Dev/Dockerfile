ARG PYTORCH_IMAGE=nvcr.io/nvidia/pytorch:23.02-py3
FROM ${PYTORCH_IMAGE}

ARG NVF_VERSION=2.4
ENV NVF_BRANCH=${NVF_VERSION}

RUN python3 -m pip install -U pip
RUN python3 -m pip install -U setuptools
RUN python3 -m pip install nvflare
RUN python3 -m pip install tenseal
RUN python3 -m pip install mlflow
RUN python3 -m pip install matplotlib
RUN python3 -m pip install tensorflow
RUN python3 -m pip install pytorch-lightning
RUN python3 -m pip install verifier

RUN export MLFLOW_ENABLE_SYSTEM_METRICS_LOGGING=true

RUN apt-get update

WORKDIR /workspace/

#~14 min