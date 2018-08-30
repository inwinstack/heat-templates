#!/bin/bash
#
# Build cloud images for Heat Kubernetes.
#

set -eu

export DIB_RELEASE=xenial
# export ELEMENTS_PATH=./elements

# build image using diskimage-builder
disk-image-create -a amd64 -o ubuntu-16.04 -p python vm ubuntu
