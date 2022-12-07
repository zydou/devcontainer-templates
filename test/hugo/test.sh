#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "hugo" [ $(hugo version | grep hugo) ]

# Report result
reportResults
