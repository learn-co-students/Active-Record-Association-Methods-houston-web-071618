class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.all_artist_names.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    all_artists = self.songs.map do |song_obj|
      song_obj.artist.name
    end
    
    all_artists.uniq
  end
end
