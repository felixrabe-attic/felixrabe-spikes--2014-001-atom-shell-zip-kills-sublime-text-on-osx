#!/usr/bin/env bash

# mkdir new-directory && cd new-directory
if [[ ! -f atom-shell-v0.16.2-darwin-x64.zip ]] ; then
  curl -LO https://github.com/atom/atom-shell/releases/download/v0.16.2/atom-shell-v0.16.2-darwin-x64.zip
fi
'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' .

( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )
( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )
( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )
( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )
( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )
