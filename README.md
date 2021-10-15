# How to use

    kubectl apply -f install/

# Build Helm

    helm package chart
    helm install epi epinio-0.0.0.tgz

# Building Locally

    docker build -t  ghcr.io/manno/epinio-installer:latest .
    k3d image import  ghcr.io/manno/epinio-installer:latest
    kubectl apply -f install/
