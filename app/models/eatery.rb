class Eatery < ActiveRecord::Base
    belongs_to :category
    has_attached_file :eatery_img, 
      styles: { eatery_index: "250x350>", eatery_show: "325x475>" },
      default_url: "missing.png"
    validates_attachment_content_type :eatery_img, content_type: /\Aimage\/.*\z/
    validates_numericality_of :rating, in: 1..5
    validates_numericality_of :price_range, in: 1..5

    def self.search(search)
        if search
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
