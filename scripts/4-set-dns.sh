#!/bin/bash

gcloud dns --project=team529-demos record-sets transaction start --zone=team529-demos
gcloud dns --project=team529-demos record-sets transaction add 35.204.129.247 --name=\*.blue-green.demo.team529.nl. --ttl=60 --type=A --zone=team529-demos
gcloud dns --project=team529-demos record-sets transaction execute --zone=team529-demos