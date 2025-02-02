################################################################################
# Set up environment variables, OS packages, and scripts that are common to the
# build and distribution layers in this Dockerfile

# Must be a valid GHC version number
#
# Default to GHC version
ARG GHC_VERSION=9.8.2

FROM fossa/haskell-static-alpine:ghc-"${GHC_VERSION}" as base

# FROM quay.io/benz0li/ghc-musl:"${GHC_VERSION}" AS base

# ARG GHC_BUILD_TYPE=gmp
# ARG STACK_VERSION=3.3.1

# ################################################################################
# # Intermediate layer that assembles 'stack' tooling
# FROM base AS build-tooling

# ARG STACK_VERSION


# # Download, install stack
# RUN echo "Downloading and installing stack" &&\
#     cd /tmp &&\
#     wget -P /tmp/ "https://github.com/commercialhaskell/stack/releases/download/v${STACK_VERSION}/stack-${STACK_VERSION}-linux-x86_64-static.tar.gz" &&\

#     tar -xvzf /tmp/stack-${STACK_VERSION}-linux-x86_64-static.tar.gz &&\
#     cp -L /tmp/stack-${STACK_VERSION}-linux-x86_64-static/stack /usr/bin/stack &&\
#     rm /tmp/stack-${STACK_VERSION}-linux-x86_64-static.tar.gz &&\
#     rm -rf /tmp/stack-${STACK_VERSION}-linux-x86_64-static

# ################################################################################
# # Assemble the final image
# FROM base

# ARG GHC_VERSION


# COPY --from=build-tooling /usr/bin/stack /usr/bin/stack

# # NOTE: 'stack --docker' needs bash + usermod/groupmod (from shadow)
# RUN apk add --no-cache bash shadow openssh-client tar

# RUN stack config set system-ghc --global true
