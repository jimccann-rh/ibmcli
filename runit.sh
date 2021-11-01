#!/bin/bash

podman run --env-file env.list --rm --name IBMCLI -it ibmcli $@
