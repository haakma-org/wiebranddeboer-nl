#!/bin/bash

. ../../utils/read_configuration.sh

read_config "/home/config/wiebranddeboer.properties"

DATE=`date +%Y-%m-%d`
BASE_DIR=/home/backup/today
WWW_DIR=/home/sites

echo "[INFO] Backup MySQL schema : ${SQL_SCHEMA}"
mysqldump -u ${SQL_USER} -p${SQL_PASSWORD} ${SQL_SCHEMA} > /home/sido/backup/today/${DATE}_wiebranddeboer.sql

echo "[INFO] Backup directory : ${WWW_DIR}/wiebranddeboer.nl/"
tar -cvf /home/sido/backup/today/${DATE}_wiebranddeboer.tar ${WWW_DIR}/wiebranddeboer.nl/

