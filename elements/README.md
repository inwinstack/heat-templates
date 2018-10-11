# Elements
This directory contains [diskimage-builder](https://github.com/openstack/diskimage-builder)
elements to build an image which contains kubernetes required to use `offline-stack.yml`.


An example ubuntu based image and uploaded to glance with the following:
```sh
$ virtualenv .env
$ .env/bin/activate
$ pip install diskimage-builder
$ export DIB_RELEASE=xenial
$ export ELEMENTS_PATH=elements
$ disk-image-create -a amd64 \
  -o ubuntu-16.04-server \
  -p python \
  kubernetes ansible vm ubuntu 
```