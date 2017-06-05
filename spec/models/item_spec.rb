require 'rails_helper'
require 'spec_helper'

RSpec.describe Item, type: :model do
  subject { build(:item) }

  it "has a valid factory" do
    expect(subject).to be_valid
  end

  it "is not valid without valid attributes" do
    subject.name = nil
    subject.description = nil
    expect(subject).to_not be_valid
  end
  
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do 
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid wihtout a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

end
