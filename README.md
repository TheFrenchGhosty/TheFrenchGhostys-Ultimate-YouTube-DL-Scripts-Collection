# TheFrenchGhosty-s YouTube-DL Scripts

**Require youtube-dl : https://github.com/ytdl-org/youtube-dl and ffmpeg**

The ultimate collection of scripts for YouTube-DL


## Usage :

Install [youtube-dl](https://github.com/ytdl-org/youtube-dl) and ffmpeg

Create a folder where you want your videos downloaded in a drive where you have Gigabytes/Terabytes of space available (**Warning for Windows users**: try to keep a short path length like `C:\YouTube-DL` otherwise you will hit the Windows path length limit (255 characters) when downloading videos with long title but even then it might not be enough so you might need to enable longer one, [See](https://github.com/ytdl-org/youtube-dl/issues/23154) for more details)

Put the folders `Arctive Scripts` and `Archive Scripts` of your OS in the created folder (Read the section named "[Archive and Active Scripts?](https://gitlab.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts#archive-and-active-scripts)" to understand the differences)

Add content to a 'Source - XXXXXX.txt' file depending of what type of content you want to download (Read the section named "[Channels, Playlists and Unique Scripts?](https://gitlab.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts#channels-playlists-and-unique-scripts)" to understand the differences)

(Linux) Open a terminal in the folder of the script you want to use and run `$ ./[SCRIPT].sh`

(Windows) Open CMD/Powershell in the folder of the script you want to use and run `[SCRIPT].bat` **or** Open a `.bat` file directly (Note: if you open a `.bat` file directly, the CMD/Powershell window will automatically close when the script is finished)

Done


## Archive and Active Scripts?

Downloading and archiving "live" content is complicated, especially because gigabytes of it will be created each day.

Considering that I chose to separate the content:

Archive Scripts: Scripts that will download everything that was created before December 31, 2018 (included).

Active Scripts: Scripts that will download everything that was created after January 1, 2019 (included).

These dates will need to be incremented every year January 1 and the content created by the active scripts will need to be moved to the archive (including the `archive.log` that will need to be merged).


## Channels, Playlists and Unique Scripts?

Three different type of scripts are included depending of what you want to download, the only thing changing is the naming scheme

`Channels.sh` : Made to download everything made by a creator (naming scheme: `Uploader/Uploader - 20191231 - Title/Uploader - 20191231 - Title.ext`)

`Playlists.sh` : Made to download playlists made by a creator (naming scheme: `PlaylistName - Uploader/20191231 - Title/20191231 - Title.ext`)

`Unique.sh` : Made to download individual videos made by a creator (naming scheme: `Title - Uploader - 20191231/Title - Uploader - 20191231.ext`)


# Details : 

`--format "(bestvideo[vcodec^=av01][height>=1080][fps>30]/bestvideo[vcodec=vp9.2][height>=1080][fps>30]/bestvideo[vcodec=vp9][height>=1080][fps>30]/bestvideo[vcodec^=av01][height>=1080]/bestvideo[vcodec=vp9.2][height>=1080]/bestvideo[vcodec=vp9][height>=1080]/bestvideo[height>=1080]/bestvideo[vcodec^=av01][height>=720][fps>30]/bestvideo[vcodec=vp9.2][height>=720][fps>30]/bestvideo[vcodec=vp9][height>=720][fps>30]/bestvideo[vcodec^=av01][height>=720]/bestvideo[vcodec=vp9.2][height>=720]/bestvideo[vcodec=vp9][height>=720]/bestvideo[height>=720]/bestvideo)+(bestaudio[acodec=opus]/bestaudio)/best"` : Courtesy of [Veloldo](https://redd.it/c6fh4x), tell youtube-dl to download the best quality available prioritizing the most compressed/recent codecs

`--verbose` : Tell youtube-dl to print various debugging information

`--force-ipv4` : Tell youtube-dl to use IPv4, needed because lots of hosting and VPNs providers don't support IPv6.

`--ignore-errors` : Tell youtube-dl to continue on download errors (for example to skip unavailable videos in a playlist)

`--no-continue` : Tell youtube-dl not to resume partially downloaded files and to restart from the beginning (Mainly to avoid corruption)

`--no-overwrites` : Tell youtube-dl not to overwrite existing files (Useful when metadata has already been downloaded)

`--download-archive archive.log` : Tell youtube-dl to write every video that has been downloaded in `archive.log` to automatically skip them next time the script is started

`--add-metadata` : Tell youtube-dl to write metadata to the video files

`--write-description` : Tell youtube-dl to write video description to a `.description` file

`--write-info-json` : Tell youtube-dl to write video metadata to a `.info.json` file

`--write-annotations` : Tell youtube-dl to write video annotations to a `.annotations.xml` file

`--write-thumbnail` : Tell youtube-dl to write thumbnail image to disk

`--embed-thumbnail` : Tell youtube-dl to embed thumbnail in the audio as cover art (only useful when downloading audio-only content like podcast)

`--all-subs` : Tell youtube-dl to download all the available subtitles of the video

`--sub-format "srt"` : Tell youtube-dl to prioritize `.srt` subtitles

`--embed-subs` : Tell youtube-dl to embed subtitles in the video

(Channels Scripts) `--output "%(uploader)s/%(uploader)s - %(upload_date)s - %(title)s/%(uploader)s - %(upload_date)s - %(title)s.%(ext)s"` : Tell youtube-dl to download the videos in folders and subfolders, using the naming scheme `Uploader/Uploader - 20191231 - Title/Uploader - 20191231 - Title.ext`

(Playlists Scripts) `--output "%(playlist)s (%(uploader)s)/%(upload_date)s - %(title)s/%(upload_date)s - %(title)s.%(ext)s"` : Tell youtube-dl to download the videos in folders and subfolders, using the naming scheme `PlaylistName - Uploader/20191231 - Title/20191231 - Title.ext`

(Unique Scripts) `--output "%(title)s - %(uploader)s - %(upload_date)s/%(title)s - %(uploader)s - %(upload_date)s.%(ext)s"` : Tell youtube-dl to download the videos in folders and subfolders, using the naming scheme `Title - Uploader - 20191231/Title - Uploader - 20191231.ext`

`--merge-output-format "mkv"` : Tell youtube-dl to merge the video and audio that were downloaded separately in a `.mkv` file

(Archive Scripts) `--datebefore 20181231` : Tell youtube-dl to download everything that was created before December 31, 2018 (included).

(Active Scripts) `--dateafter 20190101` : Tell youtube-dl to download everything that was created after January 1, 2019 (included).

`--batch-file "Source - XXXXXX.txt"` : Tell youtube-dl to look for links in `Source - XXXXXX.txt`
