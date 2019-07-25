FROM diuis/docker-emsdk-base:19.04

USER appuser
ARG EMSDK_VERS=1.38.40
ARG EMSDK_PATH=/home/appuser/emsdk/emsdk
RUN ${EMSDK_PATH} install --build=Release ${EMSDK_VERS}
