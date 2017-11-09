#!/bin/bash

echo "Checking meteor"

if curl --version > /dev/null; then
  echo "curl is already installed."
  echo "installing meteor"
  curl https://install.meteor.com/ | sh
else
  echo "curl is not installed"
  if apt-get -v > /dev/null; then
    echo "installing curl"
    sudo apt-get install curl
    echo "installing meteor"
    curl https://install.meteor.com/ | sh
  else
    echo "apt-get is not installed"
  fi
fi
