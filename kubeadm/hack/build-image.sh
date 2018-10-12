#!/bin/bash
#
# Build cloud images for Heat Kubernetes.
#

set -eu

if [ ! -f ".env/" ];
  virtualenv .env
fi

.env/bin/activate
pip install diskimage-builder

git clone https://git.openstack.org/openstack/tripleo-image-elements
git clone https://github.com/kairen/heat-agents

export DIB_RELEASE=xenial
export ELEMENTS_PATH=tripleo-image-elements/elements:heat-agents

# build image using diskimage-builder
disk-image-create vm \
  ubuntu \
  heat-config \
  os-collect-config \
  os-refresh-config \
  os-apply-config \
  heat-config-cfn-init \
  heat-config-script \
  -a amd64 -o ubuntu-16.04-server