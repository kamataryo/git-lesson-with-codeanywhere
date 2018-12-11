#!/usr/bin/env bash

if [[ $CI == 'true' && $TRAVIS_BRANCH != 'master' ]]; then
  echo 'not running deploy on CI environment and only with `master` branch.'
  exit 0
fi

bundle exec rake build
cd _site
git init
git remote add origin git@github.com:kamataryo/git-lesson-with-codeanywhere.git
git add .
git commit -m "build"
git checkout -b gh-pages
git push -f origin gh-pages
rm -rf .git
