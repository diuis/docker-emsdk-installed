FROM diuis/docker-emsdk-base-python3:v1.0.0

RUN /home/appuser/emsdk/emsdk update-tags && \
    /home/appuser/emsdk/emsdk install clang-upstream-37918-64bit emscripten-upstream-37918-64bit binaryen-upstream-37918-64bit && \
    /home/appuser/emsdk/emsdk activate clang-upstream-37918-64bit emscripten-upstream-37918-64bit binaryen-upstream-37918-64bit && \
    rm -Rf /home/appuser/emsdk/zips
