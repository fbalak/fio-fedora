FROM registry.fedoraproject.org/fedora:latest
LABEL description="This is a Fedora container image with fio"
MAINTAINER Filip Balak <fbalak@redhat.com>
RUN dnf update -y \
    && dnf install -y dnf-plugins-core \
    && dnf install -y libcurl-devel openssl-devel fio strace ltrace less \
    && dnf clean all \
    && rm -rf /var/cache/dnf
WORKDIR /tmp
