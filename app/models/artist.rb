class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.genres.first
  end

  def song_count
   self.songs.count
  end

  def genre_count
   arr = []
    genres.collect do |elem|
      arr << elem
    end
   count = 0
   for each_element_in_array in arr do
    count = count + 1
   end
    count
  
  end
end
