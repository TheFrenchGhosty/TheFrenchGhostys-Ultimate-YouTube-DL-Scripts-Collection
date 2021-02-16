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
