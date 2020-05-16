#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1_wMsyqe0AB2w2FhCTMoX0su4WRuMubo0" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1_wMsyqe0AB2w2FhCTMoX0su4WRuMubo0" -o resources.tar.gz
tar -zxvf resources.tar.gz
rm resources.tar.gz

echo Download finished.
