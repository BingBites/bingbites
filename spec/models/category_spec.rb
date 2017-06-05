require 'rails_helper'
require 'spec_helper'

RSpec.describe Category, type: :model do
  
  subject { described_class.new }

  it "is not valid without valid attributes" do
    expect(subject).to_not be_valid
  end
  
  it "is valid with valid attributes" do
    subject.name = 'Test Category'
    expect(subject).to be_valid
  end

  it "is not valid without a name" do 
    subject.name = nil
    expect(subject).to_not be_valid
  end

end

