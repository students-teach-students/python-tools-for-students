#!/usr/bin/bash

# Run this in gitbash with administrator rights, if you are on windows
# and the docs won't build properly.
export MSYS=winsymlinks:nativestrict

function relink_doc_file(){
    source_path=$1
    target_path=$2
    ln -srf $source_path $target_path
    git update-index --no-skip-worktree $target_path
}

relink_doc_file ../README.md readme.md
relink_doc_file ../CONTRIBUTING.md contributing.md
relink_doc_file ../material/cheat_sheets.md material/cheat_sheets.md
relink_doc_file ../material/tutorials.md material/tutorials.md
