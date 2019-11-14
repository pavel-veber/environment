FROM centos:8

ENV LANG=en_US.UTF-8

RUN dnf install -y --nodocs glibc-langpack-en git nmap wget && \
    rm -rf /var/cache/yum /tmp/* /var/tmp/*
