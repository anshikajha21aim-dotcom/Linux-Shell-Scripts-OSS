# Linux Shell Scripts & OSS Audit

**A Collection of Essential Linux Automation & System Diagnostic Tools**
This repository contains a suite of five Bash shell scripts developed as part of a comprehensive audit of Open Source Software (OSS) and Linux system management. These scripts demonstrate core DevOps and System Administration concepts, including automation, file system auditing, and interactive user experiences.

## The Scripts
**1. System Identity Report(`identity.sh`)**
A diagnostic "welcome screen" that pulls real-time data about the Linux environment.
* **Concepts:** Command substitution, variables, and kernel metadata.
* **Usage:** Provides an instant snapshot of the OS distribution, kernel version, and system uptime.

**2. FOSS Package Inspector** **(`inspector.sh`)**
An automated auditing tool that checks for the presence of specific software (like Git).
* **Concepts:** `if-then-else` logic, `dpkg` package querying, and `case` statements.
* **Usage:** Verifies if a tool is installed and prints a philosophical summary of the software.

**3. **Disk & Permission Auditor** (`auditor.sh`)**
A security-focused script that scans critical system directories.
* **Concepts:** `for` loops, `awk` text processing, and permission bit analysis.
* **Usage:** Reports on folder sizes and ownership/permissions for directories like `/etc` and `/var/log`.

**4. **Log File Analyzer** (`log_analyzer.sh`)**
A forensic utility designed to scan massive system logs for specific keywords.
* **Concepts:** `while-read` loops, command-line arguments (`$1`), and `until` retry logic.
* **Usage:** Counts occurrences of "ERROR" or "WARNING" in a log file and displays the most recent entries.

**5. **OSS Manifesto Generator** (`manifesto.sh`)**
An interactive script that interviews the user to create a personalized philosophy statement.
* **Concepts:** User input (`read`), file redirection (`>>`), and string concatenation.
* **Usage:** Generates a `.txt` manifesto based on user answers regarding digital freedom.

---

**INTRODUCTION**
 **Prerequisites**
These scripts are designed to run on any Linux distribution (Ubuntu, Debian, Fedora) or **WSL2** (Windows Subsystem for Linux).

### **Installation & Execution**
1. **Clone the repository:**
   ```bash
   git clone https://github.com/anshikajha21aim-dotcom/Linux-Shell-Scripts-OSS.git
   cd Linux-Shell-Scripts-OSS
   ```

2. **Grant execution permissions:**
   ```bash
   chmod +x *.sh
   ```

3. **Run a script:**
   ```bash
   ./identity.sh
   ```

---

## License
This project is released under the **GNU General Public License (GPL)**, staying true to the open-source philosophy of shared knowledge and digital freedom.

---
