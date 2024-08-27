#!/bin/bash
# add /.env to this script
source /.env
export RESTIC_PASSWORD=$RESTIC_PASSWORD
export PGPASSWORD=$PG_PASSWORD

sqlcmd -S $PG_HOST -U $PG_USERNAME -P $PG_PASSWORD -Q "BACKUP DATABASE $PG_DATABASE TO DISK = 'stdout' WITH FORMAT"  | restic backup --stdin --stdin-filename $SQL_FILENAME --tag $BACKUP_TAG -r $RESTIC_REPOSITORY  >> /var/log/cron.log