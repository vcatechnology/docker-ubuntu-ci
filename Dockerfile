FROM vcatechnology/ubuntu:16.10
MAINTAINER VCA Technology <developers@vcatechnology.com>

RUN echo 'APT::Update::Post-Invoke-Success {"touch /var/lib/apt/periodic/update-success-stamp 2>/dev/null || true";};' > /etc/apt/apt.conf.d/15update-stamp

# Install useful packages
RUN apt-get install -y \
  python \
  git \
  openssh-client \
  sudo
