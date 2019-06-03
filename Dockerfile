FROM diuis/docker-emsdk-base:v1.0.1

USER appuser
RUN  cd /home/appuser/emsdk && \
    ./emsdk install --enable-wasm --build=Release clang-e1.38.31-64bit emscripten-1.38.31 && \
    ./emsdk activate --build=Release clang-e1.38.31-64bit emscripten-1.38.31