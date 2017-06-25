# scbuilder -- Docker image for building a statically linked ShellCheck

This docker image is responsible for building ShellCheck statically.

## To run:

    docker pull koalaman/scbuilder &&
    git clone https://github.com/koalaman/shellcheck &&
    cd shellcheck &&
    docker run -v "$PWD:/mnt" koalaman/scbuilder

This should result in a statically linked `shellcheck` in the current
directory.

