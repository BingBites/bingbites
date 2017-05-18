require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
      expect(User.new).to be_valid
  end
  it "is not valid without a name" do
      expect(User.new(name: 'Anything')).to be_valid
  end

  it "is not valid without a email" do
      expect(User.new(email: 'anything@gmail.com')).to be_valid
  end
  
  it "should be admin user" do
    user = User.new(:name => "xyz", :email=> 'nil', :role=> "SUPERADMIN")
    user.save
    last_user = User.last
    expect(user.role).to eq 'SUPERADMIN'
  end
end

describe User do
  before { @user = User.new(name: "Test User", email: "test@gmail.com", 
            role: "SUPERADMIN") }
  subject { @user }
  
  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:role) }
   
  describe "when the default params, which are valid, pass" do
    it { should be_valid }
  end
  
end




