#!/usr/bin/env bash

INTEGRATION_TEST_VERSION="0.7.0"

./build/setEnvVariables.sh
if [ ! -z ${ADAPTER+x} ]; then DIR=src/Adapter; PROJECT=$ADAPTER; fi
if [ ! -z ${LIBRARY+x} ]; then DIR=src;  PROJECT=$LIBRARY; fi
printf "\n****** Building project: $PROJECT ******\n"


if [ $ADAPTER == 'MongoDB' ]
then
    MONGODB_HOST="localhost:27017"
    MONGODB_DATABASE="test"
    MONGODB_COLLECTION="cache"
fi