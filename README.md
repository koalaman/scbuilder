# scbuilder

Docker image for building a statically linked [ShellCheck](https://github.com/koalaman/shellcheck) binary.

## Usage

```bash
docker pull koalaman/scbuilder &&
git clone https://github.com/koalaman/shellcheck &&
cd shellcheck/ &&
docker run --volume "${PWD}:/mnt" koalaman/scbuilder
```

This should result in a statically linked `shellcheck` in the current
directory.
