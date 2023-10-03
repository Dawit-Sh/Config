#!/bin/bash 

cp -rf ~/.logseq /home/nk/Programming/Projects/Config
cd /home/nk/Programming/Projects/Config
git add . && git commit -m 'update'
git push 
