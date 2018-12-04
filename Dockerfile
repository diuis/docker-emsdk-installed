FROM diuis/docker-emsdk-base-python3:v1.0.4

RUN cd /emsdk && ./emsdk install latest
