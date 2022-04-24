#!/bin/sh
#
# TheFrenchGhosty's Ultimate YouTube-DL Scripts Collection: The ultimate collection of scripts for YouTube-DL
# https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection
# https://github.com/TheFrenchGhosty
#
# Version: 3.2.2
#

yt-dlp \
--format "(bestaudio[acodec^=opus]/bestaudio)/best" \
--verbose \
--force-ipv4 \
--sleep-requests 1 \
--sleep-interval 5 \
--max-sleep-interval 30 \
--ignore-errors \
--no-continue \
--no-overwrites \
--download-archive archive.log \
--add-metadata \
--parse-metadata "%(title)s:%(meta_title)s" \
--parse-metadata "%(uploader)s:%(meta_artist)s" \
--write-description \
--write-info-json \
--write-annotations \
--write-thumbnail \
--embed-thumbnail \
--extract-audio \
--check-formats \
--concurrent-fragments 5 \
--match-filter "!is_live & !live" \
--output "%(playlist)s - (%(uploader)s)/%(upload_date)s - %(title)s/%(upload_date)s - %(title)s [%(id)s].%(ext)s" \
--throttled-rate 100K \
--batch-file "Source - Playlists.txt" 2>&1 \
| tee output.log
