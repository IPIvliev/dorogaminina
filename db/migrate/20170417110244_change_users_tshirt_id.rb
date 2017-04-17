class ChangeUsersTshirtId < ActiveRecord::Migration
  def up
  	change_table :users do |t|
	  t.rename :tshirt, :tshirt_id
	end
  end

  def down
  	change_table :users do |t|
	  t.rename :tshirt_id, :tshirt
	end
  end
end
