#!/bin/sh
#
# TheFrenchGhosty's Ultimate YouTube-DL Scripts Collection: The ultimate collection of scripts for YouTube-DL
# https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection
# https://github.com/TheFrenchGhosty
#
# Version: 3.3.0
#

pathToFormat="$(realpath "$(dirname "$0")/../../..")/Formats/best_formats.txt"
if ! [ -f "$pathToFormat" ]; then
    echo "Error: File containing yt-dlp formats not found under \"$pathToFormat\"" >> /dev/stderr
    exit 1
fi

convertedFormats=$(cat $pathToFormat | sed '/^#/d' | tr -d '\n')
if [ -z "$convertedFormats" ]; then
    echo "Error: Something went wrong when reading/transforming the content of the yt-dlp formats file." >> /dev/stderr
    exit 1
fi

yt-dlp --format $convertedFormats --verbose --force-ipv4 --sleep-requests 1 --sleep-interval 5 --max-sleep-interval 30 --ignore-errors --no-continue --no-overwrites --download-archive archive.log --add-metadata --parse-metadata "%(title)s:%(meta_title)s" --parse-metadata "%(uploader)s:%(meta_artist)s" --write-description --write-info-json --write-annotations --write-thumbnail --embed-thumbnail --all-subs --embed-subs --check-formats --concurrent-fragments 3 --match-filter "!is_live & !live" --output "%(title)s - %(uploader)s - %(upload_date)s/%(title)s - %(uploader)s - %(upload_date)s [%(id)s].%(ext)s" --merge-output-format "mkv" --datebefore "$(date --date="30 days ago" +%Y%m%d)" --throttled-rate 100K --batch-file "Source - Unique.txt" 2>&1 | tee output.log
