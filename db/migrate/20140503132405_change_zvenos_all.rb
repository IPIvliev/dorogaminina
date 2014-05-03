class ChangeZvenosAll < ActiveRecord::Migration
  def up
  	change_table :zvenos do |t|
	  t.rename :all, :vse
    t.remove :free
    t.boolean :can, :default => true
	end
  end

  def down
  	change_table :zvenos do |t|
	  t.rename :vse, :all
    t.remove :can
    t.integer :free, :default => 0
	end
  end
end
