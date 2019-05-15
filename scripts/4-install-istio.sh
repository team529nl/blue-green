#!/bin/bash

kubectl create clusterrolebinding cluster-admin-binding \
    --clusterrole=cluster-admin \
    --user=$(gcloud config get-value core/account)

cluster_name=${1:-blue-green-cluster}

gcloud beta container clusters update ${cluster_name} \
    --update-addons=Istio=ENABLED --istio-config=auth=MTLS_STRICT