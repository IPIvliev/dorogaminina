class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :otchestvo
      t.integer :zveno_id
      t.string :phone
      t.integer :request_id
      t.string :size

      t.timestamps
    end
  end
end
