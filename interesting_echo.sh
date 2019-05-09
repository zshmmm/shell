#!/bin/bash

stty intr undef
stty -echo
clear

Corp="Corpright 2018-2019 xxx xxx All Rights Reserved"
Welcome="Welcome Use This xxx Tools!"
Contact="QQ: xxxxxx, TEL: 138xxxxxxxx"
Git="Download: https://github.com/zshmmm/shell.git"

waitt(){
    sleep $1
}

loading(){
    speed=0.05
    echo -en "\033[?25l"
    i=1
    while [ $i -le 100 ]
        do
        echo -en "=>"
        echo -en "\033[0;106H"
        if [ $i -eq 100 ]
        then
            echo -en "load done!          ";
        else
            echo -en "loading... $i%";
        fi
        echo -en "\033[0;$((i+1))H"
        waitt $speed
        let i++
    done
    echo -en "\033[0;102H"
    i=0
    while [ $i -le 10 ]
    do
        echo -en "\b/"
        waitt $speed
        echo -en "\b-"
        waitt $speed
        echo -en "\b\\"
        waitt $speed
        echo -en "\b|"
        waitt $speed
        let i++
    done
    echo -en "\b "
    echo -en "\n\033[?25h\n"
}

printstr(){
    echo -en "\\033[47;36m" 
    echo -ne "\n\n\t\t"
    echo $1 | awk -F '' '{for(i=1;i<=NF;i++){printf $i; system("sleep 0.1")}; printf "\n"}'
    echo -en "\\033[0m"
}

loading
printstr "$Corp"
printstr "$Welcome"
printstr "$Contact"
printstr "$Git"

echo -ne "\n\n\t\t\n"
stty intr ^c
stty echo
