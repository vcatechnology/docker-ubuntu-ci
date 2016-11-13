# Ubuntu Docker CI Image

[![](https://images.microbadger.com/badges/image/vcatechnology/ubuntu-ci.svg)](http://microbadger.com/images/vcatechnology/ubuntu-ci "Image Layers") [![](https://images.microbadger.com/badges/version/vcatechnology/ubuntu-ci.svg)](http://microbadger.com/images/vcatechnology/ubuntu-ci "Image Version") [![](https://images.microbadger.com/badges/license/vcatechnology/ubuntu-ci.svg)](https://microbadger.com/images/vcatechnology/ubuntu-ci "Image License")  [![](https://images.microbadger.com/badges/commit/vcatechnology/ubuntu-ci.svg)](https://github.com/vcatechnology/docker-ubuntu-ci "Image Commit")

This container derives from
[vcatechnology/ubuntu](https://hub.docker.com/r/vcatechnology/ubuntu) so that the
image has the latest [Ubuntu](https://www.ubuntu.com/) packages. It then
installs the some useful development packages.

Available on Docker Hub as [vcatechnology/ubuntu-ci](https://hub.docker.com/r/vcatechnology/ubuntu-ci/)

## `sudo`

The Docker image creates a user account 'build-server' with `sudo` permissions. The `sudo` password
is disabled to allow non-interactive sudo calls.
