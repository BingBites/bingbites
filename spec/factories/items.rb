require 'faker'

FactoryGirl.define do
  factory :item do |f|
    f.name { Faker::Food.ingredient }
    f.description { Faker::Food.spice }
  end
end