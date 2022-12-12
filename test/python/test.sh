#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "python" "python -c \"print('hello world')\""

# Report result
reportResults
