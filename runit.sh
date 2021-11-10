#!/bin/bash

SETPODSSHKEYS=$HOME/.ssh:/run/localsshkeys

if grep -qF "$SETPODSSHKEYS" /etc/containers/mounts.conf ; then
   echo "Local SSH key path for podman is set. Look under /run/localsshkeys/"
else
   echo $SETPODSSHKEYS | sudo tee -a /etc/containers/mounts.conf /dev/null
fi

podman run --env-file env.list --rm --name IBMCLI -it ibmcli $@
