## Installation using Cygwin, Git Bash or similar

### Known Issues
* If you are receiving a permission denied error when attempting to execute python, [this thread](https://stackoverflow.com/questions/56974927/permission-denied-trying-to-run-python-on-windows-10) may be helpful.
* Downloaded videos will likely exceed Windows' 260-character path length limit and not be playable out of the box. You should read more about [paths](docs/About-Paths.md) to familiarize yourself with the issue, as well as some potential workarounds.


### Required Software
In order to run these scripts, the following software packages must be installed:

* [Cygwin](https://www.cygwin.com/), [Git Bash](http://git-scm.com), or some other application that enables Bash functionality in Windows.
* [Python 3](https://www.python.org/downloads/)
* [yt-dlp](https://github.com/pukkandan/yt-dlp) - Make sure this is in your PATH.
* [ffmpeg](https://www.ffmpeg.org/) - Make sure this is in your PATH.
* [atomicparsley](https://github.com/wez/atomicparsley) (optional) - Make sure this is in your PATH.

### Configuration
First, make sure that all dependencies are installed and your PATH is configured properly by opening your Bash terminal of choice and executing the following:

* `python --version`
* `yt-dlp --version`
* `ffmpeg -version`

If all of the above commands execute correctly, download the latest [release](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/releases) and follow the "Usage" section of this README.
