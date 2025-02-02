# Must be a supported GHC version, see https://github.com/fossas/haskell-static-alpine/tree/master 
ARG GHC_VERSION=9.8.2

FROM fossa/haskell-static-alpine:ghc-"${GHC_VERSION}" as base

ADD . /mnt

WORKDIR /mnt
RUN ./build.sh
