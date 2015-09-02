# sql_split
An awk script to split SQL commands without breaking the SQL

This project is still very much a work in progress, but without much progress. It really is not much more than a quickly thrown together script to represent a functionality that I need once or twice a year. It breaks a SQL file up into segments delimited by lines ending in a semicolon. Once the file is larger than the min_file_size parameter, sql_split will create a new file.

Usage:
awk -f sql_split.awk <filename>

TODO: Extract hard-coded variables and convert them to CLI parameters.
TODO: Create a help screen
TODO: Error checking
TODO: Add code that checks for escaped semicolons