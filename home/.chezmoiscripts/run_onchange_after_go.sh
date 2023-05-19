#!/bin/bash

set -eufo pipefail

if [[ -z "${GOPATH}" ]]; then
  echo "GOPATH is not set"
  exit
fi

function go_install() {
  local name=$1
  local pkg=$2

  if [ -f "${GOPATH}/bin/${name}" ]; then
    return
  fi

  echo "Installing ${name}"
  go install -v ${pkg}@latest
}

go_install "gofumpt" "mvdan.cc/gofumpt"
go_install "goimports-reviser" "github.com/incu6us/goimports-reviser/v3"
go_install "golines" "github.com/segmentio/golines"
