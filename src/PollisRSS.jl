"""
	PollisRSS

The feeds that Pollis offers in Explore > RSS > RSS Feeds, by topic, as one JSON file: `topics`, each with its feeds
(name, address and, when it matters, a note, a medium and the journal's ISSNs), and `defaults`, the feeds Pollis
follows at first. The feed list only: never the items, which each Pollis reads from the feeds themselves.

```julia
using PollisRSS, DuckDB
DBInterface.execute(DBInterface.connect(DuckDB.DB), "SELECT t.topic, len(t.feeds) AS feeds FROM (SELECT unnest(topics) AS t FROM '$(PollisRSS.json())')")
```
"""
module PollisRSS

"""The JSON file of the feeds."""
json() = joinpath(pkgdir(PollisRSS), "data", "feeds.json")

end
