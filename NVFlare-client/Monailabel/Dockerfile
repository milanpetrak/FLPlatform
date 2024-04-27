ARG MONAILABEL_IMAGE=projectmonai/monailabel:latest
FROM ${MONAILABEL_IMAGE}

ARG NVF_VERSION=2.4
ENV NVF_BRANCH=${NVF_VERSION}

#RUN apt-get update
#RUN apt install python3-dev -y

#
#RUN python3 -m pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113
#RUN python3 -c "import torch; print(torch.cuda.is_available())"

RUN apt-get update

RUN python3 -m pip install --upgrade pip setuptools wheel
RUN python3 -m pip install nvflare
RUN python3 -m pip install tenseal
RUN python3 -m pip install tensorboard
RUN python3 -m pip install mlflow==2.11.*
RUN python3 -m pip install matplotlib

WORKDIR /opt/

RUN git clone https://github.com/NVIDIA/NVFlare

ENV MLFLOW_ENABLE_SYSTEM_METRICS_LOGGING=true
ENV PYTHONPATH=/opt/NVFlare

WORKDIR /workspace/
