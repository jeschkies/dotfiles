#!/bin/sh

if test ! $(which jenv)
then
  echo "  Installing java for you."
  brew cask install java
  echo "  Installing jenv for you."
  brew install jenv > /tmp/jenv-install.log
fi
