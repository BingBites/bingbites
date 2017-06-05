class AddPriceRangeToEateries < ActiveRecord::Migration
  def change
    add_column :eateries, :price_range, :integer, null: false, default: 0
  end
end
