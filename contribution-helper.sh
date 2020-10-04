#!/usr/bin/env bash

compgen -c > binaries.txt

echo "Found $(wc -l binaries.txt) binaries in PATH"
