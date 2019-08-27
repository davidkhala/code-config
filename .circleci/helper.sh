#!/usr/bin/env bash
set -e
nvm8() {
    export NVM_DIR="/opt/circleci/.nvm"
		[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
    echo BASH_ENV = $BASH_ENV
    echo 'export NVM_DIR="/opt/circleci/.nvm"' >> $BASH_ENV
    echo "[ -s \"$NVM_DIR/nvm.sh\" ] && . \"$NVM_DIR/nvm.sh\"" >> $BASH_ENV
    nvm install 8
    node --version
}
$1
