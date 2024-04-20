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

# git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"
# git status
git add .
git commit -m "first commit"
echo -e "\033[0;36m🟦 CREDENTIALS \033[0m"
echo Username: zeldalegends
echo Password: $(cat .token)
git push origin
