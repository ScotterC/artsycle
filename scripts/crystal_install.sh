#!/bin/bash
export CRYSTAL_VERSION=0.21.1
export CRYSTAL_URL="https://github.com/crystal-lang/crystal/releases/download/${CRYSTAL_VERSION}/crystal-${CRYSTAL_VERSION}-1-linux-x86_64.tar.gz"
export HOME="~/artsycle"

if [[ ! -e "${HOME}/.crystal/bin/crystal" || $(crystal --version | grep -P -o '\d+\.\d+\.\d+') != "${CRYSTAL_VERSION}" ]]; then
  mkdir "${HOME}/.crystal"
  wget "${CRYSTAL_URL}" -O "${HOME}/crystal.tar.gz" &&\
  tar -zxvf "${HOME}/crystal.tar.gz" -C "${HOME}/.crystal" --strip-components=1
fi