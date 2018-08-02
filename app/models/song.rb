class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    #find_or_create_by(attributes, &block) public
    #Finds the first record with the given attributes, or creates a record #with the attributes if one is not found:
    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake
  end
end
