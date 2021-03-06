#!/bin/bash

DOCKER_BIN=$(which docker)

if [[ $($DOCKER_BIN ps -a -q | wc -l) -ne 0 ]]; then $DOCKER_BIN rm $($DOCKER_BIN ps -a -q); fi
if [[ $($DOCKER_BIN images -q | wc -l) -ne 0 ]]; then $DOCKER_BIN rmi $($DOCKER_BIN images -q); fi
$DOCKER_BIN system prune --force --all --volumes > /dev/null
