FROM lutfika/evelyn:ubuntu24-mssql-rclone
# Copy the .env file
COPY .env /.env

# Source the .env file and replace the placeholder in the cron job file
RUN . /.env && \
    export CRON_CYCLE=$CRON_CYCLE && \
    sed -i 's/croncycle/'"$CRON_CYCLE"'/' /etc/cron.d/container_cronjob

RUN . /.env && ln -fs /usr/share/zoneinfo/$TIMEZONE /etc/localtime && dpkg-reconfigure -f noninteractive tzdata