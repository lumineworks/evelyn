#!/bin/bash
# add /.env to this script
source /.env
export RESTIC_PASSWORD=$RESTIC_PASSWORD
export PGPASSWORD=$PG_PASSWORD
pg_dump -h $PG_HOST -U $PG_USERNAME $PG_DB | restic backup --stdin --stdin-filename $SQL_FILENAME --tag $BACKUP_TAG -r $RESTIC_REPOSITORY  >> /var/log/cron.log