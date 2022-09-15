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

  it 'exists' do 
    expect(@artist).to be_instance_of(Artist)
  end

  it 'has readable attributes' do 
    expect(@artist.id).to eq('2')
    expect(@artist.name).to eq("Ansel Adams")
    expect(@artist.born).to eq("1902")
    expect(@artist.died).to eq("1984")
    expect(@artist.country).to eq("United States")
    expect(@artist.age_at_death).to eq(82)
  end

end