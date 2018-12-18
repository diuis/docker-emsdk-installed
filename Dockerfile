FROM diuis/docker-emsdk-base-python3:v1.0.0

USER appuser
RUN  cd /home/appuser/emsdk && \
    ./emsdk update && \
    ./emsdk install --enable-wasm --build=Release clang-upstream-2363-64bit emscripten-upstream-2363-64bit binaryen-upstream-2363-64bit && \
    ./emsdk activate --build=Release clang-upstream-2363-64bit emscripten-upstream-2363-64bit binaryen-upstream-2363-64bit