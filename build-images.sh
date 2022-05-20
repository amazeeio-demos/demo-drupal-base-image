#!/bin/bash

BIVER=`cat lagoon/base-image-version`

docker build . -f lagoon/cli.dockerfile -t bryangrunebergaio/demo-drupal-base-image:v$BIVER
docker push bryangrunebergaio/demo-drupal-base-image:v$BIVER
