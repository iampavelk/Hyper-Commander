About
In the time of DOS, a popular file manager called Norton Commander appeared. The usability and a visual interface were the keys to its rise. Let's make your own commander with this Bash project.


Link https://hyperskill.org/projects/327

Stage 1

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