#!/bin/bash

# nohup ./run_docker.sh &
# tail -f docker.log

docker_id="fec5b633d1f1"
while true
do
    output=$(docker ps | grep $docker_id)
    if [[ -z "$output" ]]; then
        echo "Docker crashed... restarting"
        nohup docker-compose --file validator.yml up >> validator.log 2>&1 &!
    fi
    echo -n "OK     " $(date)
    echo -n -e "\e[0K\r"
    # echo -e "\\rOK"
    sleep 3
done
