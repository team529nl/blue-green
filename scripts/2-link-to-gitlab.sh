#!/bin/bash

echo Adding gitlab service account
kubectl apply -f gitlab-admin-service-account.yaml


echo API URL: $(kubectl cluster-info | grep 'Kubernetes master' | awk '/http/ {print $NF}')
echo CERTIFICATE:
echo $(kubectl get secret $(kubectl get secret | grep default-token | awk '{print $1}') -o jsonpath="{['data']['ca\.crt']}" | base64 --decode)
echo TOKEN:
echo $(kubectl -n kube-system get secret $(kubectl -n kube-system get secret | grep gitlab-admin | awk '{print $1}') -o jsonpath="{['data']['token']}" | base64 --decode)