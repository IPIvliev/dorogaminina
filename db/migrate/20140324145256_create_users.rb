class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :otchestvo
      t.integer :zveno_id
      t.integer :request_id
      t.string :size
      t.integer :paid,        :default => 0

      t.timestamps
    end
  end
end
