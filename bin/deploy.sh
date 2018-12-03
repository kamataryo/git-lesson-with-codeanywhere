bundle exec rake build
cd _site
git init
git remote add origin git@github.com:kamataryo/git-lesson-with-codeanywhere.git
git checkout gh-pages
git push -f origin gh-pages
rm -rf .git
