class ChangeZvenos < ActiveRecord::Migration
	change_table :zvenos do |t|
	  t.remove :free
	  t.rename :occupy, :all
	end
end
