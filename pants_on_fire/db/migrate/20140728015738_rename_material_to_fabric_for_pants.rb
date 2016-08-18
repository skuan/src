class RenameMaterialToFabricForPants < ActiveRecord::Migration
  def change
    rename_column :pants, :material, :fabric
  end
end
