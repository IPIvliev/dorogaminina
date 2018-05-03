class ChangeTypeForZvenos < ActiveRecord::Migration
  def up
    change_table :zvenos do |t|
      t.change :number, :string
    end
  end
  def down
    change_table :zvenos do |t|
      t.change :number, :integer
    end
  end
end
