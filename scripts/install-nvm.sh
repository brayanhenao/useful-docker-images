#!/bin/bash

latest_version_number=$(basename $(curl -fs -o/dev/null -w %{redirect_url} https://github.com/nvm-sh/nvm/releases/latest))
curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/"${latest_version_number}"/install.sh -o install-nvm.sh && chmod +x install-nvm.sh
./install-nvm.sh && source ~/.bashrc