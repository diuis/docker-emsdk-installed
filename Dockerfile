FROM diuis/docker-emsdk-base:19.04

USER appuser
ARG EMSDK_PATH=/home/appuser/emsdk/emsdk
RUN ${EMSDK_PATH} install --build=Release 1.38.42-upstream
RUN ${EMSDK_PATH} activate 1.38.42-upstream
