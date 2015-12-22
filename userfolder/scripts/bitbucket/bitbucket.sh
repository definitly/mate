#!/bin/sh


git init
git remote add origin git@bitbucket.org:vcore/$1.git
git add .

git commit -n
git push -u origin master