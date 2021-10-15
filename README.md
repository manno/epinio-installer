# How to use

    kubectl apply -f install/

# Building Locally

    docker build -t  ghcr.io/manno/epinio-installer:latest .
    k3d image import  ghcr.io/manno/epinio-installer:latest
    kubectl apply -f install/
