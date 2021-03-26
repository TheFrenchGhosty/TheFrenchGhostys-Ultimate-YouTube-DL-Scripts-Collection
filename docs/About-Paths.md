## About Paths

### What is a path?

The path of a file or folder specifies its location on the filesystem. The path length refers to the total number of character in the path.
- C:\Users\username\Pictures\Places\France\Paris.jpeg (a file path, 51 characters)
- C:\Program Files (a folder path, 16 characters)

---

### Path length limits on Windows

Windows has a 260-character path length limit for compatibility reasons. This means Windows and other programs will refuse to:
- create files or folders that exceed this limit,
- rename existing files or folders to exceed this limit.

It's possible for programs to use alternate methods to bypass the 260-character limit. This is because Windows' underlying NTFS filesystem supports "long paths" with lengths of up to 32,767 characters, [even since the days of Windows XP](https://stackoverflow.com/questions/265769/maximum-filename-length-in-ntfs-windows-xp-and-windows-vista). Incidentally, this is even higher than Linux's 4096-character limit.

However files and folders created by programs that support long paths will be impossible to manipulate in programs that don't support them, or in Windows itself. They will not be able to be easily opened, copied, moved, renamed, or deleted, without the use of special tools. The files themselves are perfectly valid and not corrupt, and having long paths is not a problem per se, just an inconvenience.

---

### Path lengths and the scripts

These scripts were designed to both neatly organize videos as well as preserve as much information about them as possible, since this information is often valuable to archivists. The names of both the videos and the folders they are stored in may include (in various combinations):
- channel name,
- playlist name,
- upload date,
- full video title,
- YouTube video ID.

Practically speaking, this means videos downloaded with these scripts will often exceed Windows' 260-character limit. Hence, you should keep the path as short as possible; store the scripts in the root (top level) of the drive. Place them in "C:\\" or "D:\\" instead of "C:\Users\username\Downloads\". Some videos will likely still exceed the 260-character limit, but this is good practice and should be done regardless.

---

### Play video files with long paths

"VLC Media Player" downloaded from the VLC website [does not support long paths](https://forum.videolan.org/viewtopic.php?t=150542). Videos cannot be opened.

Other programs may work. (WIP)

"Metro" apps appear to support long paths. "Movies & TV" (built in to Windows 10), or VLC (from the Microsoft Store).

Video players running *inside* WSL do work. To get the videos to display, you need to set up an Xserver (e.g. Xming), or use MobaXterm which has one built in, and possibly install PulseAudio (untested). This is a somewhat involved process and is not recommended for beginners.

---

### Manipulate (copy, move, rename, delete) files with long paths

Files and folders with long paths will be impossible to manipulate in programs that don't support them, or in Windows itself. Overcome this by manipulating files inside WSL:
* Download a file manager like mc (Midnight Commander) - recommended
* Use built-in Linux commandline tools like cp (to copy), mv (to move), and rm (to delete)

[HardLinkShell](https://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html) (Windows) enables copying or moving files with long paths.

---

### Other workarounds

Enable a "Group Policy" setting introduced in recent versions of Windows 10 to [remove the 260-character limit](https://superuser.com/questions/1119883/windows-10-enable-ntfs-long-paths-policy-option-missing) and enable support for long paths. For now it doesn't do much; applications need to be updated to support this setting (not even Windows Explorer seems to).

Choose a shorter path by not saving files too deeply into the folder tree. This is not really an option for these scripts, if you already store them in the root of the drive.

Organize videos and their containing folders with your own organization system (i.e., shorten their names). This is an issue of personal preference. If you break the scripts because they can't find files where it expects them to be, that is your problem to deal with.

---

### Further resources 

[PathLengthChecker](https://github.com/deadlydog/PathLengthChecker) - Find out the path length of files/folders

[Further reading on WSL and Path Lengths](https://channel9.msdn.com/Blogs/Seth-Juarez/Windows-Subsystem-for-Linux-File-System)

[Background on Maximum Path Length Limitations](https://docs.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation)