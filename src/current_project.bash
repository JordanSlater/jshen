#!/bin/bash

function cd_proj() {
  if [ -z "${CURRENT_PROJECT_DIRECTORY}" ]; then
    echo "Set CURRENT_PROJECT_DIRECTORY"
  else
    cd "$CURRENT_PROJECT_DIRECTORY"
  fi
}
