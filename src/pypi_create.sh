#!/usr/bin/env bash

echo $1 > version.txt

cp  ../../wiki/Home.md .
rm ../README.md
cp ./Home.md ../README.md

git tag $1 -m "Version %1 Release"

git push --tags github master

rm dist/*
rm -Rf programy.egg-info

python3 setup.py sdist

rm ./Home.md


