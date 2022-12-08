#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "latex" "tex -version"

# Report result
reportResults
