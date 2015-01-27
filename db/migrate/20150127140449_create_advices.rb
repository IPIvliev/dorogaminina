class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.text :text
      t.boolean :see

      t.timestamps
    end
  end
end
