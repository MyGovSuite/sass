#!/usr/bin/env bash
#
# Required globals:
#   SASS_FILE
#   SASS_OUTPUT_PATH
#

# shellcheck source=/dev/null
source "$(dirname "$0")/common.sh"

info "Executing the pipe..."

validate() {
    # required parameters
    : SASS_FILE="${SASS_FILE:?'SASS_FILE variable missing.'}"
    : SASS_OUTPUT_PATH="${SASS_OUTPUT_PATH:?'SASS_OUTPUT_PATH variable missing.'}"
}

run_pipe() {
    sass "$SASS_FILE" "$SASS_OUTPUT_PATH"

    success "Execution finished."
}

validate
run_pipe