FROM diuis/docker-emsdk-base-python3:v1.0.8

RUN python -m pip install zipfile36
RUN /emsdk/emsdk install clang-e1.38.21-64bit emscripten-1.38.21 binaryen-tag-1.38.21-64bit
RUN /emsdk/emsdk activate clang-e1.38.21-64bit emscripten-1.38.21 binaryen-tag-1.38.21-64bit
