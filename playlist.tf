resource "spotify_playlist" "Bollywood" {
  name   = "Bollywood"
  tracks = ["songid1", "songid2", "songid3"]
}

data "spotify_search_track" "artist name" {
  artist = "artist name"  
}

resource "spotify_playlist" "slim_shady" {
  name = "slim_shady"
  tracks = [data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
    data.spotify_search_track.eminem.tracks[2].id,
    data.spotify_search_track.eminem.tracks[3].id,
  data.spotify_search_track.eminem.tracks[4].id]
}


