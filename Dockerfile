##
#  This docker file builds a dbt-athena image
#  
##

# Top level build args
ARG build_for=linux/amd64
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

##
# base image (abstract)
##
FROM --platform=$build_for python:3.11.2-slim-bullseye as base

# System setup
RUN apt-get update \
  && apt-get dist-upgrade -y \
  && apt-get install -y --no-install-recommends \
    git \
    ssh-client \
    software-properties-common \
    make \
    build-essential \
    ca-certificates \
    libpq-dev \
  && apt-get clean \
  && rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/*

# Env vars
ENV PYTHONIOENCODING=utf-8
ENV LANG=C.UTF-8

# Update python
RUN python -m pip install --upgrade pip setuptools wheel --no-cache-dir

# Set docker basics
WORKDIR /usr/app/dbt/


# Copy and install requirements 
COPY requirements-dev.txt .
RUN python -m pip install --no-cache-dir -r requirements-dev.txt
ENV AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

FROM base as hw-transforms
# Add hw_transforms to the docker image


