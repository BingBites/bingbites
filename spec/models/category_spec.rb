require 'rails_helper'
require 'spec_helper'

RSpec.describe Category, type: :model do
  
  it "is invalid without a categories" do
      expect(Eatery.new(name: 'anything categories')).to be_valid
  end
  
  it "is not valid" do
    eatery = Eatery.new( :name => "Mexican")
    eatery.save!
    last_eatery = Eatery.last
    expect(eatery).to eq last_eatery
  end
  
end

