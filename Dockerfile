FROM diuis/docker-emsdk-base:19.04

ARG EMSDK_VERSION=1.38.31

USER appuser
RUN  cd /home/appuser/emsdk && \
    ./emsdk install --enable-wasm --build=Release clang-e1.38.31-64bit emscripten-1.38.31 && \
    ./emsdk activate --build=Release clang-e1.38.31-64bit emscripten-1.38.31