I can reproducably kill / crash a pristine Sublime Text 3 (build 3064) installation on OS X (10.9.4).

First, prepare the directory and ZIP file using the following commands:

    mkdir new-directory && cd new-directory
    if [[ ! -f atom-shell-v0.16.2-darwin-x64.zip ]] ; then
      # download 34 MB archive:
      curl -LO https://github.com/atom/atom-shell/releases/download/v0.16.2/atom-shell-v0.16.2-darwin-x64.zip
    fi
    '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' .

If you now unzip the file, it will every now and then kill Sublime Text 3, usually within three attempts:

    ( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )
    ( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )
    ( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )
    ( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )
    ( rm -rf tmp && mkdir tmp && cd tmp && unzip ../atom-shell-*.zip )

I suspect that creating a large amount of files with Sublime Text watching over them kills it.

Note that the crash occurs more likely if the Terminal is in the foreground. If you run `crash-sublime-text.sh` with the `subl .` line un-commented, Sublime Text may not crash.
