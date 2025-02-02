################################################################################
# Set up environment variables, OS packages, and scripts that are common to the
# build and distribution layers in this Dockerfile

# Must be a valid GHC version number
#
# Default to GHC version
ARG GHC_VERSION=9.6.6

FROM quay.io/benz0li/ghc-musl:"${GHC_VERSION}" AS base
