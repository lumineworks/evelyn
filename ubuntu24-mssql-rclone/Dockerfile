# Pulling ubuntu image with a specific tag from the docker hub.
FROM ubuntu:24.04

RUN apt-get update && apt-get install rclone cron restic gnupg curl -y

# Install MSSQL tools

COPY --from=mcr.microsoft.com/mssql-tools /opt/mssql-tools /opt/mssql-tools
COPY --from=mcr.microsoft.com/mssql-tools /opt/mssql-tools/bin/sqlcmd /opt/mssql-tools/bin/sqlcmd

# Install mssql-tools
RUN apt-get install -y unixodbc-dev

# Tambahkan mssql-tools ke PATH
ENV PATH="${PATH}:/opt/mssql-tools/bin"


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