class AddRatingToEateries < ActiveRecord::Migration
  def change
    add_column :eateries, :rating, :integer, null: false, default: 0
  end
end
