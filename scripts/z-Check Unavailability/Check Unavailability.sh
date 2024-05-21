#!/bin/bash
#
# TheFrenchGhosty's Ultimate YouTube-DL Scripts Collection: The ultimate collection of scripts for YouTube-DL
# https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection
# https://github.com/TheFrenchGhosty
#
# Version: 3.4.0 (EXPERIMENTAL)
#


output_file="unavailable_videos.txt"

# Function to extract YouTube video IDs from filenames
get_video_ids() {
    find . -type f -name "*\[*\].mkv" | sed 's/.*\[//;s/\].mkv$//'
}

# Check if a YouTube video is still available
is_video_available() {
    video_id="$1"
    if yt-dlp -e "https://www.youtube.com/watch?v=${video_id}" >/dev/null 2>&1; then
        return 0  # Available
    else
        return 1  # Unavailable
    fi
}

# Main loop
for video_id in $(get_video_ids); do
    if ! is_video_available "$video_id"; then
        echo "$video_id" >> "$output_file"
    fi
done

echo "Unavailable YouTube video IDs have been saved to $output_file"
