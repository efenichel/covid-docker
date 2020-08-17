FROM rocker/geospatial:3.6.3

RUN cd /tmp \
    && curl -sS "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" > awscli2.zip \
    && unzip -q awscli2.zip \
    && ./aws/install

RUN install2.r --error \
    --deps TRUE \
    furrr \
    pacman \
    tictoc
