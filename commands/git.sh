
BRANCH_NAME="test-$(date +%d/%m/%Y-%N)"

git checkout -b $BRANCH_NAME

git add .
git commit -m "test run on $(date +%d/%m/%Y/%H:%M:%S) "

git push origin $BRANCH_NAME

git checkout main

git merge $BRANCH_NAME

git push origin main
