#!/bin/bash

export IC_API_KEY=${IBMCLOUD_API_KEY}

if [ $INTERATCIBMCLI = false ] ; then
/usr/local/bin/ibmcloud login --apikey $IBMCLOUD_API_KEY --no-region > /tmp/login.txt
/usr/local/bin/ibmcloud $@
else
bash
fi

