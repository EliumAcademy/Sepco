# add, commit recent changes
git add .
git commit -m 'building'
git checkout master
# build new gitbook
gitbook build
# copy it out of the way for branch change
# f to overwirte last publication
<<<<<<< HEAD
cp -rf ./_book ../book-holder
=======
cp -rf ./_book/. ../book-holder/ 
>>>>>>> 527fa16c5ce892d27f6c2517b2029072b47a98a4
# commit recent build
git add .
git commit -m 'publishing'
# push newest source
<<<<<<< HEAD
git push origin master
=======
# git push origin master
>>>>>>> 527fa16c5ce892d27f6c2517b2029072b47a98a4
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
<<<<<<< HEAD
#  this script requires a file structure like this:
# 
#	 ** a host directory, empty but for the cloned repo **
# 	|
# 	|- pathbook -> the cloned repo
# 		|- the book md (when not on gh-pages)
=======
#  Recommended file structure for using this script
# 
#	| ## documents, desktop, whatevs ##
# 	|
# 	|- gitbooking ## -> contains only these two folders, ever
# 		|- gitbook ## -> SUMMARY, README, markdowns, config, ...
#		|- book-holder ## -> to stash built gitbook while changing branches
>>>>>>> 527fa16c5ce892d27f6c2517b2029072b47a98a4
