#!/bin/bash

# nohup ./run_docker.sh &
# tail -f docker.log

docker_id="bloxberg_validator_setup_validator"
while true
do
    output=$(docker ps | grep $docker_id)
    if [[ -z "$output" ]]; then
        echo "Docker crashed... Restarting"
        nohup docker-compose --file validator.yml up >> validator.log 2>&1 &!
    fi
    echo -n "OK                                      " $(date)
    echo -n -e "\e[0K\r"
    # echo -e "\\rOK"
    sleep 10
done
