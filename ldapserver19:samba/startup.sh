#! /bin/bash
bash /opt/docker/install.sh
ulimit -n 1024
ulimit -a | grep "open"
/sbin/slapd -d0
