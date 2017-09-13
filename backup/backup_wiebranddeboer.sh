#!/bin/bash

SQL_PASSWORD=${1}
SQL_SCHEMA=${2}

DATE=`date +%Y-%m-%d`
BASE_DIR=/home/backup/today

mysqldump -p${SQL_PASSWORD} ${SQL_SCHEMA} > /home/sido/backup/today/${DATE}_wiebranddeboer.sql

tar -cvf /home/sido/backup/today/${DATE}_wiebranddeboer.tar /srv/www/wiebranddeboer.nl/

