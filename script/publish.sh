#!/bin/bash -e
cd $(dirname $0)/..
ant dist
echo
echo "Committing generator changes..."
gip-add-commit-and-push-force "Publish"

cd ../zaboople.github.io
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
read answer
if [[ $answer == y* ]]; then
  cp -r dist/generated/* ../zaboople.github.io/
fi

echo
cd ../zaboople.github.io
gip-add-commit-and-push-force "Publish"
echo "Hopefully published site"