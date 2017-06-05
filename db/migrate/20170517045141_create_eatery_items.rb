class CreateEateryItems < ActiveRecord::Migration
  def change
    create_table :eatery_items do |t|
      t.references :eatery, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
