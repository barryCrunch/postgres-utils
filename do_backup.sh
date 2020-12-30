#!/bin/bash
export DUMP_FILE=backup_`date +%Y%m%d_%H%M%S`.pgdump
export PGPASSWORD=$POSTGRES_PASSWORD
pg_dump -Fc -d $POSTGRES_DB -U $POSTGRES_USER -h $POSTGRES_HOST  > $DUMP_FILE
bzip2 $DUMP_FILE
az storage blob upload --account-name $AZ_ACCOUNT_NAME --account-key $AZ_ACCOUNT_KEY --container-name $AZ_CONTAINER_NAME --file ${DUMP_FILE}.bz2 --name $DUMP_FILE

