# Check Unavailability Script

An experimental script that check if the downloaded videos are still available on YouTube.

See the reasoning in: https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection/issues/65

This scripts only supports YouTube, running it on a folder that contain videos from other source will just make those videos appear as not available on YouTube.


This script was made with ChatGPT 3 and fixed by hand.

Prompt: "I have a lot of files named "file [youtube video ID].mkv". Make a bash script that recursively get those youtube videos ID and check if those videos are still available on youtube. If they aren't, output the ID to a text file."


# Usage

Copy this script next to the download script and run it.

The list of available videos will be outputed to `unavailable_videos.txt` next to the script.


# Warning

This script is highly experimental and hasn't been as extensively tested as the other scripts.

Nothing bad should happen, however, use it at your own risk.

If you do run it and notice any bug with it, please open an issue.
