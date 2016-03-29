# Overview

sensu client docker image

## Installed plugins

The following plugins are installed in the docker image:

1. sensu-plugins-io-checks
2. sensu-plugins-process-checks
3. sensu-plugins-load-checks
4. sensu-plugins-cpu-checks
5. sensu-plugins-disk-checks
6. sensu-plugins-memory-checks

# Run

Pass credentials via environment variables:

    docker run --ulimit nofile=65536:65536 --net=host --privileged \
            -e RABBITMQ_PORT='5671' \
            -e RABBITMQ_HOST='xx.xx.xx.xx' \
            -e RABBITMQ_USER='sensu' \
            -e RABBITMQ_PASSWORD='sensu' \
            -e RABBITMQ_VHOST='sensu' \
            -e CERT_SECRET='true' \
            -e CLIENT_SUBSCRIPTIONS='all,defaults' \
            dronedeploy/sensu-client:v0.1.0

you can pass an env var called SENSU_SSL_KEY and SENSU_SSL_CERT with a base64
content of your pem encoded key and cert for sensu to use them ideally this should
be stored in a kubernetes secret

# Release
First register a Docker Hub account and ask one of the existing member to add
you into the dronedeploy team. Then you can run the following command to
release a new version:

```
make release tag=<the new version number>
```
