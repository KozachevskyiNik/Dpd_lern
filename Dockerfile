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
    wget\
    zsh \
    build-essential \
    ca-certificates \
    libpq-dev \
  && apt-get clean \
  && rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/*
# powerline fonts for zsh agnoster theme
RUN git clone https://github.com/powerline/fonts.git\
&& cd fonts\
&& ./install.sh\
&& cd .. && rm -rf fonts

# oh-my-zsh & plugins
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true \
&& zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'\
&& zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'

########################################################################################################################
#### set agnoster as theme, this came from https://gist.github.com/corentinbettiol/21a6d4e942a0ee58d51acb7996697a88
#### in vscode settings for devcontainer (not for User or Workspace), Search for terminal.integrated.fontFamily value, and set it to "Roboto Mono for Powerline" (or any of those: https://github.com/powerline/fonts#font-families font families).
# save current zshrc
RUN mv ~/.zshrc ~/.zshrc.bak

RUN  sh -c "$(wget -O- https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)" 
# remove newly created zshrc
RUN rm -f ~/.zshrc\
# restore saved zshrc
&& mv ~/.zshrc.bak ~/.zshrc\
# update theme
&& sed -i '/^ZSH_THEME/c\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc 


# Env vars
ENV PYTHONIOENCODING=utf-8
ENV LANG=C.UTF-8

# Update python
RUN python -m pip install --upgrade pip setuptools wheel --no-cache-dir

# Set docker basics
WORKDIR /app/dbt/

# build param stage {dev, prod}
ARG BUILD_STAGE="dev"

# Copy and install requirements
COPY requirements-${BUILD_STAGE}.txt .
RUN python -m pip install --no-cache-dir -r requirements-${BUILD_STAGE}.txt
ENV AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

FROM base as hw-transforms
# Add hw_transforms to the docker image
COPY hw_transforms ./hw_transforms
RUN ["dbt", "deps", "--project-dir", "hw_transforms"]
