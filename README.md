# Bash Practice Exercises

## Exercise 1: Shell Discovery
**Objective:** Familiarize yourself with the terminal interface and basic commands.
**Skills Practiced:** Basic terminal usage, understanding of `pwd`, `ls`, `cd`, `mkdir`.
**Instructions:**
1. Open the terminal.
2. Use the `pwd` command to display the current working directory.
3. Use `ls` to list the files and folders in the current directory.
4. Change directories with `cd` and navigate to the home directory.
5. Create a new directory named `bash_practice` using `mkdir`.
6. Navigate into this directory.

## Exercise 2: File and Folder Manipulation
**Objective:** Learn to create, move, rename, and delete files and folders.
**Skills Practiced:** Creation, copying, renaming, and deletion of files (`touch`, `cp`, `mv`, `rm`), directory creation and navigation.
**Instructions:**
1. In the `bash_practice` directory, create an empty file named `file_test.txt` with `touch`.
2. Write "This is a test" into `file_test.txt` using `echo "This is a test" > file_test.txt`.
3. Copy `file_test.txt` to a new file named `copied_file_test.txt` with `cp`.
4. Rename `copied_file_test.txt` to `renamed_file.txt` with `mv`.
5. Delete `renamed_file.txt` with `rm`.
6. Create a sub-directory in `bash_practice` named `test_directory` with `mkdir` and move `file_test.txt` into it with `mv`.

## Exercise 3: Basic Command Usage
**Objective:** Master the use of commands like `cat`, `head`, `tail`, `grep`, and `|` (pipe).
**Skills Practiced:** Reading files (`cat`), exploring content with `head` and `tail`, searching files with `grep`, chaining commands with `|` (pipe).
**Instructions:**
1. Create a new file named `log.txt` and add several lines of text to it.
2. Use `cat` to display the contents of `log.txt`.
3. Display only the first 5 lines of `log.txt` with `head`.
4. Display the last 3 lines of `log.txt` with `tail`.
5. Use `grep` to find and display all lines in `log.txt` containing the word "error".
6. Combine `cat`, `grep`, and `|` to filter and display only lines containing "error" without using `grep` directly on the file.

## Exercise 4: Introduction to Bash Scripts
**Objective:** Write a simple script to automate tasks.
**Skills Practiced:** Writing simple scripts, executing commands (`date`, `ls`), making a script executable with `chmod`.
**Instructions:**
1. Create a script named `script_test.sh`.
2. Inside, write a script that displays the date, then lists the contents of the current directory.
3. Make the script executable with `chmod +x script_test.sh`.
4. Execute the script using `./script_test.sh`.

## Exercise 5: Variables and Loops
**Objective:** Understand the use of variables and loops in Bash.
**Skills Practiced:** Using variables, reading user input with `read`, conditional structures (`if`, `else`), and loops (`for`).
**Instructions:**
1. Modify `script_test.sh` to prompt the user to enter a folder name.
2. The script should check if the folder exists. If it doesn't exist, display an error message and exit the script.
3. If it exists, the script should display all files in the folder using a `for` loop.

## Exercise 6: String Manipulation
**Objective:** Manipulate strings in Bash.
**Skills Practiced:** String manipulation (uppercase, lowercase, length, reversal), reading user input.
**Instructions:**
1. Write a script that prompts the user to enter a string.
2. The script should then display the string in uppercase, lowercase, and its length.
3. Finally, the script should reverse the string and display it.

## Exercise 7: Functions in Bash
**Objective:** Learn to define and call functions in a Bash script.
**Skills Practiced:** Defining and using functions, passing parameters to functions, conditional logic to check for palindromes.
**Instructions:**
1. Modify the previous script to encapsulate string manipulation operations in functions.
2. Add a function that checks if a string is a palindrome (reads the same forwards and backwards).
3. The script should prompt the user to enter a string and use these functions to perform the operations and display the results.

## Exercise 8: Interaction with Processes
**Objective:** Learn to interact with system processes using Bash.
**Skills Practiced:** Listing processes with `ps`, sending signals to processes with `kill`, handling permissions, and checking exit codes.
**Instructions:**
1. Write a script that lists all currently running processes on the system.
2. The script should allow the user to enter a process ID and send a signal to terminate it.
3. Ensure that the script checks if the user has the necessary permissions to terminate the process and handles potential errors.

## Exercise 9: Log File Analysis
**Objective:** Practice reading and analyzing log files.
**Skills Practiced:** Searching and counting in files with `grep`, using variables to store results, basic log analysis.
**Instructions:**
1. Provide an example log file.
2. Write a script that analyzes the log file to find and count the occurrences of different severity levels (e.g., ERROR, INFO, DEBUG).
3. The script should generate a report with the number of occurrences of each severity level (ERROR, INFO, DEBUG).
   [Sample log file](dev.log)

## Exercise 10: Folder Monitoring Script
**Objective:** Create a script that monitors changes in a specific directory.
**Skills Practiced:** Monitoring filesystems with `inotifywait` (or similar method), handling file events, logging.
**Instructions:**
1. Write a script that monitors a directory specified by the user for any modifications (new files, deleted files, file modifications).
2. Whenever a modification is detected, the script should record the type of modification, the name of the file involved, and the time it occurred in a log file.
3. The script should run in the background and check for modifications at regular intervals.

## Exercise 11: Grading Script with Function
**Objective:** Create a Bash script that evaluates a grade and displays an appreciation based on that grade. The script should be able to accept a grade either as a parameter when launched or by prompting the user to enter it if no parameter is given. The logic for evaluating the grade should be implemented in a function named `appreciation`.
**Skills Practiced:** Handling command-line arguments, advanced conditional structures, defining and calling functions, validating user input.
**Specifications:**
- If the grade is between 16 and 20, display "Excellent".
- If the grade is between 14 and 16 (exclusive), display "Good".
- If the grade is between 12 and 14 (exclusive), display "Fair".
- If the grade is between 10 and 12 (exclusive), display "Average".
- If the grade is less than 10, display "Insufficient".
  **Instructions:**
- The script should check if an argument is passed when launched. If so, that argument will be used as the grade to evaluate.
- If no argument is provided, the script should prompt the user to enter a grade.
- The entered or passed grade should be passed to the `appreciation` function, which will evaluate the grade and display the corresponding appreciation.
- Ensure that the grade is a valid number before proceeding with the evaluation.

## Exercise 12 - Directory Analysis
**Objective:** Develop a Bash script that counts and displays the number of regular files and subdirectories present in a specific directory. This directory can be provided as a parameter when launching the script or entered manually by the user if no parameter is provided.
**Instructions:**
1. The script should first check if an argument (the directory path) was provided when executed.
2. If an argument is present, use that directory for analysis.
3. If no argument is provided, prompt the user to enter a directory path manually.
4. Use appropriate commands to count the number of regular files and subdirectories in the targeted directory.
5. Display separately the total number of regular files and the total number of subdirectories found in the specified directory.

## Exercise 13 - Filtering Grades
**Objective:** Design a Bash script that reads and processes information from a predefined grade file named `GradeFile.txt`, located in the same directory as the script. The script should identify and display only the entries with a grade greater than or equal to 10.
**Instructions:**
1. Before executing the script, create a file named `GradeFile.txt` in the same directory as the script. This file should contain student data and their grades as indicated, with each entry on a new line.
2. The script should read the contents of `GradeFile.txt`.
3. For each line in the file, the script should extract the student's grade and check if it is greater than or equal to 10.
4. Display the lines corresponding to students who scored 10 or higher.


## Exercise 14 - Flag Exploration
**Objective:** Design a Bash script that interacts with a predefined list of countries and their flags in three distinct ways. The list includes: France, Italy, Japan, Spain, Korea, and the United States. This script should (1) display the icons of flags of all countries, (2) allow the user to select a country to display its specific flag, and (3) offer a guessing game where the user must identify the country corresponding to a displayed flag.
**Instructions:**
**Displaying Flags of All Countries:**
- The script should first display the flag icons of each listed country, one by one, on separate lines.

## Exercise 15 - Tic-Tac-Toe Game
**Objective:** Develop a Bash script that implements the tic-tac-toe game. This script should handle displaying the game grid, alternating turns between two players, recording each player's choices, updating the grid after each move, checking win conditions, and ensuring that chosen squares are available.
**Instructions:**
1. Grid Initialization: Start by creating an empty tic-tac-toe grid, which can be represented by a 3x3 array* (see Utils).
2. Displaying the Grid: Write a function to display the current grid at each turn so that players can see the moves already played.
3. Turn Management: Implement logic allowing both players to take turns. You can use a variable to track the current player (e.g., Player 1 and Player 2).
4. Selection and Storage of Choices: Prompt players to choose a square by entering coordinates (e.g., row and column). Verify that the chosen square is free before recording the player's choice and updating the grid.
5. Grid Update: After each validated choice, update the grid by marking the chosen square with the symbol of the current player (e.g., 'X' or 'O').
6. Victory Check: After each move, check if the current player has won. This involves checking rows, columns, and diagonals for a sequence of three identical symbols.
7. End of the Game: The game ends when a player wins or if all squares are filled without a winner (draw). Display the result and offer to play again if desired.
