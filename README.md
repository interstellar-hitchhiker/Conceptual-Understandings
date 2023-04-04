# Conceptual-understandings
This code is a command prompt (CMD) batch file that generates a conceptual understanding based on the fundamental concept and related concepts the user selects. IB MYP and DP teachers of English LA may find this helpful file to glean ideas about the relationship between key and subject-related concepts as a generalization.

**Here is a brief overview of how it works:**

  -It sets the color of the console window to light blue on black (color 17).
  
  -It sets the console window title to "MYP Language Acquisition conceptual understanding generator by Inquiring Practitioner (2023)".
  
  -It defines a label called "loop1" and clears the console screen.
  
  -It sets a variable called "folder" to the batch file folder path.
  
  -It sets a variable called "lookup" to the path of a file called "lookup.txt" in the batch file folder.
  
  -It displays a list of critical concepts and prompts the user to select one by typing a number.
  
  -It sets a variable called "kcname" to the name of the selected key concept.
  
  -It displays a list of related concepts and prompts the user to select two by typing a number.
  
  -It sets variables called "rcname1" and "rcname2" to the names of the selected related concepts.
  
  -It generates a conceptual understanding based on the selected key concept and related concepts.
  
  -Strengths of this CMD bat file include its simplicity and ease of use.  

**Further reading:**
The CMD code/file has several limitations compared to other languages, such as Python. It is not a programming language in the traditional sense but rather a shell language used for executing commands. 

Considering this is my first ever code for any OS, it is OK. Still, CMD has limited functionality and lacks features that make programming in other languages more straightforward, such as debugging tools, built-in data structures, and third-party libraries. 

Overall, this code is an interesting example of how to use CMD to create a simple interactive program. Future projects of mine will explore other languages like Python, which will be better for more complex tasks or projects requiring more advanced programming features.

The script first sets the "folder" variable to the path of the current directory and then sets the "lookup" variable to the path of the "lookup.txt" file in the same directory. 

The user is presented with a menu to select a key concept, numbered 1 to 4. Based on the user's choice, the script sets the "file" variable to the path of one of the four text files and the "kcname" variable to the name of the selected key concept.

The user is then prompted to select two related concepts from a list of 20 numbered 1 to 20. The script checks that the two related concepts are not the same and sets the "rcname1" and "rcname2" variables to the names of the selected related concepts.

The script then reads the selected text file line by line and uses the "findstr" command to search for lines that contain the selected related concepts. The "findstr" command matches the selected related concepts to the "rc1" and "rc2" tokens in the text file. If a match is found, the line is displayed to the user.

The batch and four text files must be in the same directory for the script to work.
