#!/bin/bash
oc new-build --image-stream=openjdk18-openshift --binary=true --name=hello-world
oc start-build hello-world --from-dir=.
oc new-app hello-world
oc expose svc hello-world
