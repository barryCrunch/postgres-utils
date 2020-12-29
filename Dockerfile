FROM mdillon/postgis:9.6
RUN apt update -y
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
COPY do_backup.sh /
RUN chmod +x /do_backup.sh