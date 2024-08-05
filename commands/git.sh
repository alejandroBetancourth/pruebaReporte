echo "--------------------------"
echo "Control de versiones" 
echo "--------------------------"

BRANCH_NAME="test-$(date +%d/%m/%Y-%N)"

git checkout -b $BRANCH_NAME
echo '-----------------------------'
git add .
echo '-----------------------------'
git commit -m "test run on $(date +%d/%m/%Y/%H:%M:%S) "
echo '-----------------------------'

git push origin $BRANCH_NAME
echo '-----------------------------'

git checkout main
echo '-----------------------------'

git merge $BRANCH_NAME
echo '-----------------------------'

git push origin main
echo '-----------------------------'
