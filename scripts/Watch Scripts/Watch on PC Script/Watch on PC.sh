#!/bin/sh
#
# TheFrenchGhosty's Ultimate YouTube-DL Scripts Collection: The ultimate collection of scripts for YouTube-DL
# https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection
# https://github.com/TheFrenchGhosty
#
# Version: 3.3.0
#

yt-dlp --format "$(cat "$(realpath "$(dirname "$0")/../../..")/Formats/best_formats.txt" | sed '/^#/d' | tr -d '\n')" --verbose --force-ipv4 --ignore-errors --no-continue --no-overwrites --download-archive archive.log --add-metadata --parse-metadata "%(title)s:%(meta_title)s" --parse-metadata "%(uploader)s:%(meta_artist)s" --all-subs --embed-subs --check-formats --concurrent-fragments 3 --output "%(uploader)s - %(upload_date)s - %(title)s [%(id)s].%(ext)s" --merge-output-format "mkv" --throttled-rate 100K --batch-file "Source - Watch on PC.txt" 2>&1 | tee output.log
