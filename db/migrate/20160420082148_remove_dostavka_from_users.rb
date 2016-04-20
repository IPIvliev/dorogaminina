class RemoveDostavkaFromUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :dostavka
  end

  def down
  end
end
