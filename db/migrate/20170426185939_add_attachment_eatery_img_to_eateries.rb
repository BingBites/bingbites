class AddAttachmentEateryImgToEateries < ActiveRecord::Migration
  def up
    add_attachment :eateries, :eatery_img
  end

  def self.down
    remove_attachment :eateries, :eatery_img
  end
end
