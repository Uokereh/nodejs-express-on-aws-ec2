#!/bin/bash
#Stopping existing node servers
echo "Stopping any existing node servers"
APP_ID=$(ps -C whoami --no-header --format 'pid')

if [ -n "${APP_ID}" ]; then
    echo "Stopping instance $APP_ID"
fi