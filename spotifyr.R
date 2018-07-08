# devtools::install_github('JosiahParry/geniusR')
# devtools::install_github('charlie86/spotifyr')
 

library(spotifyr)

client_id <- Sys.getenv("spotify_client_id")
secret_id <- Sys.getenv("spotify_secret")
access_token <- get_spotify_access_token(client_id, secret_id)

beatles <- get_artist_audio_features('the beatles', access_token = access_token)

library(tidyverse)
library(knitr)

get_my_top_artists(time_range = 'long_term', limit = 5) %>% 
  select(artist_name, artist_genres) %>% 
  kable()

beatles %>%
  count(key_mode, sort = TRUE) %>%
  head(5) %>%
  kable()

albums <- get_artist_albums('little mix', access_token = access_token)
tracks <- get_album_tracks(albums, access_token = access_token)
track_popularity <- get_track_popularity(tracks, access_token = access_token)
artists <- get_artists("the beatles", access_token = access_token)
artists2 <- get_artists("little mix", access_token = access_token)


