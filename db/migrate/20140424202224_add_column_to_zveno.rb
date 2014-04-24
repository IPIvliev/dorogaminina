class AddColumnToZveno < ActiveRecord::Migration
	change_table :zvenos do |t|
	  t.integer :occupy
	end
end
