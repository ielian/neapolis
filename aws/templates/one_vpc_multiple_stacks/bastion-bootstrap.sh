#!/bin/bash

function parseargs
{
  if [ -n $1 ]; then
    export APP_ENV=$1
  fi

}

function sethostname
{
  host_domain=$(curl -s http://169.254.169.254/latest/meta-data/hostname)
  host=$(echo $host_domain | awk -F"." '{print $1}')
  echo 127.0.0.1 $host $host_domain >> /etc/hosts
}

parseargs $*
sethostname
