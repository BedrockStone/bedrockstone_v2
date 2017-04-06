#!/bin/sh
export BACKUP_FILE=bedrock.backup.sql.gz
export DATABASE_SCHEMA_NAME=bedrock
export S3_BUNDLE=austinrockyard.com
mysqldump -ubedrockweb -pbedrock99922  $DATABASE_SCHEMA_NAME > temp.sql
gzip temp.sql
mv temp.sql.gz $BACKUP_FILE
export S3NAME=`date +"%Y%m%d"`
s3cmd put $BACKUP_FILE s3://$S3_BUNDLE/BACKUPS/$S3NAME.sql.gz
rm -rf $BACKUP_FILE
