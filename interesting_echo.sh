#!/bin/bash
#
# zhuzhu 2019-05-09
# 
# Env OS: CentOS Linux release 7.1.1503 (Core), BashShell: GNU bash, version 4.2.46(1)-release (x86_64-redhat-linux-gnu)
# 
# git: https://github.com/zshmmm/shell.git
# 

stty intr undef
stty -echo
clear

Corp="Corpright 2018-2019 xxx xxx All Rights Reserved"
Welcome="Welcome Use This xxx Tools!"
Contact="WX: xxxxxxxxxx, QQ: xxxxxx, TEL: 138xxxxxxxx"
Git="Download: https://github.com/zshmmm/shell.git"

waitt(){
    speed=0.05
    sleep $speed
}

loading(){
    echo -en "\033[?25l"
    i=1
    while [ $i -le 100 ]
        do
        echo -en "=>"
        echo -en "\033[0;106H"
        if [ $i -eq 100 ]
        then
            echo -en "\033[K"
            echo -en "load done!"
        else
            echo -en "loading... $i%"
        fi
        echo -en "\033[0;$((i+1))H"
        waitt
        let i++
    done
    echo -en "\033[0;102H"
    i=0
    while [ $i -le 10 ]
    do
        echo -en "\b/"
        waitt
        echo -en "\b-"
        waitt
        echo -en "\b\\"
        waitt
        echo -en "\b|"
        waitt
        let i++
    done
    echo -en "\b "
    echo -en "\n\033[?25h\n"
}

printstr(){
    echo -en "\033[47;36m" 
    echo -en "\n\n\t\t"
    echo -e $1 | awk -F '' '{for(i=1;i<=NF;i++){printf $i; system("sleep 0.1")}; printf "\n"}'
    echo -en "\033[0m"
}

loading

printstr "$Welcome"
printstr "$Contact"
printstr "$Git"
printstr "$Corp"

echo -en "\n\n\t\t\n"
stty intr ^c
stty echo
