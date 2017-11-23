# add, commit recent changes
git add .
git commit -m 'building'
git checkout master
# pull other changes
git pull origin master
# build new gitbook
gitbook build
# copy it out of the way for branch change
# f to overwirte last publication
cp -rf ./_book/. ../book-holder/ 
# delete _book folder
# rm -rf ./_book
# commit recent build
git add .
git commit -m 'publishing'
# push newest source
# git pull origin master
# git push origin master
# switch to gh-pages branch
git checkout gh-pages
# copy the new book in
# f to overwrite last publication
cp -rf ../book-holder/. ./
# commit changes
git add .
git commit -m 'publishing'
# publish changes
git push origin gh-pages
# return to master
git checkout master





################################################
#  Recommended file structure for using this script
# 
#	| ## documents, desktop, whatevs ##
# 	|
# 	|- gitbooking ## -> contains only these two folders, ever
# 		|- gitbook ## -> SUMMARY, README, markdowns, config, ...
#		|- book-holder ## -> to stash built gitbook while changing branches