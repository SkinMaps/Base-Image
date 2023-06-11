FROM python:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
  bzip2 \
  g++ \
  git \
  graphviz \
  libgl1-mesa-glx \
  libhdf5-dev \
  openmpi-bin \
  wget \
  python3-tk && \
  rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/

RUN pip install --no-cache-dir -r /tmp/requirements.txt && \
  rm /tmp/requirements.txt
