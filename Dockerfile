# Must be a supported GHC version, see https://github.com/fossas/haskell-static-alpine/tree/master 
ARG GHC_VERSION=9.8.2

FROM fossa/haskell-static-alpine:ghc-"${GHC_VERSION}" as builder

# add context directory (where the project source is)
ADD . /mnt

# set working directory
WORKDIR /mnt

# cabal build etc.
RUN ./build.sh


# # deployment image
FROM alpine:3.17
COPY --from=builder /mnt/out/test-app /deploy/test-app

CMD ["./deploy/test-app"]
