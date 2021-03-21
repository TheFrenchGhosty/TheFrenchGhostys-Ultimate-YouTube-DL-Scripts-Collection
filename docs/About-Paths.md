## About Paths

### Paths on Windows

The path of a file or folder specifies its location on the filesystem. The path length refers to the total number of character in the path.
- C:\Users\username\Documents (a folder path, 27 characters)
- C:\Windows\explorer.exe (a file path, 23 characters)

---

### Path length limits

Windows has a 260-character path length limit for compatibility reasons. This means Windows and other programs will refuse to:
- create files or folders that exceed this limit,
- rename existing files or folders to exceed this limit.

It's possible for programs to use alternate methods to bypass the 260-character limit. This is because the NTFS filesystem supports long path lengths of up to 32,768 characters, [even since the days of Windows XP](https://stackoverflow.com/questions/265769/maximum-filename-length-in-ntfs-windows-xp-and-windows-vista). Incidentally, this is even higher than Linux's 4096-character limit.

However files and folders created by programs that support "long paths" will be impossible to manipulate. They are valid files, but will not be able to be opened, copied, moved, renamed, or deleted.

---

### Path lengths and the scripts

These scripts were designed to both neatly organize videos as well as preserve as much information about them as possible, since this data can be valuable to archivists. The names of both the videos and the folders they are stored in may include (but are not limited to):
- channel name
- playlist name
- upload date
- full video title
- YouTube video ID.

Practically, this means videos downloaded with these scripts will often exceed Windows' 260-character limit. Hence, you should keep the path as short as possible; store the scripts in the root of the drive. Place them in "C:\\" or "D:\\" instead of "C:\Users\username\Downloads\". Some videos will still exceed the 260-character limit, but this should be done regardless.

---

### Playing video files with long paths

"VLC Media Player" downloaded from the VLC website does not support currently support long paths. Videos cannot be opened.

"Metro" apps appear to support long paths. "Movies & TV" (built in to Windows 10), or VLC (from the Microsoft Store).

Video players running *inside* WSL do work. To get the videos to display, you need to set up an Xserver (e.g. Xming, or MobaXterm with one built in), and possibly installing PulseAudio (untested).

---

### Manipulating (copying, moving, renaming, deleting) files with long paths
Windows and other programs will not let you manipulate files with long paths. Overcome this by manipulating files inside WSL using commandline Linux tools (cp, mv, rm). Alternatively, use a file manager like mc (Midnight Commander). 

HardLinkShell (on Windows) enables copying or moving files with long paths.


### Other workarounds
Enable a "Group Policy" setting introduced in recent versions of Windows 10 to [remove the 260-character limit (i.e., long paths)](https://superuser.com/questions/1119883/windows-10-enable-ntfs-long-paths-policy-option-missing). Applications need to be updated to support long paths; this setting is not very useful for now.

Choose a shorter path, or not to save files so deeply into the folder tree. This is not really an option for these scripts, if you already store them in the root of the drive.


### Notes 
[Further reading on WSL and path lengths](https://channel9.msdn.com/Blogs/Seth-Juarez/Windows-Subsystem-for-Linux-File-System)