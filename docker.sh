#!/bin/bash

echo "Building eureka docker image..." &&
docker build . -t ngolik/eureka &&
echo "Built eureka docker image..." &&
docker-compose -f docker-compose.yml up -d

echo "Building gateway docker image..." &&
cd ../api-gateway &&
docker build . -t ngolik/api-gateway &&
echo "Built gateway docker image..." &&