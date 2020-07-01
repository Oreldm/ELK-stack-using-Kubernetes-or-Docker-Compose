service ssh start; service filebeat start; while true; do date >> /app/time.txt ; sleep 5; rm /app/time.txt ; done
