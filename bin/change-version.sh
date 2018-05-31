#!/bin/bash

echo "Mock changing version"

VER=$1
echo "Modifying Schema versions to: $VER"
echo $1 > VERSION