# Epinio Install Experiments

## Building the Image Locally

See .github/workflows/container-images.yml

    docker build -t  ghcr.io/manno/epinio-installer:latest .
    k3d image import  ghcr.io/manno/epinio-installer:latest

## Option: Kubernetes Job

    kubectl apply -f fleet/install/


## Option: Helm

    helm package chart
    helm install epi epinio-0.0.0.tgz

## Option: Rancher Fleet

    kubectl apply -f fleet/cr-fleet-install.yml
