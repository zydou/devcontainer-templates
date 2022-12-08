#!/bin/bash

FAILED=()

echoStderr()
{
    echo "$@" 1>&2
}

check() {
    LABEL=$1
    COMMAND=$2
    shift
    echo -e "\n🧪 Testing $LABEL"
    eval $COMMAND
    if [ $? -ne 0 ]; then
        echoStderr "❌ $LABEL check failed."
        FAILED+=("$LABEL")
        return 1
    else
        echo "✅  Passed!"
        return 0
    fi
}

reportResults() {
    if [ ${#FAILED[@]} -ne 0 ]; then
        echoStderr -e "\n💥  Failed tests: ${FAILED[@]}"
        exit 1
    else
        echo -e "\n💯  All passed!"
        exit 0
    fi
}
