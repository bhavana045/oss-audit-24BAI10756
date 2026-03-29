Open Source Software: Linux System Administration Toolkit
Author: Bhavana Varma

Course: Open Source Software Linux

Date: 29 March 2026

📋 Project Overview
This project consists of a suite of five Bash scripts designed to automate common Linux system administration tasks. These tasks include system identity reporting, package inspection, directory auditing, log analysis, and automated document generation.

🛠️ Scripts Included
1. System Identity Report (script1.sh)
Generates a high-level summary of the current system state.

Features: Displays Kernel version, current user, uptime, and Linux distribution details.

Key Command: lsb_release, uname, uptime.

2. FOSS Package Inspector (script2.sh)
Checks the installation status and metadata of specific Open Source packages.

Features: Verifies if a package (default: VLC) is installed using dpkg and provides a "philosophy note" using a case statement.

Key Command: dpkg -l, grep, case logic.

3. Disk and Permission Auditor (script3.sh)
Performs a security and storage audit on critical system directories.

Features: Iterates through an array of directories to report file permissions, ownership, and total disk usage.

Key Command: ls -ld, awk, du -sh.

4. Log File Analyzer (script4.sh)
A diagnostic tool to search for specific patterns within system logs.

Features: Accepts a log file path and a keyword as arguments. It includes a "retry loop" that waits for the file to contain data if it is currently empty.

Key Command: while read, grep -iq, positional parameters ($1, $2).

5. Open Source Manifesto Generator (script5.sh)
An interactive tool to generate a personalized text document.

Features: Collects user input regarding their thoughts on Open Source and exports a formatted .txt file using output redirection.

Key Command: read -p, > (overwrite), >> (append).

🚀 How to Run
Grant Execution Permissions:
Before running the scripts, ensure they are executable:

Bash- 
chmod +x script*.sh

Execute a Script:
Run any script using the following syntax:
Bash
./script1.sh

Special Usage (Script 4):
Script 4 requires arguments:

Bash
./script4.sh /path/to/logfile "keyword"
📝 Requirements
Operating System: Any Debian-based Linux distribution (Ubuntu, Kali, Mint, etc.).

Shell: Bash (Bourne Again SHell).

Permissions: Some scripts (like the Auditor) may require sudo to read protected system directories.
