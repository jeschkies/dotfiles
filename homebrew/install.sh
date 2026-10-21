#!/usr/bin/env bash
#
# Install Homebrew if it isn't there yet.
#
# This used to be a vendored copy of the upstream installer, which went stale
# (it refused to support anything newer than macOS 14) and never knew how to
# configure fish. PATH setup lives in fish/.config/fish/conf.d/homebrew.fish.

set -euo pipefail

if command -v brew >/dev/null 2>&1
then
  echo "› homebrew already installed"
  exit 0
fi

echo "› installing homebrew"
NONINTERACTIVE=1 /bin/bash -c \
  "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
