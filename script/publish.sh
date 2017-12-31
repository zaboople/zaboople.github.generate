#!/bin/bash -e
cd $(dirname $0)
./build.sh dist
echo
echo "Committing generator changes..."
gip-add-commit-and-push-force "Publish"
cd ../../zaboople.github.io
echo
echo "Current directory: "$(pwd)
echo -n "WARNING: I am about to do an rm -rf. Is that okay? "
read answer
if [[ $answer == y* ]]; then
  rm -rf *
fi
cd ../zaboople.github.generate

echo
echo "Current directory: "$(pwd)
echo -n "WARNING: I am about to do a huge cp -r. Okay? "
cp -r dist/generated/* ../zaboople.github.io/
