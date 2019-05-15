#!/bin/bash

cluster_name=${1:-blue-green-cluster}

gcloud beta container clusters update ${cluster_name} \
    --update-addons=Istio=ENABLED --istio-config=auth=MTLS_STRICT