#!/bin/bash
az storage blob download --account-name $AZ_ACCOUNT_NAME --account-key $AZ_ACCOUNT_KEY --container-name $AZ_CONTAINER_NAME --file db_backup.bz2 --name $1 
bzip2 -dk db_backup.bz
pg_restore -c -d $POSTGRES_DB -U $POSTGRES_USER -h $POSTGRES_HOST db_backup

