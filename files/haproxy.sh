#!/bin/bash

if [[ ! -z "${DEBUG_MODE}" ]]; then
    rpm -q syslog-ng
    if [[ $? -ne 0 ]]; then
        dnf -y --setopt=tsflags=nodocs install syslog-ng && \
        dnf -y clean all
        syslog-ng
    fi

fi

# Run haproxy binary
/usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg
