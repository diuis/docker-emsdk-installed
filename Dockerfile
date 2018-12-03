FROM diuis/docker-emsdk-base-python3:v1.0.3

RUN cd /emsdk && ./emsdk install latest
