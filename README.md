<h1 align="center">TheFrenchGhosty's Ultimate YouTube-DL Scripts Collection</h1>

<p align="center">The ultimate collection of scripts for YouTube-DL.</p>

<p align="center">🎉 Thanks for 2000 stars! 🎉</p>

## Features:

- [Copylefted libre software](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts) (GPLv3 licensed)
- Download content in the best possible quality, better than every other software, period.
- Download all kind of content: channels, playlists and individual videos
- Download audio only content, in the best possible quality
- Content separated in two to be easier to archive
- Dedicated scripts to download videos destined to be watched and deleted on a PC
- Dedicated scripts to download videos destined to be watched and deleted on a Mobile device
- Easily expandable for users familiar with yt-dlp / youtube-dl
- [SponsorBlock](https://sponsor.ajay.app/) integration using [mpv_sponsorblock](https://github.com/po5/mpv_sponsorblock) by [@po5](https://github.com/po5)
- [Jellyfin](https://jellyfin.org/) integration using [Jellyfin YouTube Metadata Plugin](https://github.com/ankenyr/jellyfin-youtube-metadata-plugin) by [@ankenyr](https://github.com/ankenyr)
- No Contributor License Agreement
- No Code of Conduct

---

## Donate:

- Liberapay: https://liberapay.com/TheFrenchGhosty

- Ko-fi: https://ko-fi.com/TheFrenchGhosty

- Patreon: https://www.patreon.com/TheFrenchGhosty

- Monero (XMR): 87Ak7caLNYa7JKEQT4fYSDFsF5GeUZ21pFYtsNaEBSQZ7X8UcamThvvJeGo3ysuSDHcVAKz5JjX936K7cpJduHBZ5UzhgLZ (preferred)

- Wownero (WOW): WW3kVSN33A4AZN4EfT46nYVPVuhV2Mfby5oeuYbZZe34fECAGZgBcSiDuHD1crb2n97UqkgiJ1NWxCG7xgAqp8zU36fxcFATQ

- Bitcoin (BTC): bc1qvstl5gvkyx8er48lrpyxhlrdn7yrde0zj52rkz

- Litecoin (LTC): ltc1q6r6jhtktnvv8e80k6jaupe4dmmcxw7tcsrf0jt

---

# About the slow to non-existent updates:

As you can see, this project doesn't get a lot of updates, the reason is simple: this project is complete.

I've been using it a lot since I created it: tens of TB of videos were downloaded with the "Archivist Scripts (No Comments)", and I'm using the Watch scripts daily.

---

## Installation (Linux):

Install [yt-dlp](https://github.com/yt-dlp/yt-dlp) and [ffmpeg](https://www.ffmpeg.org/) (optionally, install the others [yt-dlp dependencies](https://github.com/yt-dlp/yt-dlp#dependencies)).

Download the latest [release](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/releases) and follow the included ReadMe, do not use the `master` branch unless you are ready to re-download EVERYTHING.

---

## Installation (Windows):

The Windows version, while it existed, required a lot of work to maintain because it needed specific changes compared to the linux version, and was never extensively tested. Windows users need to use the scripts in WSL, Cygwin, Git Bash, or some other Linux-on-Windows environment that enables Bash functionality in Windows.
 
Installation using WSL (recommended): [Here](docs/WSL.md)

Installation using Cygwin, Git Bash or similar: [Here](docs/Cygwin-Git-Bash.md)

Downloaded videos will likely exceed Windows' 260-character path length limit and not be playable out of the box. You should read more about [paths](docs/About-Paths.md) to familiarize yourself with the issue, as well as some potential workarounds.

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

---

## Contact:

If you want to get in touch with me, or other users of my projects, feel free to join the Matrix room of one of my other project [PussTheCat.org](https://pussthecat.org): [#pussthecat.org:pussthecat.org](https://matrix.to/#/#pussthecat.org:pussthecat.org).

If you want to contact me privately, see: https://pussthecat.org/about/.
