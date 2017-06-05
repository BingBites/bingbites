class AddSlugToEateries < ActiveRecord::Migration
  def change
    add_column :eateries, :slug, :string
    add_index :eateries, :slug, unique: true
  end
end
