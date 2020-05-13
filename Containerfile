FROM registry.fedoraproject.org/fedora:31
LABEL description="This is a fedora 31 container image with fio"
MAINTAINER Filip Balak <fbalak@redhat.com>
RUN dnf install -y dnf-plugins-core \
    dnf copr enable marbu/fio -y \
    && dnf install -y fio strace ltrace less \
    && dnf clean all \
    && rm -rf /var/cache/dnf
