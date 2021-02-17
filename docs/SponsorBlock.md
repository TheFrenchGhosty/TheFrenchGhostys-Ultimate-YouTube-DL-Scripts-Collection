## SponsorBlock implementation

SponsorBlock is fully usable with the videos downloaded by this script thanks to [MPV_SponsorBlock](https://github.com/po5/mpv_sponsorblock) by [po5 / Eva](https://github.com/po5) since this [issue](https://github.com/po5/mpv_sponsorblock/issues/5).

To use it you just have to set: `local_pattern = " %[([%a%d%-_]+)].[mw][kpe][v4b]m?$"` in `sponsorblock.lua`.

Note that this will send/leak to the SponsorBlock server everything that use this naming including "[CRCs in anime-style naming](https://github.com/TheFrenchGhosty/TheFrenchGhostys-YouTube-DL-Archivist-Scripts/issues/1#issuecomment-633000802)". 
