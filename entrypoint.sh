#!/bin/bash

/usr/local/bin/ibmcloud login --apikey $IBMCLOUD_API_KEY --no-region > /tmp/login.txt 
/usr/local/bin/ibmcloud $@
