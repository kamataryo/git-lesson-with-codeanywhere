#!/usr/bin/env bash

bundle exec rake build
cd _site
git init
git remote add origin git@github.com:kamataryo/git-lesson-with-codeanywhere.git
git add .
git commit -m "build"
git checkout -b gh-pages
git push -f origin gh-pages
rm -rf .git
