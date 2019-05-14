#!/bin/bash

kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole=cluster-admin \
  --user="$(gcloud config get-value core/account)"

kubectl apply -f istio-demo.yaml

kubectl label namespace blue-green istio-injection=enabled