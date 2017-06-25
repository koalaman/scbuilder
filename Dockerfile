FROM ubuntu:17.04

# Install GHC and cabal
USER root
WORKDIR /root
RUN apt-get update
RUN apt-get install -y ghc cabal-install

# Set up a user
RUN mkdir -p /mnt
RUN adduser --home /mnt haskell
RUN chown haskell: /mnt

# Copy the build script
COPY buildsc /usr/bin

USER haskell
WORKDIR /mnt
ENTRYPOINT ["/usr/bin/buildsc"]

