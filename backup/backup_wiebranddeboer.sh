#!/bin/bash

DATE=`date +%Y-%m-%d`

mysqldump -pKoRn0512 wiebranddeboer > /home/sido/backup/today/${DATE}_wiebranddeboer.sql

tar -cvf /home/sido/backup/today/${DATE}_wiebranddeboer.tar /srv/www/wiebranddeboer.nl/

