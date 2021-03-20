### Installation using WSL:
WSL allows the running of a modified Linux environment (Ubuntu, Debian, OpenSUSE, and more) inside Windows 10. Unlike a virtual machine, it can directly interact with Windows files on the hard drive. 

Main benefits are that it's created by Microsoft, so it's more likely to be better supported. Benefits for the purposes of these scripts are the ability to keep dependencies (ffmpeg, atomicparsley, yt-dlp) up-to-date with package managers like apt or pip. 

However the setup process does necessitate a relatively large one-time download and storing of WSL's files (approximately 2GB) - users taking issue with this may consider the other options such as Cygwin or Git Bash. [Compare the above here.](https://askubuntu.com/questions/1042285/reduce-size-of-a-wsl-installation-ubuntu-18-on-windows-10)


#### Known Issues
* The latest version of WSL (WSL2) stores the Linux filesystem hierarchy ( /* ) inside a virtual hard disk file. To avoid this file ballooning in size ([and having to manually shrink it in the future](https://stephenreescarter.net/how-to-shrink-a-wsl2-virtual-disk/)), it's recommended to store the scripts and videos outside of the Linux filesystem, inside a Windows drive (e.g. "/mnt/c/" for "C:\\", or "/mnt/d/" for a drive mounted at "D:\\" )
* Downloaded videos will likely exceed Windows' 260-character path length limit and not be playable out of the box. You should read more about [paths](docs/About-Paths.md) to familiarize yourself with the issue, as well as some potential workarounds.


#### Required Software
Follow the "Manual Install" instructions in the [Windows Subsystem for Linux Installation Guide for Windows 10](https://docs.microsoft.com/en-us/windows/wsl/install-win10). 

Once WSL is installed, download the latest [release](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/releases) and follow the "Installation (Linux)" section of this README.

