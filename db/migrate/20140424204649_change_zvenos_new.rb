class ChangeZvenosNew < ActiveRecord::Migration
	change_table :zvenos do |t|
	  t.rename :occupy, :free
	end
end
