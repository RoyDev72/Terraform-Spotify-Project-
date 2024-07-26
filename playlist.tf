resource "spotify_playlist" "Beatles" {
    name = "Beatles"
  tracks = ["7pKfPomDEeI4TPT6EOYjn9"]
}

data "spotify_search_track" "Eminem" {
  artist = "Eminem"
}

resource "spotify_playlist" "Slimshady" {
  name = "Slim Shady"
  tracks = [
           data.spotify_search_track.Eminem.tracks[0].id,
           data.spotify_search_track.Eminem.tracks[1].id,
           data.spotify_search_track.Eminem.tracks[2].id,   
  ]
}
data "spotify_search_track" "arijit_singh" {
  artist = "Arijit Singh"
  limit = 15
}
resource "spotify_playlist" "fav" {
  name = "my fav.."
  tracks = [
           data.spotify_search_track.arijit_singh.tracks[0].id,
           data.spotify_search_track.arijit_singh.tracks[1].id,
           data.spotify_search_track.arijit_singh.tracks[2].id,
           data.spotify_search_track.arijit_singh.tracks[3].id,
           data.spotify_search_track.arijit_singh.tracks[4].id,
           data.spotify_search_track.arijit_singh.tracks[5].id,   ]
}