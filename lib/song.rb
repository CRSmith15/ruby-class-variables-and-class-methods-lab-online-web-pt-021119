class Song
  attr_accessor :name , :artist , :genre 
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(song_name, artist, genre)
    @@count += 1 
    @@genres << genre 
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq 
    
  end
  
  def self.artists
    @@artists.uniq
    
  end
    
  def genre_count
    all_genres = {}
    @@genres.each do |genre|
      if all_genres[genre]
        all_genres[genre] += 1 
      else
        all_genres[genre] = 1
      end
    end
    all_genres
    end 
      
  
end