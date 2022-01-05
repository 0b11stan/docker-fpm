# FPM image to build RPM packages

This is a docker image for https://github.com/jordansissel/fpm

## Usage

Build image

```bash
podman build -t fpm .
```

Then use it as an executable

```bash
podman run fpm [options]
```

For exemple, the following command will create package `test` in the current
directory with `test.sh` as a pre-install script:

```bash
podman run -v $(pwd):/srv fpm -n test -s dir -t rpm -a all --before-install /srv/test.sh /srv
```
