#!/bin/bash

set -eufo pipefail

if ! which cargo >/dev/null; then
  echo "Cargo is not installed"
  exit 1
fi

cargo install zoxide --locked # improved cd
