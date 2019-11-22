require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/songs.db")}
#creating Database
DB[:conn].execute("DROP TABLE IF EXISTS songs")
#droping table to not create error
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS songs (
  id INTEGER PRIMARY KEY,
  name TEXT,
  album TEXT
  )
SQL
#creating a table
DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
