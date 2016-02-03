#!/usr/bin/env bash

if [ ! -z "$ADAPTER" ]; then export PROJECT=$ADAPTER; export DIR=src/Adapter;  fi
if [ ! -z "$LIBRARY" ]; then export PROJECT=$LIBRARY; export DIR=src;  fi

if [ $ADAPTER == 'MongoDB' ]
then
    export MONGODB_HOST="localhost:27017"
    export MONGODB_DATABASE="test"
    export MONGODB_COLLECTION="cache"
fi

printf "Adapter: $ADAPTER\n"
printf "Library: $LIBRARY\n"
printf "Directory: $DIR/$PROJECT\n"