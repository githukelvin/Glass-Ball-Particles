#! /bin/bash

echo "Enter the name of the file to be pushed or . for all files"
read file
git add $file

echo "Commit for the push of the file"
read commit

git commit -m "$commit"

echo "Branch of the pushed data"
read branch
git push -u origin $branch