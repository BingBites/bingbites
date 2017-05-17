require 'spec_helper'
FactoryGirl.define do
factory :details do |f|
  f.name { Faker::Name.f_name }
  f.email { Faker::Name.mail }
end

factory :invalid_contact, parent: :details do |f|
  f.name nil
end
end