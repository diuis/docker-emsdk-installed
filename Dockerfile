FROM diuis/docker-emsdk-base:18.10

USER appuser
ADD ./installEmsdk.sh /home/appuser/

SHELL ["/bin/bash", "-c"]
RUN /home/appuser/installEmsdk.sh
