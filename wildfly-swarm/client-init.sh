#!/bin/bash
echo Logging into the OpenShift console as admin
oc login -u system:admin > login-out.txt 2>&1


echo "Importing Middleware imagestreams"
oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/ose-v1.4.5/jboss-image-streams.json -n openshift