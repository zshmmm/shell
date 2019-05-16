#!/bin/bash
#
# zhuzhu 2019-05-016
# 
# Env OS: CentOS Linux release 7.1.1503 (Core), BashShell: GNU bash, version 4.2.46(1)-release (x86_64-redhat-linux-gnu)
# 
# git: https://github.com/zshmmm/shell.git
# 
# important_signal.sh
#

exit_trap() {
    str=$(random_str)
    echo -en "\033[3;0H"
    echo -e "\n...You can't do this $str !!!..."
}

random_str() {
    seq=(-_- @_@ =_= ~_~ ^_^)
    num_seq=${#seq[@]}
    random_num=$((RANDOM%num_seq))
    echo ${seq[$random_num]}
}

trap 'exit_trap' 1 2 9 15


clear
echo "My pid is: $$"

intime='0.5'
tcount="0"

while :
do
    tcount=$((tcount+1))
    echo -en "\033[2;0H"
    case $tcount in
        "1") echo -e '-' "\b\b\c"
            sleep $intime
            ;;
        "2") echo -e \\ "\b\b\c"
            sleep $intime
            ;;
        "3") echo -e \| "\b\b\c"
            sleep $intime
            ;;
        "4") echo -e / "\b\b\c"
            sleep $intime
            ;;
        *) tcount="0"
            ;;
    esac
done

