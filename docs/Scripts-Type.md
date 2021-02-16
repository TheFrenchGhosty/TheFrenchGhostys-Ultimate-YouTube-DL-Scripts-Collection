## Archive, Active, Watch, Watch on Mobile Devices and Audio Only Scripts?

Downloading and archiving "live" content is complicated, especially because gigabytes of it will be created each day.

Considering that I chose to separate the content:

Archive Scripts: Scripts that will download everything that was created before December 31 of the previous year (included). For example, if the current date is any day between 2021-01-01 and 2021-12-31, everything created up to and including 2020-12-31 will be downloaded. Because YouTube takes time to transcode videos (usually 1 week, maximum 1 month), you may want to avoid running the Archive Scripts too soon into the new year.

Active Scripts: Scripts that will download everything that was created after January 1 of the current year (included). For example, if the current date is 2021-02-02, everything created between and during the dates 2021-01-01 and 2021-02-02 will be downloaded.

Watch Script: Script that will download individual videos made by a creator that are not meant to be archived but deleted after being watched (naming scheme: `Uploader - 20201231 - Title [VIDEOID].ext`).

Watch on Mobile Devices Script: Script that will download individual videos made by a creator that are not meant to be archived but deleted after being watched, in old video and audio format that are support by every mobile devices. (naming scheme: `Uploader - 20201231 - Title [VIDEOID].ext`).

Consider the "Watch Script" and "Watch on Mobile Devices Script" useful for downloading "throwaway" videos. Data normally useful for archivers, such as the thumbnail, are omitted.

Audio Only Script: Script that will only download audio (or that will extract the audio from videos that contain it) in the best possible quality.

These dates will need to be incremented every year January 1 and the content created by the active scripts will need to be moved to the archive (including the `archive.log` that will need to be merged). 
