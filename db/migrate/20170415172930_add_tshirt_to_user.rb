class AddTshirtToUser < ActiveRecord::Migration
  def change
    add_column :users, :tshirt, :integer, :limit => 1, :default => 0
  end
end
