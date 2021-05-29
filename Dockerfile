FROM fedora:35

RUN dnf install -y \
  findutils \
  g++ \
  gcc \
  git-core \
  java \
  java-11-openjdk-devel \
  patch \
  perl \
  python \
  python3 \
  unzip \
  vim \
  wget \
  which \
  zip \
  && dnf clean all \
  && rm -rf /var/cache/yum

RUN wget -O /tmp/bazel.sh https://github.com/bazelbuild/bazel/releases/download/4.1.0/bazel-4.1.0-installer-linux-x86_64.sh
RUN bash /tmp/bazel.sh
RUN rm -rf /tmp/bazel.sh

