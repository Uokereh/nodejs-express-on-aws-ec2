#!/bin/bash
#Stopping existing node servers
echo "Stopping any existing node servers"
APP_ID=$(ps -C node --no-header --format 'pid')
echo "APP_ID is $APP_ID"
if [ -n "${APP_ID}" ]; then
    echo "Stopping instance $APP_ID"
    kill -9 $APP_ID
fi