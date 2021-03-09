#!/bin/bash
if [[ $# -eq 1 ]]; then
    COMMIT_MSG=$1
else
    COMMIT_MSG="latest"
fi

REPO_DIR=../dynatrace-perfclinics.github.io
echo "Compile codelabs"
npm run build

# gulp dist is creating a symbolic link to codelabs, but since we are shipping only the dist directory we need
# to copy the codelabs inside the dist directory
#rm -rf dist/codelabs
#cp -r codelabs dist/

echo "Copy distribution to publish directory" 
cp -r dist/* $REPO_DIR

echo "Change to directory" 
cd $REPO_DIR  

echo "Add changes" 
git add .
echo "Commit changes" 
git commit -m $COMMIT_MSG
echo "Push changes" 
git push origin master
echo "Comeback"
cd -