#!/bin/bash
oc new-app openjdk18-openshift~https://github.com/jacobborella/myproject --name hello-world -e GREETING="Hello GOTO"
oc expose svc hello-world
