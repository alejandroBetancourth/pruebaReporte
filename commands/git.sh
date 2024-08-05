echo ""
echo -e "\e[1;31m =================================== \e[0m"
echo -e "\e[1;31m Control de versiones \e[0m"
echo -e "\e[1;31m =================================== \e[0m"
echo ""

BRANCH_NAME="test-$(date +%d/%m/%Y-%N)"

git checkout -b $BRANCH_NAME
echo -e "\e[1;31m =================================== \e[0m"
git add .
echo -e "\e[1;31m =================================== \e[0m"
git commit -m "test run on $(date +%d/%m/%Y/%H:%M:%S) "
echo -e "\e[1;31m =================================== \e[0m"

git push origin $BRANCH_NAME
echo -e "\e[1;31m =================================== \e[0m"

git checkout main
echo -e "\e[1;31m =================================== \e[0m"

git merge $BRANCH_NAME
echo -e "\e[1;31m =================================== \e[0m"

git push origin main
echo -e "\e[1;31m =================================== \e[0m"
