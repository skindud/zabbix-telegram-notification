#!/bin/bash

token='<input-telegram-token-here>'
chat="$1"
subj="$2"
message="$3"

echo "### $$ `date` start " >> /usr/lib/zabbix/alertscripts/tlgm.sh.log

echo "### $$ `date` chat=$1 subj=$2 message=$3" >> /usr/lib/zabbix/alertscripts/tlgm.sh.log

/usr/bin/curl -s -U <user>:<password> --header 'Content-Type: application/json' --request 'POST' --data "{\"chat_id\":\"${chat}\",\"text\":\"${subj}\n${message}\"}" "https://api.telegram.org/bot${token}/sendMessage"
# --socks5-hostname <ip>:<port>

echo "### $$ `date` start " >> /usr/lib/zabbix/alertscripts/tlgm.sh.log
