FROM ubuntu:17.10

# Install GHC and cabal
USER root
WORKDIR /mnt
RUN apt-get update
RUN apt-get install -y ghc cabal-install

# Copy the build script
COPY buildsc /usr/bin

ENV HOME=/mnt
WORKDIR /mnt
ENTRYPOINT ["/usr/bin/buildsc"]

