#!/usr/bin/env bash

set -e

# Avoid .config to be symlinked
mkdir -p pushd "$HOME/.config"
