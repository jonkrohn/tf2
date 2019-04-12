# Get the details on the base image here: http://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook
# Ubuntu 18.04 (bionic) from 2018-04-26
# Note: tag [e7000ca1416d] is latest image as of 06/09/2018
# I've specified exact versions here. Users can modify at their own risk to get more recent versions of libraries.
# Note that this base image includes Python 3.6.5 as part of Miniconda 4.5.1

FROM jupyter/scipy-notebook:e7000ca1416d

MAINTAINER Jon Krohn <jon@untapt.com>

USER $NB_USER

# install the libraries
RUN \
	# Upgrade pip first
	pip install --upgrade pip==19.0.3 && \
	# TensorFlow 2.0
	pip install tensorflow==2.0.0-alpha0	
