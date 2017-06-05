require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }

  it "has a valid factory" do
    expect(subject).to be_valid
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a provider" do
    subject.provider = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a uid" do
    subject.uid = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a image_url" do
    subject.image_url = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a url" do
    subject.url = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a location" do
    subject.location = nil
    expect(subject).to_not be_valid
  end

  it "should be admin user" do
    subject.role = "SUPERADMIN"
    subject.save!
    last_user = User.last
    expect(subject.role).to eq last_user.role
  end

  describe :super_admin? do
    before do 
      subject.role = 'SUPERADMIN'
      subject.save!
    end

    it "should return true for SUPERADMIN" do
      expect(subject.super_admin?).to be true
    end
  end

  describe :eatery_admin? do 
    before do 
      subject.role = 'EATERYADMIN'
      subject.save!
    end

    it "should return true for EATERYADMIN" do
      expect(subject.eatery_admin?).to be true
    end
  end

  describe ".from_omniauth" do
    context 'Creating new user' do
      subject { User.from_omniauth(JSON.parse(Faker::Omniauth.twitter.to_json))}
      it 'creates a valid user' do
        expect(subject).to be_valid
      end
    end
  end

  describe :role_type do 
    context 'Creating new user' do
      before do
        subject.role = "SUPERADMIN"
        subject.save!
      end

      it "checks the validity of the user role" do
        expect(subject.send(:role_type, "SUPERADMIN")).to be true
      end

      it "checks the in-validity of the user role" do
        expect(subject.send(:role_type, "EATERYADMIN")).to be false
      end

    end
  end
end





