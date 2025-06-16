#! /usr/bin/env bash

echo "Hello $USER!"

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
    3) echo "Not implemented!";;
    4) echo "Not implemented!";;
    *) echo "Invalid option!";;
    esac

done