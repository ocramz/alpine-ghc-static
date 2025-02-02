################################################################################
# Set up environment variables, OS packages, and scripts that are common to the
# build and distribution layers in this Dockerfile

# Must be a valid GHC version number
#
# Default to GHC version
ARG GHC_VERSION=9.8.2

FROM fossa/haskell-static-alpine:ghc-"${GHC_VERSION}" as base


