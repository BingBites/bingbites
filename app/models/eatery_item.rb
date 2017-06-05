class EateryItem < ActiveRecord::Base
  belongs_to :eatery
  belongs_to :item
end
