# TheFrenchGhosty's YouTube-DL Archivist Scripts

Associated Reddit /r/Datahoarder post: [Here for 1.0.0](https://redd.it/dwhvq6) and [Here for 2.0.0](https://redd.it/h7q4nz).

**Require [youtube-dl](https://youtube-dl.org/) and [ffmpeg](https://www.ffmpeg.org/)**

The ultimate collection of scripts for YouTube-DL.


## Usage :

Download the latest [release](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/releases), do not use the `master` branch unless you are ready to redownload EVERYTHING.

Install [youtube-dl](https://youtube-dl.org/) and [ffmpeg](https://www.ffmpeg.org/).

Create a folder where you want your videos downloaded in a drive where you have enough space available.

**Warning for Windows users**: Because Windows is using a path length limit of 260 characters, you might have problems when downloading videos with long title (or even videos with short one if your path is long), supposedly there is ways to disable this limit but during my testing I couldn't make it to work. Using `C:\YouTube-DL\` *should* work.

Put the folders `Active Scripts`, `Archive Scripts` and `Watch Script` of your OS in the created folder (Read the section named "[Archive, Active, Watch, Watch on Mobile Devices and Audio Only Scripts?](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts#archive-active-watch-watch-on-mobile-devices-and-audio-only-scripts)" to understand the differences).

Add content to a 'Source - XXXXXX.txt' file depending of what type of content you want to download (Read the section named "[Channels, Playlists and Unique Scripts?](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts#channels-playlists-and-unique-scripts)" to understand the differences).

(Linux) Open a terminal in the folder of the script you want to use and run `./[SCRIPT].sh`.

(Windows) Open Powershell in the folder of the script you want to use and run `[SCRIPT].ps1` **or** Open a `.ps1` file directly (Note: if you open a `.ps1` file directly, the Powershell window will automatically close when the script is done, this isn't recommended).

Done.


## Sponsorblock implementation

Sponsorblock is fully usable with the videos downloaded by this script thanks to [MPV_Sponsorblock](https://github.com/po5/mpv_sponsorblock) by [po5 / Eva](https://github.com/po5) since this [issue](https://github.com/po5/mpv_sponsorblock/issues/5).

To use it you just have to set: `local_pattern = " %[([%a%d%-_]+)].[mw][kpe][v4b]m?$"` in `sponsorblock.lua`. Note that this will send/leak to the Sponsorblock server everything that use this naming including "[CRCs in anime-style naming](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/issues/1#issuecomment-633000802)".


## Archive, Active, Watch, Watch on Mobile Devices and Audio Only Scripts?

Downloading and archiving "live" content is complicated, especially because gigabytes of it will be created each day.

Considering that I chose to separate the content:

Archive Scripts: Scripts that will download everything that was created before December 31, 2019 (included).

Active Scripts: Scripts that will download everything that was created after January 1, 2020 (included).

Watch Script: Script that will download individual videos made by a creator that are not meant to be archived but deleted after being watched (naming scheme: `Uploader - 20201231 - Title [VIDEOID].ext`).

Watch on Mobile Devices Script: Script that will download individual videos made by a creator that are not meant to be archived but deleted after being watched, in old video and audio format that are support by every mobile devices. (naming scheme: `Uploader - 20201231 - Title [VIDEOID].ext`).

Audio Only Script: Script that will only download audio (or that will extract the audio from videos that contain it) in the best possible quality.

These dates will need to be incremented every year January 1 and the content created by the active scripts will need to be moved to the archive (including the `archive.log` that will need to be merged).


## Channels, Playlists and Unique Scripts?

Three different type of scripts are included depending of what you want to download, the only thing changing is the naming scheme.

`Channels` : Made to download everything made by creators (naming scheme: `Uploader/Uploader - 20201231 - Title/Uploader - 20201231 - Title [VIDEOID].ext`).

`Playlists` : Made to download playlists made by creators (naming scheme: `PlaylistName - Uploader/20201231 - Title/20201231 - Title [VIDEOID].ext`).

`Unique` : Made to download individual videos made by creators (naming scheme: `Title - Uploader - 20201231/Title - Uploader - 20191231 [VIDEOID].ext`).


# Details :

`--format "(bestvideo[vcodec=av01][height>=4320][fps>30]/bestvideo[vcodec=vp9.2][height>=4320][fps>30]/bestvideo[vcodec=vp9][height>=4320][fps>30]/bestvideo[vcodec=av01][height>=4320]/bestvideo[vcodec=vp9.2][height>=4320]/bestvideo[vcodec=vp9][height>=4320]/bestvideo[height>=4320]/bestvideo[vcodec=av01][height>=2880][fps>30]/bestvideo[vcodec=vp9.2][height>=2880][fps>30]/bestvideo[vcodec=vp9][height>=2880][fps>30]/bestvideo[vcodec=av01][height>=2880]/bestvideo[vcodec=vp9.2][height>=2880]/bestvideo[vcodec=vp9][height>=2880]/bestvideo[height>=2880]/bestvideo[vcodec=av01][height>=2160][fps>30]/bestvideo[vcodec=vp9.2][height>=2160][fps>30]/bestvideo[vcodec=vp9][height>=2160][fps>30]/bestvideo[vcodec=av01][height>=2160]/bestvideo[vcodec=vp9.2][height>=2160]/bestvideo[vcodec=vp9][height>=2160]/bestvideo[height>=2160]/bestvideo[vcodec=av01][height>=1440][fps>30]/bestvideo[vcodec=vp9.2][height>=1440][fps>30]/bestvideo[vcodec=vp9][height>=1440][fps>30]/bestvideo[vcodec=av01][height>=1440]/bestvideo[vcodec=vp9.2][height>=1440]/bestvideo[vcodec=vp9][height>=1440]/bestvideo[height>=1440]/bestvideo[vcodec=av01][height>=1080][fps>30]/bestvideo[vcodec=vp9.2][height>=1080][fps>30]/bestvideo[vcodec=vp9][height>=1080][fps>30]/bestvideo[vcodec=av01][height>=1080]/bestvideo[vcodec=vp9.2][height>=1080]/bestvideo[vcodec=vp9][height>=1080]/bestvideo[height>=1080]/bestvideo[vcodec=av01][height>=720][fps>30]/bestvideo[vcodec=vp9.2][height>=720][fps>30]/bestvideo[vcodec=vp9][height>=720][fps>30]/bestvideo[vcodec=av01][height>=720]/bestvideo[vcodec=vp9.2][height>=720]/bestvideo[vcodec=vp9][height>=720]/bestvideo[height>=720]/bestvideo)+(bestaudio[acodec=opus]/bestaudio)/best"` : Tell youtube-dl to download the best quality available prioritizing the most compressed/recent codecs. (Original idea by [Veloldo](https://redd.it/c6fh4x), partial implementation of 1440p and 4320p by [miko](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/commit/3763eb7a2291754cfd2bccfab65449ba9d758887)([Merge Request on Gitlab](https://gitlab.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/-/merge_requests/2)).

(Watch on Mobile Script) `--format "(bestvideo[vcodec=avc1][height=1080][fps>30]/bestvideo[vcodec=avc1][height=1080]/bestvideo[vcodec=avc1][height=720][fps>30]/bestvideo[vcodec=avc1][height=720]/bestvideo[vcodec=avc1])+(140/bestaudio)/best"` : Tell youtube-dl to download old video and audio format that are support by every mobile devices.

(Audio Only Scripts) `--format "(bestaudio[acodec=opus]/bestaudio)/best"` : Tell youtube-dl to download best audio quality available prioritizing the most compressed/recent codecs.

`--verbose` : Tell youtube-dl to print various debugging information.

`--force-ipv4` : Tell youtube-dl to use IPv4, needed because lots of hosting and VPNs providers don't support IPv6.

`--sleep-interval 5 --max-sleep-interval 30` : Tell youtube-dl to pause between 5 and 30 seconds between 2 download to avoid getting "429 - Too Many Requests". Original idea by [BioSchokoMuffin](https://old.reddit.com/r/DataHoarder/comments/cr8t0k/can_you_answer_a_few_questions_i_have_about/ex3megb/).

`--ignore-errors` : Tell youtube-dl to continue on download errors (for example to skip unavailable videos in a playlist).

`--no-continue` : Tell youtube-dl not to resume partially downloaded files and to restart from the beginning (Mainly to avoid corruption).

`--no-overwrites` : Tell youtube-dl not to overwrite existing files (Useful when metadata has already been downloaded).

`--download-archive archive.log` : Tell youtube-dl to write every video that has been downloaded in `archive.log` to automatically skip them next time the script is started.

`--add-metadata` : Tell youtube-dl to write metadata to the video files.

`--write-description` : Tell youtube-dl to write video description to a `.description` file.

`--write-info-json` : Tell youtube-dl to write video metadata to a `.info.json` file.

`--write-annotations` : Tell youtube-dl to write video annotations to a `.annotations.xml` file.

`--write-thumbnail` : Tell youtube-dl to write thumbnail image to disk.

`--embed-thumbnail` : Tell youtube-dl to embed thumbnail in the audio as cover art (only useful when downloading audio-only content like podcast).

`--all-subs` : Tell youtube-dl to download all the available subtitles of the video.

`--sub-format "srt"` : Tell youtube-dl to prioritize `.srt` subtitles.

`--embed-subs` : Tell youtube-dl to embed subtitles in the video.

(Audio Only Scripts) `--extract-audio` : Extract audio if it's included in a video file, otherwise don't do anything.

(Channels Scripts) `--output "%(uploader)s/%(uploader)s - %(upload_date)s - %(title)s/%(uploader)s - %(upload_date)s - %(title)s [%(id)s].%(ext)s"` : Tell youtube-dl to download the videos in folders and subfolders, using the naming scheme `Uploader/Uploader - 20191231 - Title/Uploader - 20191231 - Title [VIDEOID].ext`.

(Playlists Scripts) `--output "%(playlist)s (%(uploader)s)/%(upload_date)s - %(title)s/%(upload_date)s - %(title)s [%(id)s].%(ext)s"` : Tell youtube-dl to download the videos in folders and subfolders, using the naming scheme `PlaylistName - Uploader/20191231 - Title/20191231 - Title [VIDEOID].ext`.

(Unique Scripts) `--output "%(title)s - %(uploader)s - %(upload_date)s/%(title)s - %(uploader)s - %(upload_date)s [%(id)s].%(ext)s"` : Tell youtube-dl to download the videos in folders and subfolders, using the naming scheme `Title - Uploader - 20191231/Title - Uploader - 20191231 [VIDEOID].ext`.

`--merge-output-format "mkv"` : Tell youtube-dl to merge the video and audio that were downloaded separately in a `.mkv` file.

(Archive Scripts) `--datebefore "$(( $(date +%Y) -1))"1231` (Linux) `--datebefore "$($(get-date -Format yyyy)/1 - 1)1231"` (Windows) : Tell youtube-dl to download everything that was created before December 31 (included), of the past year.

(Archive Scripts) `--dateafter "$(date +%Y)"0101` (Linux) `--dateafter "$(get-date -Format yyyy)0101"` (Windows) : Tell youtube-dl to download everything that was created after January 1 (included), of the current year.

`--batch-file "Source - XXXXXX.txt"` : Tell youtube-dl to look for links in `Source - XXXXXX.txt`.
