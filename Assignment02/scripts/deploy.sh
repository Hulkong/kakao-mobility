#/bin/bash

# Deploy the web docker container and run ia as a process on the cluster
kubectl apply -f manifests/5_deploy_using_local_registry.yaml

# Expose the service
kubectl apply -f manifests/6_service_using_local_registry.yaml