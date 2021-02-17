<h1 align="center">TheFrenchGhosty's Ultimate YouTube-DL Scripts Collection</h1>

<p align="center">The ultimate collection of scripts for YouTube-DL.</p>

Associated Reddit /r/Datahoarder post: [Here for 3.0.0](https://redd.it/llw7zq) | [Here for 2.0.0](https://redd.it/h7q4nz) | [Here for 1.0.0](https://redd.it/dwhvq6).

## Features:

- [Copylefted libre software](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts) (AGPLv3+ licensed)
- Download content in the best possible quality, better than every other software, period.
- Download all kind of content: channels, playlists and individual videos
- Download audio only content, in the best possible quality
- Content separated in two to be easier to archive
- Dedicated scripts to download videos destined to be watched and deleted on a PC
- Dedicated scripts to download videos destined to be watched on deleted on a Mobile device
- Easily expandable for users familiar with yt-dlp / youtube-dl
- [SponsorBlock](https://sponsor.ajay.app/) integration using [mpv_sponsorblock](https://github.com/po5/mpv_sponsorblock) by [@po5](https://github.com/po5)
- [Jellyfin](https://jellyfin.org/) integration using [Jellyfin YouTube Metadata Plugin](https://github.com/ankenyr/jellyfin-youtube-metadata-plugin) by [@ankenyr](https://github.com/ankenyr)
- No Contributor License Agreement
- No Code of Conduct

---

## Donate:

Liberapay: https://liberapay.com/TheFrenchGhosty

Bitcoin (BTC): [bc1qjpal63yc94jw03pnhu3vyfqv7djxsr0lmwe5jk](bitcoin:bc1qjpal63yc94jw03pnhu3vyfqv7djxsr0lmwe5jk)

Monero (XMR): [44yL1VNsRmvW3khxHAQvzr9mfyfkMLFmS5xo3EehkQRgcBSgAUcoqf4Cj9mTyCwEPm1Sif1Pqdbw5UoFCvNLNp6CET277J6](monero:44yL1VNsRmvW3khxHAQvzr9mfyfkMLFmS5xo3EehkQRgcBSgAUcoqf4Cj9mTyCwEPm1Sif1Pqdbw5UoFCvNLNp6CET277J6)

---

## Installation (Linux):

Install [yt-dlp](https://github.com/pukkandan/yt-dlp) and [ffmpeg](https://www.ffmpeg.org/) (optionnally, install [atomicparsley](https://github.com/wez/atomicparsley)), it's required for embedding thumbnails into m4a files).

Download the latest [release](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/releases) and follow the included ReadMe, do not use the `master` branch unless you are ready to re-download EVERYTHING.

---

## Installation (Windows):

Setup Windows Subsystem for Linux (WSL) and follow the Linux installation.

Detailed setup instruction need to be added to the documentation.

Why: Because Windows is using a path length limit of 260 characters, and because of the work required (and the fact that the Windows version was untested when it existed), Windows users needs to use the scripts in WSL. WSL bypass the path length limit so every video will get downloaded, however when playing it with a native Windows software the path length issue might be an issue, I can't do anything about that.

---

## Usage: 

Create a folder where you want your videos downloaded in a drive where you have enough space available.

Put the folders `Archivist Scripts`, `Audio-Only Scripts` and `Watch Scripts` in the created folder (See the documentation to understand the differences).

Add content to a 'Source - XXXXXX.txt' file depending of what type of content you want to download (See the documentation to understand the differences).

Open a terminal in the folder of the script you want to use and run `./[SCRIPT].sh`.

Done.

---

# Documentation:

## Basics:

- Scripts Type (Archivist, Audio-Only, Watch...): [Here](docs/Scripts-Type.md)

- Content Type (Channels, Playlists, Unique...): [Here](docs/Content-Type.md)

## Advanced:

- SponsorBlock implementation: [Here](docs/SponsorBlock.md)

- Region Restriction: [Here](docs/Region-Restriction.md)

- Details: [Here](docs/Details.md) 
