#!/usr/bin/env sh
# Use this script to run oc commands to create resources in the selected namespace. Files are ordered
# in proper order. 'oc process' processes the template as resources which is again piped to
# 'oc apply' to create those resources in OpenShift namespace
oc process -f ../ocp/registry/scc-config.yml | oc apply -f -
oc process -f ../ocp/osjhdb/osjhdb-mysql.yml | oc apply -f -
oc process -f ../ocp/osjhdb/osjhdb-deployment.yml | oc apply -f -
