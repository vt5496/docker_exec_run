#! /bin/bash

docker run -d --name="$2" -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro  $1 /bin/bash -c "while true; do sleep 60; done"