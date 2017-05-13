# Sensu

This git repo provides a docker image wit sensu.

This image installs the official package into a basic ubuntu image.

## Build client with plugins

You could use the `Dockerfile.plugins` to build a custom client image with plugins preinstalled.
```
docker build -t sensu-client -f Dockerfile.plugins --build-arg PLUGINS=cpu-checks,load-checks .
```
