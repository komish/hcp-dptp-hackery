#!/usr/bin/env bash

# TODO... make more robust.

echo "Starting demo execution of preflight..."
export PFLT_LOGLEVEL=trace
which preflight &>/dev/null && preflight check operator "${PREFLIGHT_TEST_ASSET}"
echo "Ending demo execution of preflight..."