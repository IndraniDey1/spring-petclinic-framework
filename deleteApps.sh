#!/usr/bin/env bash
eval $(minishift oc-env)

APP_SVC_NAME=petclinic
DB_SV_NAME=$APP_SVC_NAME-mysql

# delete all portions of application
oc delete dc/$APP_SVC_NAME
oc delete svc/$APP_SVC_NAME
oc delete route/$APP_SVC_NAME

# delete all configurations for the application
oc delete secret/$APP_SVC_NAME-secret
oc delete configMap/$APP_SVC_NAME-db-config

# remove all portions of database
oc delete dc/$DB_SV_NAME
oc delete svc/$DB_SV_NAME


