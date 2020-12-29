FROM postgres
RUN apt update -y
RUN apt install -y curl wget
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
COPY do_backup.sh /
RUN chmod +x /do_backup.sh