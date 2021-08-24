#!/bin/bash
#Stopping existing node servers
echo "Stopping any existing node servers"
APP_ID=$(ps -ef | grep node | grep java | awk '{print $2}')
echo "APP_ID is $APP_ID"
if [ -n "${APP_ID}" ]; then
    echo "Stopping instance $APP_ID"
    kill -9 $APP_ID
fi