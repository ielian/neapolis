#!/bin/bash

function parseargs
{
  if [ -n $1 ]; then
    export APP_HOME=$1
  fi

  if [ -n $2 ]; then
    export APP_ENV=$2
  fi

}

function sethostname
{
  host_domain=$(curl -s http://169.254.169.254/latest/meta-data/hostname)
  host=$(echo $host_domain | awk -F"." '{print $1}')
  echo 127.0.0.1 $host $host_domain >> /etc/hosts
}

function start_tomcat
{
  if [ ! -e $APP_HOME/bin/start_tomcat ]; then
    echo '$APP_HOME does not exist'
    exit
  fi
  chmod -R 755 $APP_HOME/bin
  $APP_HOME/bin/start_tomcat $*
}

parseargs /opt/rover/app $*
sethostname
start_tomcat $*