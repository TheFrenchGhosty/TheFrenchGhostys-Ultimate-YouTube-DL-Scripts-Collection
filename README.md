# TheFrenchGhosty's YouTube-DL Archivist Scripts

Associated Reddit /r/Datahoarder post: [Here for 1.0.0](https://redd.it/dwhvq6) and [Here for 2.0.0](https://redd.it/h7q4nz).

**Require [yt-dlp](https://github.com/pukkandan/yt-dlp) and [ffmpeg](https://www.ffmpeg.org/) (optionnally, requires [atomicparsley](https://github.com/wez/atomicparsley))**

The ultimate collection of scripts for YouTube-DL.


## Usage :

Download the latest [release](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/releases) and follow the included ReadMe, do not use the `master` branch unless you are ready to redownload EVERYTHING.

Install [yt-dlp](https://github.com/pukkandan/yt-dlp) and [ffmpeg](https://www.ffmpeg.org/) (optionnally, install [atomicparsley](https://github.com/wez/atomicparsley)), it's required for embedding thumbnails into m4a files).

Note: youtube-dl *should* work but isn't officially supported.

**Windows**: Because Windows is using a path length limit of 260 characters, and because of the work required (and the fact that the Windows version was untested when it existed), Windows users needs to use the scripts in WSL. WSL bypass the path length limit so every video will get downloaded, however when playing it with a native Windows software the path length issue might be an issue, I can't do anything about that.

Create a folder where you want your videos downloaded in a drive where you have enough space available.

Put the folders `Active Scripts`, `Archive Scripts` and `Watch Script` of your OS in the created folder (Read the section named "[Archive, Active, Watch, Watch on Mobile Devices and Audio Only Scripts?](#archive-active-watch-watch-on-mobile-devices-and-audio-only-scripts)" to understand the differences).

Add content to a 'Source - XXXXXX.txt' file depending of what type of content you want to download (Read the section named "[Channels, Playlists and Unique Scripts?](#channels-playlists-and-unique-scripts)" to understand the differences).

(Linux) Open a terminal in the folder of the script you want to use and run `./[SCRIPT].sh`.

(Windows) Open Powershell in the folder of the script you want to use and run `[SCRIPT].ps1` **or** Open a `.ps1` file directly (Note: if you open a `.ps1` file directly, the Powershell window will automatically close when the script is done, this isn't recommended).

Done.

# Documentation:

## Basics:

- Scripts Type (Archive, Active, Watch...): [Here](docs/Scripts-Type.md)

- Content Type (Channels, Playlists, Unique...): [Here](docs/Content-Type.md)

## Advanced:

- Sponsorblock implementation: [Here](docs/Sponsorblock.md)

- Region Restriction: [Here](docs/Region-Restriction.md)

- Details: [Here](docs/Details.md) 
