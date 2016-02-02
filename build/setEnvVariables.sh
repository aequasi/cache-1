#!/usr/bin/env bash

export INTEGRATION_TEST_VERSION="0.7.0"

if [ ! -z "$ADAPTER" ]; then PROJECT=$ADAPTER; DIR=src/Adapter;  fi
if [ ! -z "$LIBRARY" ]; then PROJECT=$LIBRARY; DIR=src;  fi

if [ $ADAPTER == 'MongoDB' ]
then
    export MONGODB_HOST="localhost:27017"
    export MONGODB_DATABASE="test"
    export MONGODB_COLLECTION="cache"
fi