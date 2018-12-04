FROM diuis/docker-emsdk-base-python3:v1.0.6

RUN python -m pip install zipfile36
RUN /emsdk/emsdk install clang-e1.38.21-64bit
