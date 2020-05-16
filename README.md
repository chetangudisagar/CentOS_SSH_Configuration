# CentOS_SSH_Configuration

This repository contains a CentOS SSH Configuration script. 

The script has comments added explaining what each command will be doing.
It first prompts users to change the port in SSHD config file, allow it in SELinux Policy, followed by restarting the SSHD service and allowing incoming TCP connections through firewall.


1. Download using `curl` command -
  ```
  curl https://raw.githubusercontent.com/chetangudisagar/CentOS_SSH_Configuration/master/configure.sh > configure.sh
  ```
  Note: you could use `wget` too but it is not available in the Minimal installation of CentOS 7.

2. Make it executable using `chmod` command -
  ```
  chmod +x configure.sh
  ```

3. Run the scipt -
  ```
  sudo ./configure.sh
  ```
