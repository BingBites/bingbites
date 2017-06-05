class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :location, :string
    add_column :users, :image_url, :string
    add_column :users, :url, :string
    # add not null constraints
    change_column :users, :provider, :string, null: false
    change_column :users, :uid, :string, null: false
    # indexes
    add_index :users, :provider
    add_index :users, :uid
    add_index :users, [:provider, :uid], unique: true
  end
end
