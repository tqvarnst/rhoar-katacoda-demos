#!/bin/bash

echo Installing Java
yum install -y -q -e 0 java-1.8.0-openjdk-devel

echo Installing Maven
curl -s http://www-us.apache.org/dist/maven/binaries/apache-maven-3.2.2-bin.tar.gz | tar zx
export PATH=$PATH:apache-maven-3.2.2/bin

echo Download project template
git clone -q https://github.com/wildfly-swarm-openshiftio-boosters/wfswarm-health-check.git my-first-project

echo Install image streams
for i in {1..200}; do oc create -f https://raw.githubusercontent.com/jboss-openshift/application-templates/ose-v1.4.5/jboss-image-streams.json -n openshift && break || sleep 1; done