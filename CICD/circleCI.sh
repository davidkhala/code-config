#!/usr/bin/env bash
set -e
setup() {
    mkdir -p .circleci
    touch .circleci/config.yml
    if vi --version >/dev/null; then
        vi .circleci/config.yml
    fi
}
$1
