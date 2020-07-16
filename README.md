# WSL2_offensive_deployment
WSL (or Windows Subsystem for Linux) is a feature created by Microsoft to essentially run a Linux
container within Windows to incorporate Linux functionality and binaries into the Windows
experience. This was originally released in 2016 allowing native execution of Linux binaries through a
translated command layer interacting with the native kernel. 

More recently Microsoft re-architected this feature as WSL2 to instead operate within a Hyper-V instance with its own dedicated kernel, thus
removing the translation layer.

The attached POC powershell script can be used to stealthily download, install, configure and produce a reverse shell from a WSL2 instance on a victims host without alerting the user or requiring any form of interaction or authetnication during the process. Essentially allowing an attacker to install a stealth OS on a host machine using the WSL2 feature and through persistence trigger a reverse shell to an attackers machine to allow remote control from this sub system. This does require an admin shell to be available. 

The paper below outlines my research in detail with explanations as to the mechanisms found as well as potential methods for detection and it's inherant difficulty with the new architecutre. 

# Paper
https://drive.google.com/file/d/1LTk3nf3RLOwrfli7uAGFZe_tNw5yfZ9h/view?usp=sharing
