# Treasure Hunt Script

This script is designed to find the coordinates of a treasure by performing a series of file manipulations and transformations. The script navigates through directories, decodes base64 encoded data, and performs character substitutions to reveal the treasure's coordinates.

## How the script works

**1. Navigate to the Target Directory:**

The script changes the current working directory to /home/html/inf/cursos/ci1001/tshell1.

**2. Extract Clues:**

It reads a file named PISTA1 and extracts a specific line using cut, head, and tail commands.

**3. Decode and Read Files:**

- The extracted line is treated as a file name, which is then base64 decoded.
- The script reads the decoded file to get further information.
- It then uses the content of this file to find another file in the current directory with a specific size.
- The script decodes this file content using the ROT13 cipher.

**4. Find Writable Directory:**

It searches for directories with write permissions using find and sets the writable directory path to a variable.

**5. Search for Non-Empty File:**

The function encontrar_arquivo is defined to search through the writable directory for a non-empty file, and reads its content if found.

**6. Output the Treasure Coordinates:**

Finally, it outputs the treasure coordinates by transforming specific characters into numeric and directional values.
