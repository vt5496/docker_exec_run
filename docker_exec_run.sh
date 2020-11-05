#! /bin/bash

status=$(docker container inspect -f '{{.State.Status}}' $2)
if [ $(echo $status) == 'running' ]; then 
	./src/docker_exec.sh $2;
elif [ $(echo $status) == 'exited' ]; then 
	./src/docker_start.sh $2
	./src/docker_exec.sh $2;
else 
	./src/docker_run.sh $1 $2
	./src/docker_exec.sh $2;
fi
