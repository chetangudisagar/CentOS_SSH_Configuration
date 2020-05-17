# CentOS_SSH_Configuration

This repository contains a CentOS SSH Configuration script. 

The script has comments added explaining what each command is doing.

It first prompts users to change the port in SSHD config file, allow it in SELinux Policy, followed by restarting the SSHD service and allowing incoming TCP connections through firewall.


1.  Download using `curl` command -
  ```
  curl https://raw.githubusercontent.com/chetangudisagar/CentOS_SSH_Configuration/master/configure.sh > configure.sh
  ```
  **Note:** you could use `wget` too but it is not available in the Minimal installation of CentOS 7.

2. Remove DOS charecters using `sed` command -
  ```
  sed -e "s/\r//g" configure.sh > configure_formatted.sh
  ```
  **Note:** you could use `dosunix` too but it is not available in the Minimal installation of CentOS 7.
  Reference [here](https://support.microfocus.com/kb/doc.php?id=7014821).

2.  Make it executable using `chmod` command -
  ```
  chmod +x configure_formatted.sh
  ```

3.  Run the scipt -
  ```
  sudo ./configure_formatted.sh
  ```
  
  Commands are referred from [this](https://serverfault.com/a/751069) answer on StackExchange. 
