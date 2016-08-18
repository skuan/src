class ChangeCoolFromStringToBoolean < ActiveRecord::Migration
  def change
    change_column :pants, :cool, :boolean
  end
end
