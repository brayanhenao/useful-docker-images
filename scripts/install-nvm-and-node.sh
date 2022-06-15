#!/bin/bash

latest_version_number=$(basename $(curl -fs -o/dev/null -w %{redirect_url} https://github.com/nvm-sh/nvm/releases/latest))
curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/"${latest_version_number}"/install.sh -o /tmp/install-nvm.sh && chmod +x /tmp/install-nvm.sh
./tmp/install-nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts