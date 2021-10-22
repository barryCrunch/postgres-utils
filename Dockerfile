FROM postgres:13-bullseye
ADD *.sh /
RUN chmod +x /do_*.sh \
&&  apt update \
&&  apt install -y curl \
&&  curl -sL https://aka.ms/InstallAzureCLIDeb | bash
# Inherit command from parent