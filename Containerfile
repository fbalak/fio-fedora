FROM registry.fedoraproject.org/fedora:32
LABEL description="This is a fedora 32 container image with fio"
MAINTAINER Filip Balak <fbalak@redhat.com>
RUN dnf install -y libcurl-devel openssl-devel fio strace ltrace less \
    && dnf clean all \
    && rm -rf /var/cache/dnf
