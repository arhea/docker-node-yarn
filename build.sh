#!/bin/bash

docker build -f ./node-4/Dockerfile -t arhea/yarn:4 .
docker build -f ./node-6/Dockerfile -t arhea/yarn:6 .

docker build -f ./node-4-onbuild/Dockerfile -t arhea/yarn:4-onbuild .
docker build -f ./node-6-onbuild/Dockerfile -t arhea/yarn:6-onbuild .

docker push arhea/yarn:4
docker push arhea/yarn:6
docker push arhea/yarn:4-onbuild
docker push arhea/yarn:6-onbuild
