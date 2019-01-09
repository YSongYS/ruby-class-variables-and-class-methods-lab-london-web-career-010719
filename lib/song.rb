class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] = @@genres.count(genre) #if !genre_count.has_key?(genre)
    end
    return genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] = @@artists.count(artist) #if !genre_count.has_key?(genre)
    end
    return artist_count
  end

end
