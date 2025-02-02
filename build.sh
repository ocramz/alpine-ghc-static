#!/bin/bash

apk update && apk add file

# we mounted the source repo as a Docker volume in /mnt
cd /mnt

# static link binary
cabal build --enable-executable-static

# copy binary
mkdir out/
cp $(cabal -v0 list-bin exe:test-app) out/

file out/test-app
