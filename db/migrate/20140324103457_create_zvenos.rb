class CreateZvenos < ActiveRecord::Migration
  def change
    create_table :zvenos do |t|
      t.integer :number
      t.integer :user_id
      t.integer :free
      t.integer :occupy

      t.timestamps
    end
  end
end
