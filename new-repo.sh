#! /bin/bash
echo "# AJAX-PART2" >> README.md
echo "/new-repo.sh /update.sh" >> .gitignore

git init

echo "Enter the files to be Pushed or . for all"
read files

git add $files

echo "Enter the commit for the push data"
read commit

git commit -m "$commit"

echo "Enter the the branch for the push data"
read branch
git branch -M $branch

echo "Enter the url for the git repository "
read url
git remote add origin $url

git push -u origin $branch
