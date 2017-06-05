class AddLatLongToEateries < ActiveRecord::Migration
  def change
    add_column :eateries, :lat, :string, default: '42.08733738208514'
    add_column :eateries, :long, :string, default: '-75.97078230443904'
  end
end
