#!/bin/bash

# copy snips directory and git push 

cd /home/nk/.vim/bundle/vim-snippets 
cp -rf UltiSnips /home/nk/Programming/Projects/Config
sleep 2s
cd /home/nk/Programming/Projects/Config
git add . 
git commit -m 'Snips Update'
git push 



