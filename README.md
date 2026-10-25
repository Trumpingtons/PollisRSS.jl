# PollisRSS.jl

The feeds that [Pollis](https://pollis.org) offers in **Explore > RSS > RSS Feeds**, by topic: one JSON file, `data/feeds.json`. The feed list only, never the items: each Pollis reads those from the feeds themselves.

```julia
using PollisRSS
PollisRSS.json()  # the path of feeds.json
```

Pollis ships the version of this file it was made with, and installs the package, keeps it up to date with GitHub, and offers the feeds of the newest version. A feed added or corrected here reaches Pollis without a new Pollis. The feeds a user follows are the user's own, in `~/.pollis/rss/feeds.jsonl`; nothing here changes them.

## topics

One object per topic, in the order Pollis lists them: `topic`, its name, which Pollis stores with each feed followed, so a topic is not renamed lightly; and `feeds`, one object per feed:

| Field | |
|---|---|
| `name` | the name shown for the feed |
| `url` | the address of the feed: RSS 2.0, Atom, or a YouTube channel's |
| `note` | when it matters, the id of a note shown beside the feed, which Pollis translates: `paywall`, `busy`, `weekdays`, `preprints`, `youtube`, `podcast`, `readersLinks`, `newEntries` or `weekly`; Pollis shows no note for an id it does not know |
| `media` | `audio` for a podcast's feed |
| `issns` | the ISSNs of the journal whose feed it is, print and electronic |

## defaults

The feeds Pollis follows at first, `url` and `topic` each.

## Licence

MIT.
