#!/bin/bash

# we mounted the source repo as a Docker volume in /mnt
cd /mnt

# static link binary
cabal build --enable-executable-static

# copy binary
mkdir out/
cp $(cabal -v0 list-bin exe:test-app) out/
