#!/usr/bin/bash

# Run this in gitbash with administrator rights, if you are on windows
# and the docs won't build properly.
export MSYS=winsymlinks:nativestrict
rm -f readme.md
ln -s ../README.md readme.md
rm -f contributing.md
ln -s ../CONTRIBUTING.md contributing.md
