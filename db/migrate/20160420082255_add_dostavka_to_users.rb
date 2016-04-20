class AddDostavkaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dostavka, :integer, :limit => 1, :default => 9
  end
end
