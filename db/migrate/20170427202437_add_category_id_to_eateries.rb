class AddCategoryIdToEateries < ActiveRecord::Migration
  def change
    add_column :eateries, :category_id, :integer
  end
end
