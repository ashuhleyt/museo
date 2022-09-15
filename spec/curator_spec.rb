require 'rspec'
require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe Curator do 
  before(:each) do 
    @curator = Curator.new
  end

  it 'exists' do 
    expect(@curator).to be_instance_of(Curator)
  end
end