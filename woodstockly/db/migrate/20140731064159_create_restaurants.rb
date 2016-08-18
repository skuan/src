class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.float :rating
      t.string :cuisine
      t.boolean :delivery

      t.timestamps
    end
  end
end
