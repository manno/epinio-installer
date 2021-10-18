FROM alpine

ARG HELM_VERSION=3.7.0
ARG KUBECTL_VERSION=1.22.2
ARG EPINIO_VERSION=0.1.3

ENV BASE_URL="https://get.helm.sh"
ENV TAR_FILE="helm-v${HELM_VERSION}-linux-amd64.tar.gz"
RUN apk add --update --no-cache curl ca-certificates bash git && \
    curl -sL ${BASE_URL}/${TAR_FILE} | tar -xvz && \
    mv linux-amd64/helm /usr/bin/helm && \
    chmod +x /usr/bin/helm && \
    rm -rf linux-amd64

RUN curl -sLO https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    mv kubectl /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl

RUN apk add --update --no-cache jq

RUN curl -sLO https://github.com/epinio/epinio/releases/download/v${EPINIO_VERSION}/epinio-linux-amd64 && \
    mv epinio-linux-amd64 /usr/bin/epinio && \
    chmod +x /usr/bin/epinio

WORKDIR /work
