service ssh start; service filebeat start; while true; do echo "{\"theDate\": \"" `date`  "\"}"  >> /app/date.log ; sleep 5; rm /app/date.log ; done
