#! /usr/bin/env bash

echo "Hello $USER!"

function user_menu() {
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
        0) 
            echo "Farewell!"
            exit 1;;
        1) echo $(uname -no);;
        2) echo $(whoami);;
        3) dir;;
        4) exec;;
        *) echo "Invalid option!";;
    esac
}

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

function files() {
    echo "---------------------------------------------------------------------
| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |
---------------------------------------------------------------------"
    read -p "" choice
    file="$1"

    case $choice in
        0) dir_menu;;
        1) rm "$file" && echo "$file has been deleted.";;
        2) echo "Enter the new file name: " 
           read -p "" new_name
           mv "$file" "$new_name" && echo "$1 has been renamed as $new_name";;
        3) 
            chmod 666 "$file" && echo "Permissions have been updated." && ls -la $file;;
        4) 
            chmod 664 "$file" && echo "Permissions have been updated." && ls -la $file;;
        *) files $file;;
    esac

}

function dir_menu() {
    echo "---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------"
    read -p "" choice

    if [[ "$choice" == "0" ]]; then
        main
    elif [[ "$choice" == "up" ]]; then
        cd .. && dir
    elif [[ -f "$choice" ]]; then
       files "$choice"
    elif [[ -d "$choice" ]]; then
        cd "$choice" && dir
    else
        echo "Invalid input!"
    fi
    dir
}

function exec() {
    echo "Enter an executable name:"
    read -p "" exec_name
    found=$(which "$exec_name" 2>/dev/null)
    
    if [[ -n "$found" ]]; then
        echo "Located in: $found"
        echo "Enter arguments:"
        read -p "" args
        $exec_name $args
    else
        echo "The executable with that name does not exist!"
    fi
}

main() {
    while true; do
    user_menu
    done
}

main
