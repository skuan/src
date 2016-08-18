class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :star_count
      t.string :author

      t.timestamps
    end
  end
end
