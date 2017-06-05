require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.name { Faker::Omniauth.twitter[:info][:name] }
    f.provider { Faker::Omniauth.twitter[:provider] }
    f.uid { Faker::Omniauth.twitter[:uid] }
    f.image_url { Faker::Omniauth.twitter[:info][:image] }
    f.url { Faker::Omniauth.twitter[:info][:urls][:Twitter] }
    f.location {Faker::Omniauth.twitter[:info][:location]}
  end
end