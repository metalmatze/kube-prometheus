#!/usr/bin/env bash
# exit immediately when a command fails
set -e
# only exit with zero if all commands of the pipeline exit successfully
set -o pipefail
# error on unset variables
set -u
# print each command before executing it
set -x

curl -Lo kind https://github.com/kubernetes-sigs/kind/releases/download/0.2.1/kind-linux-amd64
chmod +x kind

./kind create cluster
export KUBECONFIG="$(./kind get kubeconfig-path)"

kubectl apply -f manifests
make test-e2e
