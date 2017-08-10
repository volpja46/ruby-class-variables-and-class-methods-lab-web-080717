require 'pry'
class Song

attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []


def initialize(name, artist, genre)
  @name, @artist, @genre = name, artist, genre
  @@count += 1
  @@artists << self.artist
  @@genres << self.genre
  end

def self.artists
  @@artists.uniq
end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

#returns a hash of genres and the number of songs that have those genres
def self.genre_count
  genre_count = {}
  @@genres.each do |genre|
     if genre_count[genre] #if there is acount fo this genre add 1
     genre_count[genre] += 1
   else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_counter = {}

    @@artists.each do |artist|
    if artist_counter[artist]
      artist_counter[artist] +=1
    else
      artist_counter[artist] = 1
    end
  end
    artist_counter
  end


#that returns a hash of artists and the number of songs that have those artists

end
