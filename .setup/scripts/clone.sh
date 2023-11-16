#!/bin/bash

git clone git@github.com:ijapesigan/docker-sem.git
rm -rf "$PWD.git"
mv docker-sem/.git "$PWD"
rm -rf docker-sem
