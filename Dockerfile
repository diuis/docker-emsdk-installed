FROM diuis/docker-emsdk-base:18.10

ARG EMSDK_VERSION=1.38.31

USER appuser
RUN /home/appuser/emsdk install --build=Release clang-e${EMSDK_VERSION}-64bit emscripten-${EMSDK_VERSION} && \
    /home/appuser/emsdk activate --build=Release clang-e${EMSDK_VERSION}-64bit emscripten-${EMSDK_VERSION}