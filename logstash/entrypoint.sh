#!/usr/bin/env bash

echo "Starting apache2"
apachectl -f /etc/apache2/apache2.conf && logstash -f /etc/logstash/conf.d/

