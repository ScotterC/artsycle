#!/bin/bash
export CRYSTAL_VERSION=0.21.1
export CRYSTAL_URL="https://github.com/crystal-lang/crystal/releases/download/${CRYSTAL_VERSION}/crystal-${CRYSTAL_VERSION}-1-linux-x86_64.tar.gz"

# if [[ ! -e "${CIRCLE_WORKING_DIRECTORY}/.crystal/bin/crystal" || $(crystal --version | grep -P -o '\d+\.\d+\.\d+') != "${CRYSTAL_VERSION}" ]]; then
  mkdir ".crystal"
  wget "${CRYSTAL_URL}" -O "crystal.tar.gz" &&\
  tar -zxvf "crystal.tar.gz" -C ".crystal" --strip-components=1
# fi