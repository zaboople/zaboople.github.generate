#!/bin/bash -e
cd $(dirname $0)
./build.sh dist
gip-add-commit-and-push-force "Publish"
cd ../../zaboople.github.io
echo
echo "Current directory "$(pwd)
echo -n "WARNING: I am about to do an rm -rf. Is that ok??? "
read answer
if [[ $answer == y* ]]; then
  echo rm -rf *
fi

