FROM diuis/docker-emsdk-base:18.10

USER appuser
ARG EMSDK_VERS=1.38.37
ARG EMSDK_PATH=/home/appuser/emsdk/emsdk
RUN ${EMSDK_PATH} install  --build=Release ${EMSDK_VERS} && \
    ${EMSDK_PATH} activate --build=Release ${EMSDK_VERS}

