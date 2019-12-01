FROM rocker/tidyverse:3.4.4

ENV RGL_USE_NULL=TRUE

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libglu1-mesa-dev \ 
    libjpeg-dev \ 
    libmagick++-dev \ 
    && R -e "source('https://bioconductor.org/biocLite.R')" \
    && install2.r --error \
    --deps TRUE \
    rrBLUP \
    plyr \
    knitr \
    kableExtra
