class AddCoolToPants < ActiveRecord::Migration
  def change
  	add_column :pants, :cool, :string
  end
end
