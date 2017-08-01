# # checkout to the gh-pages branch
# git checkout gh-pages
# # pull the latest updates
# git pull janke gh-pages --rebase
# # install the plugins and build the static site
# gitbook install && gitbook build
# # copy the static site files into the current directory.
# cp -R _book/* .
# # remove 'node_modules' and '_book' directory
# git clean -fx node_modules
# git clean -fx _book
# # add all files
# git add .
# # commit
# git commit -a -m "update path"
# # push to the origin
# git push janke gh-pages
# # checkout to the master branch
# git checkout master

# rewriting my own

git add .
git commit -m 'publishing'
cd _book
rm -rf scripts