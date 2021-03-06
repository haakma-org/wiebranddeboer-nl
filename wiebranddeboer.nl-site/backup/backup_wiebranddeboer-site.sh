#!/bin/bash

BASE_PATH=`pwd`

source ${BASE_PATH}/utils/read_configuration.sh

read_config "/home/config/wiebranddeboer_site.properties"

DATE=`date +%Y-%m-%d`
BASE_DIR=/home/backup/wiebranddeboer.nl/today
WWW_DIR=/home/sites

echo "[INFO] Backup MySQL schema : ${SQL_SCHEMA}"
mysqldump -u ${SQL_USER} -p${SQL_PASSWORD} ${SQL_SCHEMA} --host=${SQL_HOST} --port=${SQL_PORT} > ${BASE_DIR}/${DATE}_wiebranddeboer.sql
if [[ ${?} != 0 ]]; then
  echo "[ERROR] mysqldump failed"
  exit 1
fi

echo "[INFO] Backup directory : ${WWW_DIR}/www.wiebranddeboer.nl/"
tar -cvf ${BASE_DIR}/${DATE}_wiebranddeboer.tar ${WWW_DIR}/www.wiebranddeboer.nl/

