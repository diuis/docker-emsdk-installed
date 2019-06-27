FROM diuis/docker-emsdk-base:19.04

USER root
RUN update-alternatives --set python /usr/bin/python3.7

USER appuser
ARG EMSDK_VERS=1.38.31
ARG EMSDK_PATH=/home/appuser/emsdk/emsdk
RUN ${EMSDK_PATH} install  --build=Release clang-e${EMSDK_VERS}-64bit emscripten-${EMSDK_VERS} sdk-${EMSDK_VERS}-64bit && \
    ${EMSDK_PATH} activate --build=Release clang-e${EMSDK_VERS}-64bit emscripten-${EMSDK_VERS} sdk-${EMSDK_VERS}-64bit
