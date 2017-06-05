class Item < ActiveRecord::Base
  has_many :eatery_items
  has_many :eateries, through: :eatery_items
  has_attached_file :item_image, styles: { item_medium: "300x300>", item_thumb: "100x100>" }, 
    default_url: "missing.png"
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\z/
  validates_presence_of :name, :description
end
