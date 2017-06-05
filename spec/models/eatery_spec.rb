require 'rails_helper'
require 'spec_helper'

RSpec.describe Eatery, type: :model do
  subject { build(:eatery) }

  it "has a valid factory" do
    expect(subject).to be_valid
  end

  it "is not valid without valid attributes" do
    subject.name = nil
    subject.address = nil
    subject.lat = nil
    subject.long = nil
    expect(subject).to_not be_valid
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do 
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a address" do
    subject.address = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a lat" do
    subject.lat = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a long" do
    subject.long = nil
    expect(subject).to_not be_valid
  end

  it "is valid on create" do
    subject.save!
    last_eatery = Eatery.last
    expect(subject).to eq last_eatery
  end

  describe ".search" do
    context 'Searching for eateries' do
      subject { create_list(:eatery, 5) }
      let(:eatery) { Eatery.search(subject.last.name) }
      it 'returns a valid search' do  
        expect(subject.last.name).to eq eatery.first.name
      end

    end

    context 'Searching for eateries with no params' do
      before do
        create_list(:eatery, 5) 
      end
      let(:eateries) { Eatery.search('') }
      it 'returns all eateries with no parameter passed' do
        expect(eateries.count).to eq 5
      end
    end
  end

  describe ".filters" do
    context 'Filters for eateries' do
      before do
        create_list(:eatery, 5)
        Category.create(name: 'MEXICAN')
        eatery = Eatery.first
        eatery.category = Category.first
        eatery.save!
      end
      let(:subject) { Eatery.filter(Category.find_by(name: "MEXICAN").id) }

      it 'returns a valid count of filtered results' do  
        expect(subject.count).to eq 1
      end

      it 'returns a valid filtered results' do  
        expect(subject.first.category).to eq Category.find_by(name: "MEXICAN")
      end
    end
  end
  
end


 






