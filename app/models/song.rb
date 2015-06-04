class Song < ActiveRecord::Base
  has_many :album_songs, dependent: :destroy
  has_many :albums, through: :album_songs

  def album_name 
    firstalbum = albums.first
    if firstalbum
      firstalbum.name    
    else 
      "no album"
    end    
  end
end
