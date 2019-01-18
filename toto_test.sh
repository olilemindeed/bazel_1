#!/bin/bash

set -euo pipefail

CURRENT_DIR="$(pwd)"
echo ${CURRENT_DIR}

source "toto.txt"

function test_toto_content {

  if [ $TOTO != "gah" ]; then
    # This would be a failure case.
    echo expected TOTO to be toto1 but was $TOTO
    exit 1
  fi
}

test_toto_content
