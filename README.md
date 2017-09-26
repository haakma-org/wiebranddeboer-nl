# wiebranddeboer.nl

This domain has 2 subdomains

* www.wiebranddeboer.nl
* admin.wiebranddeboer.nl

# Configuration

At this moment only the apache configuration is relevant. You can locate this in wiebrandderboer.nl-site/apache2.
There are 2 configuration files:

* admin-wiebranddeboer-nl.config
* wwww-wiebranddeboer-nl.config

## Backup

Each day around 9:00 PM the backup is executed on [jenkins.haakma.org](http://jenkins.haakma.org/job/haakma-org/job/wiebranddeboer-nl/).
The backups are located on the host:

* /home/#user#/backup/#domain#/#domain#_#subdomain#.tar
* /home/#user#/backup/#domain#/#domain#_#subdomain#.sql

## Slack

You can signup to the slack account [haakma.slack.com](https://haakma.slack.com/messages/C78LBQZK5) and receive notification messages of backups and other administrative processes.
