FROM diuis/docker-emsdk-base:18.10

ADD ./installEmsdk.sh /home/appuser/

SHELL ["/bin/bash", "-c"]
RUN /home/appuser/installEmsdk.sh
