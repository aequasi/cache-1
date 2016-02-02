#!/usr/bin/env bash

INTEGRATION_TEST_VERSION="0.7.0"

if [ ! -z "$ADAPTER" ]; then PROJECT=$ADAPTER; DIR=src/Adapter;  fi
if [ ! -z "$LIBRARY" ]; then PROJECT=$LIBRARY; DIR=src;  fi
printf "\n****** Building project: $PROJECT ******\n"


if [ $ADAPTER == 'MongoDB' ]
then
    MONGODB_HOST="localhost:27017"
    MONGODB_DATABASE="test"
    MONGODB_COLLECTION="cache"
fi