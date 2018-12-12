FROM diuis/docker-emsdk-base-python3:v1.0.11

RUN /emsdk/juj-emsdk-7a0e274/emsdk install clang-e1.38.21-64bit emscripten-1.38.21 binaryen-tag-1.37.36-64bit && \
    /emsdk/juj-emsdk-7a0e274/emsdk activate clang-e1.38.21-64bit emscripten-1.38.21 binaryen-tag-1.37.36-64bit && \
    rm -Rf /emsdk/juj-emsdk-7a0e274/zips
