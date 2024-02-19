#!/bin/sh

# exit immediately if password-manager-binary is already in $PATH
type bw >/dev/null 2>&1 && exit

case "$(uname -s)" in
Darwin)
    # commands to install password-manager-binary on Darwin
    type brew >/dev/null 2>&1 || exit
    brew install bitwarden-cli || {
      echo "Failed to install bitwarden"
      exit 1
    }
    ;;
Linux)
    # commands to install password-manager-binary on Linux
    echo "Install the password manager manually first (bitwarden)"
    exit 1
    ;;
*)
    echo "unsupported OS"
    exit 1
    ;;
esac
