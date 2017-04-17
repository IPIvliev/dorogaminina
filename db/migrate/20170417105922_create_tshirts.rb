class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
