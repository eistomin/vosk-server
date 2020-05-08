#!/bin/bash

set -e
set -x

for kind in vosk-server ru en; do
    docker build --squash --file Dockerfile.kaldi-${kind} --tag contextme/kaldi-${kind}:latest .
done

for kind in vosk-server ru en; do
    docker push contextme/kaldi-${kind}:latest
done
