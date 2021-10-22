#!/bin/bash
set -euo pipefail
az storage blob download --account-name $AZ_ACCOUNT_NAME --account-key $AZ_ACCOUNT_KEY --container-name $AZ_CONTAINER_NAME --file backup.pgdump --name $1 
pg_restore -c -d $POSTGRES_DB -U $POSTGRES_USER -h $POSTGRES_HOST backup.pgdump
