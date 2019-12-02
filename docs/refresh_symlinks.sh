#!/usr/bin/bash

# Run this in gitbash with administrator rights, if you are on windows
# and the docs won't build properly.
export MSYS=winsymlinks:nativestrict
ln -srf ../README.md readme.md
ln -srf ../CONTRIBUTING.md contributing.md
ln -srf ../material/cheat_sheets.md material/cheat_sheets.md
ln -srf ../material/tutorials.md material/tutorials.md
