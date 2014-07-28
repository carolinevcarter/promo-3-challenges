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

  detailed_tracks = detailed_tracks(db)
  detailed_tracks.each do |track|
    track_name = track[0]
    artist_name = track[1]
    album_name = track[2]
    puts "#{index + 1}. #{track_name} (Album: #{album_title}, by #{}"

end

##L'enfant a la cle etrangere (Track)

#Track
#--TackID
#--Name
#--AlbumID

#Album
#--AlbumID
#--Title
#--ArtistID

#Artist
#--AristID
#--Name

###############################

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  number = db.execute("SELECT Genre.Name, AVG(Track.Milliseconds)/ 60000 as avg
    COUNT (TrackID)
    FROM Track
    JOIN Genre ON Track.GenreId = Genre.GenreId
    GROUP BY Genre.Name
    ORDER BY avg DESC"

    stats = {}
    {
      "Rock'n Roll" =>

    }

    rows.each do |row|
      genre = row[0]
      average = row[1]
      count = row[2]
      stats[genre] = {
        average = average,
        count = count
         }
end
stats

end

#Genre
#--GenreId
#--Name

#Track
#--Name
#--GenreId
#--Milliseconds

#{"Rock'n Roll"}


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


