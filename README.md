# Postgresql Backup Container
This container backups up a postgres DB to an Azure Blob and is meant to be ran with in k8s as a cronjob.

## Environment Variables
The table below is the list of accepted environment variables



Environment Variable | Purpose | Required
-------------------- | ------- | --------
POSTGRES_PASSWORD | Password for database | True
POSTGRES_DB | Name of database to backup | True
POSTGRES_HOST | Location of Postgres Server/Container | True
AZ_ACCOUNT_NAME | Storage Account Name within Azure | True
AZ_ACCOUNT_KEY | Storage Account Access Key | True
AZ_CONTAINER_NAME | Name of the Container where Blob will sit | TRUE