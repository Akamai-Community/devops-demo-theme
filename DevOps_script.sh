#!/usr/bin/env bash

git_commit(){
    git add -A
    git commit -m "Quick HTML change"?
    git push -u origin 0cdc3be8-7cf3-4b19-b4f3-3a4db8107c73
}

fast_purge(){
    akamai purge --edgerc ~/Downloads/edgerc --section purge delete https://devops-demo.akamai.com/0cdc3be8-7cf3-4b19-b4f3-3a4db8107c73/index.html
}

git_commit ; fast_purge