# FPM image to build RPM packages

This is a docker image for [fpm](https://github.com/jordansissel/fpm).

## Usage

_(I'm using [podman](https://github.com/containers/podman) as my container
manager but you can `s/podman/docker/`)_

Build image

```bash
podman build -t fpm .
```

Then use it as an executable

```bash
podman run fpm [options]
```

## Exemple

For exemple, the following command will create package `test` in the current
directory with `test.sh` as a pre-install script:

```bash
podman run -v $(pwd):/srv fpm -n test -s dir -t rpm -a all --before-install /srv/test.sh /srv
```

You may even

```bash
alias fpm="podman run -v $(pwd):/srv fpm"
```
