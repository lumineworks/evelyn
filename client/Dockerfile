# Pulling ubuntu image with a specific tag from the docker hub.
FROM ubuntu:24.04

RUN apt-get update && apt-get install rclone cron restic postgresql-client -y
# RUN restic self-update

# COPY .env /.env
# # Crontab file copied to cron.d directory.
COPY ./cronjob /etc/cron.d/container_cronjob

# # Script file copied into container.
COPY ./script.sh /script.sh
COPY ./backup.sh /backup.sh

# # Giving executable permission to script file.
RUN chmod +x /script.sh
RUN chmod +x /backup.sh



# # Running commands for the startup of a container.
CMD ["/bin/sh", "-c", "/script.sh && chmod 644 /etc/cron.d/container_cronjob && cron && tail -f /var/log/cron.log"]