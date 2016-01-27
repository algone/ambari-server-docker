#!/usr/bin/env bash

# set -e

/etc/init.d/postgresql start
sleep 60
/etc/init.d/ambari-server start
sleep 60
tail -F /var/log/ambari-server/ambari-server.*
