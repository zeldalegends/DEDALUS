#!/bin/bash

# To create a new access token:
# https://github.com/settings/tokens/new

# To initialiaze a new GitHub repository:
# echo "# FIWARE" >> README.md
# git init
# git add README.md
# git commit -m "first commit"
# git branch -M main
# git remote add origin git@github.com:zeldalegends/FIWARE.git
# git push -u origin main

git config user.email gamesup@libero.it
git config user.name zeldalegends

echo -e "\033[0;36m🟩 GitHub logs \033[0m"
git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"
read key
echo -e "\033[0;36m🟩 GitHub status \033[0m"
git status
read key

git add .
git commit -m "commit for local changes"
echo -e "\033[0;36m🟦 GitHub credentials \033[0m"
echo Username: zeldalegends
echo Password: $(cat .token)
cat .token | clip
git push origin
