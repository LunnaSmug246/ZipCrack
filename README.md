# ZipCrack

## Description
ZipCrack is a simple yet effective batch script designed to automate the process of unlocking password-protected ZIP files. By utilizing a dictionary attack method, it systematically attempts to extract the contents of the ZIP file using a list of potential passwords stored in a text file.

## Objective
This script automates the process of attempting to unlock a password-protected ZIP file using a list of passwords stored in a text file (the dictionary).

## Components
- **ZIP File**: The target file that is password-protected.
- **Password Dictionary**: A text file containing potential passwords, with each password listed on a new line.
- **Batch Script**: A script that uses a command-line tool (such as `7-Zip` or `WinRAR`) to attempt to extract the ZIP file with each password from the dictionary.

## Process
1. The script reads each password from the dictionary file.
2. It attempts to extract the ZIP file using the current password.
3. If the extraction is successful, the script reports the successful password; if not, it continues to the next password.

## Screenshot
![ZIP Archive Dictionary Attack](https://i.ytimg.com/vi/Il2CF15F6cg/maxresdefault.jpg)

## Usage
1. **Install Required Tools**: Ensure you have either `7-Zip` or `WinRAR` installed on your system.
2. **Configure the Script**:
   - Set the names of the ZIP file and the password dictionary in the batch script.
3. **Run the Script**: Execute the batch script to begin the dictionary attack.

## Important Note
- Make sure you have permission to access the ZIP file before attempting to unlock it.

## Need Help?
If you have any questions or need assistance, feel free to join our [Discord community](https://discord.gg/PfZXaKtF) to ask for help or discuss further.
