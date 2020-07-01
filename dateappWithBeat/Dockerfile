FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install apt-utils -y
RUN apt-get install wget -y
RUN apt-get install gnupg -y
RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
RUN apt-get install apt-transport-https
RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D27D666CD88E42B4
RUN apt-get update
RUN apt-get install filebeat
RUN apt-get purge openssh-server
RUN apt-get install openssh-server -y
RUN apt-get install filebeat -y
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
RUN echo 'root:4321' | chpasswd
RUN mkdir /app
RUN touch /app/time.txt
COPY script.sh /app
RUN chmod +x /app/script.sh
RUN chown root /etc/filebeat/filebeat.yml
COPY filebeat.yml /etc/filebeat/

CMD /app/script.sh
