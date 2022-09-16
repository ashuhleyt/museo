class Curator 
  attr_reader :photographs, 
              :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def photographs_by_artist 
    photos_by_artist = Hash.new { |hash, key| hash[key] = []}
    @photographs.each do |photograph|
      photos_by_artist[find_artist_by_id(photograph.artist_id)] << photograph 
      # require 'pry'; binding.pry
    end
    return photos_by_artist
  end
  
  def artists_with_multiple_photographs
     favored_artist = @artists.select do |artist|
      photographs_by_artist[artist].length >1
    end
    favored_artist.map do |artist|
      artist.name
    end
  end
end 