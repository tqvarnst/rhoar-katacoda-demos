#!/bin/bash
~/.launch.sh

export PATH=$PATH:$(cd /root/apache-maven*/bin && pwd)

git clone -q https://github.com/wildfly-swarm-openshiftio-boosters/wfswarm-health-check.git /root/project
