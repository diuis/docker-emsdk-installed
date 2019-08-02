FROM diuis/docker-emsdk-base:19.04

USER appuser
ARG EMSDK_PATH=/home/appuser/emsdk/emsdk
RUN ${EMSDK_PATH} install --build=Release 1.38.21
RUN ${EMSDK_PATH} install --build=Release 1.38.40
RUN ${EMSDK_PATH} install --build=Release 1.38.40-upstream
RUN ${EMSDK_PATH} activate 1.38.40

