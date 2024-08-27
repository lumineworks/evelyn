#!/bin/bash
touch /var/log/cron.log
crontab /etc/cron.d/container_cronjob
echo "Cronjob started" >> /var/log/cron.log

