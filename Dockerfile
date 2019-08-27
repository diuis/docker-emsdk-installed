FROM diuis/docker-emsdk-base:19.04

USER appuser
ARG EMSDK_PATH=/home/appuser/emsdk/emsdk
RUN ${EMSDK_PATH} install --build=Release sdk-1.38.21-64bit
RUN ${EMSDK_PATH} activate sdk-1.38.21-64bit
