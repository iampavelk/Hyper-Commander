#! /usr/bin/env bash

echo "Hello $USER!"

function dir() {
    echo "The list of files and directories:"
    arr=(*) 
    for item in "${arr[@]}"; do
        if [[ -f "$item" ]]; then
            echo "F $item"
        elif [[ -d "$item" ]]; then
            echo "D $item"
        fi
    done
    dir_menu
}

function dir_menu() {
    echo "---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------"
    read -p "" choice

    if [[ "$choice" == "0" ]]; then
        return
    elif [[ "$choice" == "up" ]]; then
        echo "Not implemented!"
    elif [[ -f "$choice" ]]; then
       echo "Not implemented!"
    elif [[ -d "$choice" ]]; then
       echo "Not implemented!"   
    else
        echo "Invalid input!"
    fi
    dir
}

while true; do
    echo "------------------------------
| Hyper Commander            |
| 0: Exit                    |
| 1: OS info                 |
| 2: User info               |
| 3: File and Dir operations |
| 4: Find Executables        |
------------------------------"
    read -p "" choice

    case $choice in
    0) echo "Farewell!"; exit 0 ;;
    1) echo $(uname -no);;
    2) echo $(whoami);;
    3) dir;;
    4) echo "Not implemented!";;
    *) echo "Invalid option!";;
    esac

done