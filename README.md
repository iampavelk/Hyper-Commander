About
In the time of DOS, a popular file manager called Norton Commander appeared. The usability and a visual interface were the keys to its rise. Let's make your own commander with this Bash project.


Link https://hyperskill.org/projects/327

Stage 1 Menu first

Description
First thing first. To use your program, you need a menu. Now, create the menu for your program by following the objectives below.

Objectives
Print the welcome message Hello current-user. Don't forget to replace current-user with the value stored in the USER environment variable;
Print the menu;
Wait for user input;
If the user input is listed but not 0, print Not implemented!
If the user input is not listed, print Invalid option!
If the user input is 0, print Farewell! and end the program, or else start over.
Use the code snippet below for the main menu.

------------------------------
| Hyper Commander            |
| 0: Exit                    |
| 1: OS info                 |
| 2: User info               |
| 3: File and Dir operations |
| 4: Find Executables        |
------------------------------

Stage 2 Who am I?

Description
Let's start with a relatively simple task. Implement the menu item 1 and 2 by following the objectives below.

Objectives
Print the main menu like in the previous step and wait for the user input;
If the user input is 1, print operating system and node name with the help of the uname command;
If the user input is 2, print the user information with the help of the whoami command;
If input contains anything else than the above, keep the functionality from the previous step;

Stage 3 Files and directories

Description
Time to add some functionality to the menu item 3. Your task is to list the files and directories in the current location.

Objectives
Print the main menu as in the previous steps and wait for the user input;
If the user input is 3, print The list of files and directories:
List the files and directories by following the structure defined in the next line. First, print the type of the listed item (F for files and D for directories), and then the name of the listed item;
Print the file menu and wait for user input:
If the user input is up, print Not implemented!;
If the user input is a file or directory name, print Not implemented!;
If the user input is 0, return to the main menu;
If anything else, print Invalid input! and start over.
If input contains anything else than the above, keep the functionality from the previous steps.
Use the code snippet below for the file menu.

---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------

Use globbing to convert file and directory names to an array:

arr=(*)

You can also use a loop to test if an item is a file or directory:

for item in "${arr[@]}"; do
  if [[ -f "$item" ]]; then
    echo "do something"
  elif [[ -d "$item" ]]; then
    echo "do something else"
  fi
  echo "do another thing"
done

Stage 4 Navigate

Description
In this stage, extend the functionality of the menu item 3. By following the user input, navigate through directories.

Objectives
Print the main menu as in the previous steps and wait for the user input;
If the user input is 3 print The list of files and directories:;
List the files and directories;
Print the file menu and wait for user input;
If the user input is a directory name, change directory to it, list content, and start over with the file menu;
If the user input is up, change directory to the parent, list content, and continue with the file menu;
If the user input is a file name, print Not implemented!;
If the user input is 0, return to the main menu;
If anything else, print Invalid input! and start over.
If input contains anything else than the above, keep the functionality from the previous steps.

Stage 5 Read-only

Description
In this stage, implement file operations for the menu item 3 — delete, rename, and change permissions of the selected file.

Objectives
Print the main menu as in the previous steps and wait for the user input;
If the user input is 3, print The list of files and directories:
List the files and directories;
Print the file menu and wait for user input:
If the user input is a directory name, keep the functionality from the previous step;
If the user input is up, keep the functionality from the previous step;
If the user input is a file name:
Print the file options menu;
Wait for the user input
If the user input is 1:
Delete the file;
Print file-name has been deleted.
If the user input is 2:
Ask for a new file name Enter the new file name:;
Rename the file;
Print file-name has been renamed as new-file-name
If the user input is 3:
Give the read-and-write access to the owner, group, and others;
Print Permissions have been updated.;
Print the details of the file.
If the user input is 4:
Give the read-and-write access to the owner and group. Give read access to others;
Print Permissions have been updated.;
Print the details of the file.
If the user input is 0, go one level back;
If the user input is invalid, print the file options menu again;
After each valid operation, start from file menu.
If the user input is 0, return to the main menu;
If anything else, print Invalid input! and start over.
If input contains anything else than the above, keep the functionality from the previous steps.
Use the code snippet below for the file options menu:

---------------------------------------------------------------------
| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |
---------------------------------------------------------------------

