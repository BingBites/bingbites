class Category < ActiveRecord::Base
  has_many :eateries
  validates_presence_of :name
end
