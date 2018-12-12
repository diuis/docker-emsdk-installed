FROM diuis/docker-emsdk-base-python3:v1.0.11

RUN /emsdk/juj-emsdk-7a0e274 install clang-upstream-37889-64bit emscripten-upstream-37889-64bit binaryen-upstream-37889-64bit
RUN /emsdk/juj-emsdk-7a0e274 activate clang-upstream-37889-64bit emscripten-upstream-37889-64bit binaryen-upstream-37889-64bit
