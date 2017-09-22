#!/bin/bash

set -uo pipefail

case "$TRAVIS_OS_NAME" in
  linux)
    echo "==> Installing Ansible using pip on Linux"
    sudo pip install ansible
  ;;
  osx)
    echo "==> Installing Ansible using pip on Mac OS X"
    sudo pip install ansible
  ;;
  *)
    echo "Unknown value of TRAVIS_OS_NAME: '$TRAVIS_OS_NAME'" >&2
    exit 1
esac
