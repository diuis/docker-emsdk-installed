FROM diuis/docker-emsdk-base-python3:v1.0.0

USER appuser
RUN  cd /home/appuser/emsdk
RUN ./emsdk update
RUN ./emsdk install --enable-wasm clang-upstream-2363-64bit emscripten-upstream-2363-64bit binaryen-upstream-2363-64bit && \
    ./emsdk activate clang-upstream-2363-64bit emscripten-upstream-2363-64bit binaryen-upstream-2363-64bit