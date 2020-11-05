#! /bin/bash

docker exec -it --user=$(id -u):$(id -g $(whoami)) $1 bash