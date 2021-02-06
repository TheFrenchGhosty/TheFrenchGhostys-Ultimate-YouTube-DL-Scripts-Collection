# TheFrenchGhosty's YouTube-DL Archivist Scripts

Associated Reddit /r/Datahoarder post: [Here for 1.0.0](https://redd.it/dwhvq6) and [Here for 2.0.0](https://redd.it/h7q4nz).

**Require [youtube-dlc](https://github.com/blackjack4494/yt-dlc) and [ffmpeg](https://www.ffmpeg.org/)**

The ultimate collection of scripts for YouTube-DL.


## Usage :

Download the latest [release](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/releases), do not use the `master` branch unless you are ready to redownload EVERYTHING.

Install [youtube-dlc](https://github.com/blackjack4494/yt-dlc) and [ffmpeg](https://www.ffmpeg.org/) (Windows users **must** use [Chocolatey](https://chocolatey.org/) *or* **must** know how to properly install both tools. They both need to be added to your path, Chocolatey is the only tested installation method of youtube-dlc/ffmpeg for my scripts).

Note: youtube-dl *should* work but isn't officially supported.

Create a folder where you want your videos downloaded in a drive where you have enough space available.

**Warning for Windows users**: Because Windows is using a path length limit of 260 characters, you might have problems when downloading videos with long title (or even videos with short one if your path is long), supposedly there is ways to disable this limit but during my testing I couldn't make it to work. Using `C:\YouTube-DL\` *should* work.

Put the folders `Active Scripts`, `Archive Scripts` and `Watch Script` of your OS in the created folder (Read the section named "[Archive, Active, Watch, Watch on Mobile Devices and Audio Only Scripts?](#archive-active-watch-watch-on-mobile-devices-and-audio-only-scripts)" to understand the differences).

Add content to a 'Source - XXXXXX.txt' file depending of what type of content you want to download (Read the section named "[Channels, Playlists and Unique Scripts?](#channels-playlists-and-unique-scripts)" to understand the differences).

(Linux) Open a terminal in the folder of the script you want to use and run `./[SCRIPT].sh`.

(Windows) Open Powershell in the folder of the script you want to use and run `[SCRIPT].ps1` **or** Open a `.ps1` file directly (Note: if you open a `.ps1` file directly, the Powershell window will automatically close when the script is done, this isn't recommended).

Done.


## Sponsorblock implementation

Sponsorblock is fully usable with the videos downloaded by this script thanks to [MPV_Sponsorblock](https://github.com/po5/mpv_sponsorblock) by [po5 / Eva](https://github.com/po5) since this [issue](https://github.com/po5/mpv_sponsorblock/issues/5).

To use it you just have to set: `local_pattern = " %[([%a%d%-_]+)].[mw][kpe][v4b]m?$"` in `sponsorblock.lua`. Note that this will send/leak to the Sponsorblock server everything that use this naming including "[CRCs in anime-style naming](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/issues/1#issuecomment-633000802)".


## Archive, Active, Watch, Watch on Mobile Devices and Audio Only Scripts?

Downloading and archiving "live" content is complicated, especially because gigabytes of it will be created each day.

Considering that I chose to separate the content:

Archive Scripts: Scripts that will download everything that was created before December 31 of the previous year (included). For example, if the current date is any day between 2021-01-01 and 2021-12-31, everything created up to and including 2020-12-31 will be downloaded. Because YouTube takes time to transcode videos (usually 1 week, maximum 1 month), you may want to avoid running the Archive Scripts too soon into the new year.

Active Scripts: Scripts that will download everything that was created after January 1 of the current year (included). For example, if the current date is 2021-02-02, everything created between and during the dates 2021-01-01 and 2021-02-02 will be downloaded.

Watch Script: Script that will download individual videos made by a creator that are not meant to be archived but deleted after being watched (naming scheme: `Uploader - 20201231 - Title [VIDEOID].ext`). 

Watch on Mobile Devices Script: Script that will download individual videos made by a creator that are not meant to be archived but deleted after being watched, in old video and audio format that are support by every mobile devices. (naming scheme: `Uploader - 20201231 - Title [VIDEOID].ext`).

Consider the "Watch Script" and "Watch on Mobile Devices Script" useful for downloading "throwaway" videos. Data normally useful for archivers, such as the thumbnail, are omitted.

Audio Only Script: Script that will only download audio (or that will extract the audio from videos that contain it) in the best possible quality.

These dates will need to be incremented every year January 1 and the content created by the active scripts will need to be moved to the archive (including the `archive.log` that will need to be merged).


## Channels, Playlists and Unique Scripts?

Three different type of scripts are included depending of what you want to download, the only thing changing is the naming scheme.

`Channels` : Made to download everything made by creators (naming scheme: `Uploader/Uploader - 20201231 - Title/Uploader - 20201231 - Title [VIDEOID].ext`).

`Playlists` : Made to download playlists made by creators (naming scheme: `PlaylistName - Uploader/20201231 - Title/20201231 - Title [VIDEOID].ext`).

`Unique` : Made to download individual videos made by creators (naming scheme: `Title - Uploader - 20201231/Title - Uploader - 20191231 [VIDEOID].ext`).


## Region-restricted videos?

`--ignore-errors` and `--download-archive archive.log` will silently skip such videos.

Using a VPN, switch between US and Germany, and if you follow a specific country's content, also switch to that country (e.g. switch to France if you follow French content).

# Details :

`--format "(bestvideo[vcodec^=av01][height>=4320][fps>30]/bestvideo[vcodec^=vp9.2][height>=4320][fps>30]/bestvideo[vcodec^=vp9][height>=4320][fps>30]/bestvideo[vcodec^=avc1][height>=4320][fps>30]/bestvideo[height>=4320][fps>30]/bestvideo[vcodec^=av01][height>=4320]/bestvideo[vcodec^=vp9.2][height>=4320]/bestvideo[vcodec^=vp9][height>=4320]/bestvideo[vcodec^=avc1][height>=4320]/bestvideo[height>=4320]/bestvideo[vcodec^=av01][height>=2880][fps>30]/bestvideo[vcodec^=vp9.2][height>=2880][fps>30]/bestvideo[vcodec^=vp9][height>=2880][fps>30]/bestvideo[vcodec^=avc1][height>=2880][fps>30]/bestvideo[height>=2880][fps>30]/bestvideo[vcodec^=av01][height>=2880]/bestvideo[vcodec^=vp9.2][height>=2880]/bestvideo[vcodec^=vp9][height>=2880]/bestvideo[vcodec^=avc1][height>=2880]/bestvideo[height>=2880]/bestvideo[vcodec^=av01][height>=2160][fps>30]/bestvideo[vcodec^=vp9.2][height>=2160][fps>30]/bestvideo[vcodec^=vp9][height>=2160][fps>30]/bestvideo[vcodec^=avc1][height>=2160][fps>30]/bestvideo[height>=2160][fps>30]/bestvideo[vcodec^=av01][height>=2160]/bestvideo[vcodec^=vp9.2][height>=2160]/bestvideo[vcodec^=vp9][height>=2160]/bestvideo[vcodec^=avc1][height>=2160]/bestvideo[height>=2160]/bestvideo[vcodec^=av01][height>=1440][fps>30]/bestvideo[vcodec^=vp9.2][height>=1440][fps>30]/bestvideo[vcodec^=vp9][height>=1440][fps>30]/bestvideo[vcodec^=avc1][height>=1440][fps>30]/bestvideo[height>=1440][fps>30]/bestvideo[vcodec^=av01][height>=1440]/bestvideo[vcodec^=vp9.2][height>=1440]/bestvideo[vcodec^=vp9][height>=1440]/bestvideo[vcodec^=avc1][height>=1440]/bestvideo[height>=1440]/bestvideo[vcodec^=av01][height>=1080][fps>30]/bestvideo[vcodec^=vp9.2][height>=1080][fps>30]/bestvideo[vcodec^=vp9][height>=1080][fps>30]/bestvideo[vcodec^=avc1][height>=1080][fps>30]/bestvideo[height>=1080][fps>30]/bestvideo[vcodec^=av01][height>=1080]/bestvideo[vcodec^=vp9.2][height>=1080]/bestvideo[vcodec^=vp9][height>=1080]/bestvideo[vcodec^=avc1][height>=1080]/bestvideo[height>=1080]/bestvideo[vcodec^=av01][height>=720][fps>30]/bestvideo[vcodec^=vp9.2][height>=720][fps>30]/bestvideo[vcodec^=vp9][height>=720][fps>30]/bestvideo[vcodec^=avc1][height>=720][fps>30]/bestvideo[height>=720][fps>30]/bestvideo[vcodec^=av01][height>=720]/bestvideo[vcodec^=vp9.2][height>=720]/bestvideo[vcodec^=vp9][height>=720]/bestvideo[vcodec^=avc1][height>=720]/bestvideo[height>=720]/bestvideo[vcodec^=av01][height>=480][fps>30]/bestvideo[vcodec^=vp9.2][height>=480][fps>30]/bestvideo[vcodec^=vp9][height>=480][fps>30]/bestvideo[vcodec^=avc1][height>=480][fps>30]/bestvideo[height>=480][fps>30]/bestvideo[vcodec^=av01][height>=480]/bestvideo[vcodec^=vp9.2][height>=480]/bestvideo[vcodec^=vp9][height>=480]/bestvideo[vcodec^=avc1][height>=480]/bestvideo[height>=480]/bestvideo[vcodec^=av01][height>=360][fps>30]/bestvideo[vcodec^=vp9.2][height>=360][fps>30]/bestvideo[vcodec^=vp9][height>=360][fps>30]/bestvideo[vcodec^=avc1][height>=360][fps>30]/bestvideo[height>=360][fps>30]/bestvideo[vcodec^=av01][height>=360]/bestvideo[vcodec^=vp9.2][height>=360]/bestvideo[vcodec^=vp9][height>=360]/bestvideo[vcodec^=avc1][height>=360]/bestvideo[height>=360]/bestvideo[vcodec^=av01][height>=240][fps>30]/bestvideo[vcodec^=vp9.2][height>=240][fps>30]/bestvideo[vcodec^=vp9][height>=240][fps>30]/bestvideo[vcodec^=avc1][height>=240][fps>30]/bestvideo[height>=240][fps>30]/bestvideo[vcodec^=av01][height>=240]/bestvideo[vcodec^=vp9.2][height>=240]/bestvideo[vcodec^=vp9][height>=240]/bestvideo[vcodec^=avc1][height>=240]/bestvideo[height>=240]/bestvideo[vcodec^=av01][height>=144][fps>30]/bestvideo[vcodec^=vp9.2][height>=144][fps>30]/bestvideo[vcodec^=vp9][height>=144][fps>30]/bestvideo[vcodec^=avc1][height>=144][fps>30]/bestvideo[height>=144][fps>30]/bestvideo[vcodec^=av01][height>=144]/bestvideo[vcodec^=vp9.2][height>=144]/bestvideo[vcodec^=vp9][height>=144]/bestvideo[vcodec^=avc1][height>=144]/bestvideo[height>=144]/bestvideo)+(bestaudio[acodec^=opus]/bestaudio)/best"` : Tell youtube-dlc to download the best quality available prioritizing the most compressed/recent codecs. (Original idea by [Veloldo](https://redd.it/c6fh4x), partial implementation of 1440p and 4320p by [miko](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/commit/3763eb7a2291754cfd2bccfab65449ba9d758887)([Merge Request on Gitlab](https://gitlab.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/-/merge_requests/2)).

(Watch on Mobile Script) `--format "(bestvideo[vcodec^=avc1][height=1080][fps>30]/bestvideo[vcodec^=avc1][height=1080]/bestvideo[vcodec^=avc1][height=720][fps>30]/bestvideo[vcodec^=avc1][height=720]/bestvideo[vcodec^=avc1][height=480][fps>30]/bestvideo[vcodec^=avc1][height=480]/bestvideo[vcodec^=avc1][height=360][fps>30]/bestvideo[vcodec^=avc1][height=360]/bestvideo[vcodec^=avc1][height=240][fps>30]/bestvideo[vcodec^=avc1][height=240]/bestvideo[vcodec^=avc1][height=144][fps>30]/bestvideo[vcodec^=avc1][height=144]/bestvideo[vcodec^=avc1])+(bestaudio[acodec^=mp4a]/bestaudio)/best"` : Tell youtube-dlc to download old video and audio format that are support by every mobile devices.

(Audio Only Scripts) `--format "(bestaudio[acodec^=opus]/bestaudio)/best"` : Tell youtube-dlc to download best audio quality available prioritizing the most compressed/recent codecs.

`--verbose` : Tell youtube-dlc to print various debugging information.

`--force-ipv4` : Tell youtube-dlc to use IPv4, needed because lots of hosting and VPNs providers don't support IPv6.

`--sleep-interval 5 --max-sleep-interval 30` : Tell youtube-dlc to pause between 5 and 30 seconds between 2 download to avoid getting "429 - Too Many Requests". Original idea by [BioSchokoMuffin](https://old.reddit.com/r/DataHoarder/comments/cr8t0k/can_you_answer_a_few_questions_i_have_about/ex3megb/).

`--ignore-errors` : Tell youtube-dlc to continue on download errors (for example to skip unavailable videos in a playlist).

`--no-continue` : Tell youtube-dlc not to resume partially downloaded files and to restart from the beginning (Mainly to avoid corruption).

`--no-overwrites` : Tell youtube-dlc not to overwrite existing files (Useful when metadata has already been downloaded).

`--download-archive archive.log` : Tell youtube-dlc to write every video that has been downloaded in `archive.log` to automatically skip them next time the script is started.

`--add-metadata` : Tell youtube-dlc to write metadata to the video files.

`--write-description` : Tell youtube-dlc to write video description to a `.description` file.

`--write-info-json` : Tell youtube-dlc to write video metadata to a `.info.json` file.

`--write-annotations` : Tell youtube-dlc to write video annotations to a `.annotations.xml` file.

`--write-thumbnail` : Tell youtube-dlc to write thumbnail image to disk.

`--embed-thumbnail` : Tell youtube-dlc to embed thumbnail in the audio as cover art (only useful when downloading audio-only content like podcast).

`--all-subs` : Tell youtube-dlc to download all the available subtitles of the video.

`--sub-format "srt"` : Tell youtube-dlc to prioritize `.srt` subtitles.

`--embed-subs` : Tell youtube-dlc to embed subtitles in the video.

(Audio Only Scripts) `--extract-audio` : Extract audio if it's included in a video file, otherwise don't do anything.

(Channels Scripts) `--output "%(uploader)s/%(uploader)s - %(upload_date)s - %(title)s/%(uploader)s - %(upload_date)s - %(title)s [%(id)s].%(ext)s"` : Tell youtube-dlc to download the videos in folders and subfolders, using the naming scheme `Uploader/Uploader - 20191231 - Title/Uploader - 20191231 - Title [VIDEOID].ext`.

(Playlists Scripts) `--output "%(playlist)s (%(uploader)s)/%(upload_date)s - %(title)s/%(upload_date)s - %(title)s [%(id)s].%(ext)s"` : Tell youtube-dlc to download the videos in folders and subfolders, using the naming scheme `PlaylistName - Uploader/20191231 - Title/20191231 - Title [VIDEOID].ext`.

(Unique Scripts) `--output "%(title)s - %(uploader)s - %(upload_date)s/%(title)s - %(uploader)s - %(upload_date)s [%(id)s].%(ext)s"` : Tell youtube-dlc to download the videos in folders and subfolders, using the naming scheme `Title - Uploader - 20191231/Title - Uploader - 20191231 [VIDEOID].ext`.

`--merge-output-format "mkv"` : Tell youtube-dlc to merge the video and audio that were downloaded separately in a `.mkv` file.

(Archive Scripts) `--datebefore "$(( $(date +%Y) -1))"1231` (Linux) `--datebefore "$($(get-date -Format yyyy)/1 - 1)1231"` (Windows) : Tell youtube-dlc to download everything that was created before December 31 (included), of the past year.

(Archive Scripts) `--dateafter "$(date +%Y)"0101` (Linux) `--dateafter "$(get-date -Format yyyy)0101"` (Windows) : Tell youtube-dlc to download everything that was created after January 1 (included), of the current year.

`--batch-file "Source - XXXXXX.txt"` : Tell youtube-dlc to look for links in `Source - XXXXXX.txt`.
