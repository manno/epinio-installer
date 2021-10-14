    docker build -t suse.dev/epi-install:latest .
    k3d image import suse.dev/epi-install:latest
    kubectl apply -f install/
