require 'rails_helper'
require 'spec_helper'


RSpec.describe Eatery, type: :model do
  it "is valid with valid attributes" do
      expect(Eatery.new).to be_valid
  end
  it "is not valid without a name" do
      expect(Eatery.new(name: 'BingB')).to be_valid
  end

  it "is not valid without a email" do
      expect(Eatery.new(address: 'anything address')).to be_valid
  end
  
  it "is not valid without a categories" do
      expect(Eatery.new(address: 'anything category')).to be_valid
  end
  
   it "is not valid" do
     #setup
    eatery = Eatery.new( :name => "One", :address => "hie", :eatery_img_file_name => "hjj", 
    :created_at => "Tue, 02 May", :eatery_img_content_type =>"image/jpeg")
    eatery.save!
    last_eatery = Eatery.last
    expect(eatery).to eq last_eatery
  end
  
end


 






