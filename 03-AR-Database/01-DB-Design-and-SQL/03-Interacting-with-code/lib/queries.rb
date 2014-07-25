require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  db.execute("SELECT COUNT(*) from #{table_name}")
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
  db.execute("SELECT Name FROM Artist ORDER BY Name ASC;")
end

def love_tracks(db)
  #TODO: return array of love songs
  db.execute("SELECT Name FROM Track WHERE Name LIKE '%love%' ORDER BY NAME ASC;")
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
  min_length_in_milliseconds = min_length * 60000
  db.execute("SELECT Name FROM Track WHERE Milliseconds > #{min_length_in_milliseconds}")
end