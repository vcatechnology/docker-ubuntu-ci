FROM vcatechnology/ubuntu:16.10
MAINTAINER VCA Technology <developers@vcatechnology.com>

RUN echo 'APT::Update::Post-Invoke-Success {"touch /var/lib/apt/periodic/update-success-stamp 2>/dev/null || true";};' > /etc/apt/apt.conf.d/15update-stamp

# Install useful packages
RUN apt-get install -y \
  python \
  git \
  openssh-client \
  sudo

# create a buildslave user with sudo permissions & no password
RUN useradd -ms /bin/bash buildslave && \
    echo "buildslave ALL=(root) NOPASSWD:ALL" | tee -a /etc/sudoers.d/buildslave && \
    echo "#includedir /etc/sudoers.d" >> /etc/sudoers && \
    chmod 0440 /etc/sudoers.d/buildslave

# set the buildslave user as default
USER buildslave
WORKDIR /home/buildslave
