#!/bin/bash
reply=""
while [ "$reply" != "y" ] && [ "$reply" != "n" ] || [ "$reply" == "" ]
do
    echo -e "\033[1;32mVoulez vous push votre travail sur git ? [y/n]\033[0m"
    read reply
    if [ "$reply" == "n" ]
    then
        echo -e "\033[1;31mOk, au revoir !"
        exit 0
    fi
done
git add . > /dev/null 2>&1
retour=$?
if [ $retour -ne 0 ]
then
    echo -e "\033[1;31mError : No such git repository"
    exit 0
fi
commit_msg=""
while [ "$commit_msg" == "" ]
do
    echo -ne "\033[1;33mMessage de commit: \033[0;33m"
    read commit_msg
    if [ "$commit_msg" == "" ]
    then
        echo -e "\033[1;31mError : The commit message can't be empty"
    fi
    echo -ne "\033[0m"
done
git commit -m "$commit_msg" > /dev/null 2>&1
git push > /dev/null 2>&1
echo -e "\033[1;32mPush done !"
