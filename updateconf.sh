#!/bin/sh

# remove the old config
rm ./config.h

# copy the new defaults to config.h
cp ./config.def.h ./config.h

echo config.h updated!
