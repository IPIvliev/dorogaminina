class ChangeStringPosts < ActiveRecord::Migration
  def change
  	change_column :posts, :text, :text, :limit => 4294967295
  end
end
