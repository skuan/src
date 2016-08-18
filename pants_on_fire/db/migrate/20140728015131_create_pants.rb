class CreatePants < ActiveRecord::Migration
  def change
    create_table :pants do |t|
      t.integer :waist
      t.integer :length

      t.timestamps
    end
  end
end
