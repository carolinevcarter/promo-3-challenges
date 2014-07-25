require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT Track.Name, Artist.Name, Album.Title
              FROM Track
              JOIN Artist ON Artist.ArtistId = Album.ArtistId
              JOIN Album ON Track.AlbumId = Album.AlbumId")
end
###############################

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  number = db.execute("SELECT count(Track.TrackId, avg(Track.Milliseconds)
    FROM Track
    JOIN Genre ON Track.GenreId = Genre.GenreId
    WHERE Genre.Name = "

    hash = {}
    hash[:category] = category
    hash[:number_of_songs] = number[0][0]
    hash[:avg_length] = avg[0][1]

    return hash

end

#################################

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists

  db.execute("SELECT Artist.Name, Count(Track.TrackId) AS nb_track
              FROM Artist
              JOIN Album ON Artist.ArtistId = Album.ArtistId
              JOIN Track ON Track.AlbumId = Album.ArtistId
              JOIN Genre ON Genre.GenreID = Track.GenreId
              WHERE Genre.Name like 'rock'
              GROUP BY Artist.Name
              ORDER BY nb_trak DESC LIMIT 0,5")
end


