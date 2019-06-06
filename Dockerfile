FROM diuis/docker-emsdk-base:18.10

USER appuser

ARG EMSDK_VERS=1.38.31
ARG EMSDK_PATH=/home/appuser/emsdk/emsdk
# ADD ./installEmsdk.sh /home/appuser/
RUN ${EMSDK_PATH} install  --build=Release clang-e${EMSDK_VERS}-64bit emscripten-${EMSDK_VERS} && \
    ${EMSDK_PATH} activate --build=Release clang-e${EMSDK_VERS}-64bit emscripten-${EMSDK_VERS}
#SHELL ["/bin/bash", "-c"]
#RUN /home/appuser/installEmsdk.sh
