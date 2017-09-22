#!/bin/bash

set -uo pipefail

echo "==> Installing dependencies ..."
ansible-galaxy install -r requirements.yml

case "$TRAVIS_OS_NAME" in
  linux)

      echo "==> Running tests using ansible-playbook on Linuxs ..."
      ansible-playbook test.yml --extra-vars test_hosts=localhost
  ;;
  osx)

    echo "==> Running tests using ansible-playbook on macOS ..."
    ansible-playbook test.yml --extra-vars test_hosts=localhost
  ;;
  *)
    echo "Unknown value of TRAVIS_OS_NAME: '$TRAVIS_OS_NAME'" >&2
    exit 1
esac
