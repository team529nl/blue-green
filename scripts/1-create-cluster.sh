#!/bin/bash


gcloud beta container clusters create "blue-green-cluster-1" \
   --cluster-version=1.12.7-gke.10 \
   --machine-type=g1-small \
   --image-type=COS \
   --disk-type=pd-standard \
   --disk-size=30 \
   --metadata disable-legacy-endpoints=true \
   --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" \
   --preemptible \
   --num-nodes=3 \
   --enable-cloud-logging \
   --enable-cloud-monitoring \
   --no-enable-ip-alias \
   --addons HorizontalPodAutoscaling,HttpLoadBalancing \
   --enable-autoupgrade \
   --enable-autorepair \