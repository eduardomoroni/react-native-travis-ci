#!/usr/bin/env bash
set -o xtrace

if [[ "$CI" != "" ]];
  then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo 'Instalando dependencias MACOS'
    # Vamos ignorar esta parte por hora
  else
    echo 'Instalando dependencias linux'
    yes | sdkmanager "platforms;android-23"
    yes | sdkmanager "build-tools;23.0.1"
  fi
fi
