class Eatery < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :category
  has_many :eatery_items
  has_many :items, through: :eatery_items
  has_attached_file :eatery_img, 
    styles: { eatery_index: "250x350>", eatery_show: "325x475>" },
    default_url: "missing.png"
  validates_attachment_content_type :eatery_img, content_type: /\Aimage\/.*\z/
  validates_numericality_of :rating, in: 1..5
  validates_numericality_of :price_range, in: 1..5
  validates_presence_of :name, :address, :lat, :long

  def self.search(search)
    if search.present?
      where(["name LIKE ?","%#{search}%"])
    else
      all
    end
  end

  def self.filter(category)
    where(category: category).order('created_at DESC')
  end
end
