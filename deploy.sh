#!/bin/sh

flaskr_running=$(docker ps | grep flaskr)

if [ ! -z flaskr_running ]
then
    echo "Previous version detected. Removing..."
    docker rm -f flaskr
fi
echo "Deploying new version of app..."
docker run -d --name flaskr -p 8030:8030 local-flaskr
