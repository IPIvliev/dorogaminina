class ChangeZveno < ActiveRecord::Migration
  def up
  	change_column_default(:zvenos, :free, 0)
  end

  def down
  	change_column_default(:zvenos, :free, nil)
  end
end
