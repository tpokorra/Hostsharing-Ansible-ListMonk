#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/listmonk.pid
cd $HOME/bin

exec ./listmonk  >$HOME/var/log/listmonk.log 2>&1 &
echo $! > $PID
