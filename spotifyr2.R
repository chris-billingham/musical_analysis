



little_mix_albums <- get_artist_albums('little mix', access_token = access_token)
# little_mix_albums <- get_album_data('little mix', albums = albums$album_name, access_token = access_token)
little_mix_tracks <- get_album_tracks(little_mix_albums, access_token = access_token)
little_mix_audio_features <- get_track_audio_features(little_mix_tracks, access_token = access_token)


radiohead_albums <- get_artist_albums('radiohead', access_token = access_token)
radiohead_tracks <- get_album_tracks(radiohead_albums, access_token = access_token)
radiohead_audio_features <- get_track_audio_features(radiohead_tracks, access_token = access_token)

analysis <- list(little_mix_albums, little_mix_tracks, little_mix_audio_features, radiohead_albums, radiohead_tracks, radiohead_audio_features)

saveRDS(analysis, "music_analysis.rds")
