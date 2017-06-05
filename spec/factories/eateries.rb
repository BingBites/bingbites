require 'faker'

FactoryGirl.define do
  factory :eatery do |f|
    f.name { Faker::Company.name }
    f.address { Faker::Address.street_address }
    f.lat { Faker::Address.latitude }
    f.long { Faker::Address.longitude }
  end
end