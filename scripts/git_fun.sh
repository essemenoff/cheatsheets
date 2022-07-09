#!/bin/bash

#prepare git folder
FOLDER=giiit2

mkdir $FOLDER
cd $FOLDER
git init
sleep 5
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# create branch and files
## create m1 file and commit
touch m1
git add .
git commit -m "added m1"

# create a new branch
git checkout -b ft
sleep 2
## create ft1 file and commit
touch ft1
git add .
git commit -m "added ft1"

## create ft2 file
touch ft2
git add .
git commit -m "added ft2"

# checkout branch master
git checkout master
sleep 2

## create m2 file and commit
touch m2
git add .
git commit -m "added m2"
git checkout ft
git status

#rebase
git rebase -i master
git status
