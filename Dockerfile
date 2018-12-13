FROM diuis/docker-emsdk-base-python3:v1.0.0

USER appuser
SHELL ["/bin/bash", "-c"]
RUN cd /home/appuser/emsdk && ./emsdk update-tags && \
    ./emsdk install clang-upstream-37918-64bit emscripten-upstream-37918-64bit binaryen-upstream-37918-64bit && \
    ./emsdk activate clang-upstream-37918-64bit emscripten-upstream-37918-64bit binaryen-upstream-37918-64bit
RUN rm -Rf /home/appuser/emsdk/zips
