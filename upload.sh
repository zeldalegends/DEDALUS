#!/bin/bash
echo -e "\033[0;33mGIT INSTRUCTIONS AND UPLOAD \033[0m"
echo ""
echo -e "\033[0;36m🟦 CREATE ACCESS TOKEN \033[0m"
echo To create a new access token, go to: https://github.com/settings/tokens/new
echo ""
echo -e "\033[0;36m🟦 CLONE THE REPO AND CONFIG USER \033[0m"
echo git clone https://github.com/zeldalegends/HYPERRIDE
echo git config --global user.email "gamesup@libero.it"
echo cd HYPERRIDE
echo ""
echo -e "\033[0;36m🟦 LOG STATUS AND HISTORY \033[0m"
echo git status
echo "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
echo ""
echo -e "\033[0;36m🟦 COMMIT ALL CHANGES IN FOLDER \033[0m"
git add .
echo -e "\033[0;32mInsert the commit title and press CRTL+X...\033[0m"
read key
git commit
echo ""
echo -e "\033[0;33m🟨 CREDENTIALS FOR PUSH \033[0m"
echo Username: zeldalegends
echo Password: $(cat token)
echo -e "\033[0;36m🟦 PUSH TO MASTER BRANCH \033[0m"
git push
