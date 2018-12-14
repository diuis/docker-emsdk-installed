FROM diuis/docker-emsdk-base-python3:v1.0.0

USER appuser
SHELL ["/bin/bash", "-c"]
RUN cd /home/appuser/emsdk && ./emsdk update-tags && \
    ./emsdk install clang-e1.38.21-64bit emscripten-1.38.21 binaryen-tag-1.38.6-64bit && \
    ./emsdk activate clang-e1.38.21-64bit emscripten-1.38.21 binaryen-tag-1.38.6-64bit && \
    rm -Rf /home/appuser/emsdk/zips && \
    rm -Rf ./upstream/37918/emscripten/.circleci && \
    rm -Rf ./upstream/37918/emscripten/site && \
    rm -Rf ./upstream/37918/emscripten/tests && \
    rm -Rf ./upstream/37918/emscripten/docs