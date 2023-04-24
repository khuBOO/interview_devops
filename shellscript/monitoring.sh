#!/bin/bash

SERVICE_NAME="my_service"
SERVICE_CMD="sudo systemctl start ${SERVICE_NAME}"
LOG_FILE="/var/log/${SERVICE_NAME}_monitoring.log"

while true; do
    if ! systemctl is-active --quiet ${SERVICE_NAME}; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - ${SERVICE_NAME} is not running. Restarting..." >> ${LOG_FILE}
        ${SERVICE_CMD} >> ${LOG_FILE} 2>&1
        sleep 5s
    fi
    sleep 1m
done