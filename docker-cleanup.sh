#!/bin/sh

if [[ $(/usr/bin/docker ps -a -q | wc -l) -ne 0 ]]; then /usr/bin/docker rm $(/usr/bin/docker ps -a -q); fi
if [[ $(/usr/bin/docker images -q | wc -l) -ne 0 ]]; then /usr/bin/docker rmi $(/usr/bin/docker images -q); fi
