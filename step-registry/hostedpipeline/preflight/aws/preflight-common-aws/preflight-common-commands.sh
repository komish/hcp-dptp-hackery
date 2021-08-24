#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail
set -x

# This is a test!
TEST_ASSET_URI="${TEST_ASSET_URI:-quay.io/komish/preflight-test-bundle-passes}"

echo "Starting Preflight Step Test - This should not run in production!"
echo "The test asset is $TEST_ASSET_URI"
echo "The kubeconfig is at $KUBECONFIG"
stat $KUBECONFIG
which preflight
preflight --help