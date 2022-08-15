#!/bin/bash
export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/listmonk.pid
cd $HOME
 
if [ -f $PID ] ; then 
    kill $( cat $PID );
    sleep 2 ;
    kill -9 $( cat $PID ) >/dev/null 2>&1 ;
    rm $PID ;
fi
