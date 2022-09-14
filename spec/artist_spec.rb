require 'rspec'
require './lib/artist'
require './lib/photograph'

RSpec.describe Artist do 
  before (:each) do
    @attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    @artist = Artist.new(@attributes)
  end
end