#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "hugo" "hugo version"

# Report result
reportResults
