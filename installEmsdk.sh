#!/bin/bash

EMSDK_VERSION=1.38.31
ls -la /home/appuser/emsdk
/home/appuser/emsdk/emsdk install --build=Release clang-e${EMSDK_VERSION}-64bit emscripten-${EMSDK_VERSION}
/home/appuser/emsdk/emsdk activate --build=Release clang-e${EMSDK_VERSION}-64bit emscripten-${EMSDK_VERSION}
