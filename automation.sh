#!/bin/bash

check_and_start() {
 if ! systemctl is-active $1 >/dev/null;
 then
   systemctl start $1
   echo "$1 started"
 else
   echo "$1 already running"
 fi
}

for svc in httpd sshd
do
  check_and_start $svc
done
