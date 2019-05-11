class RemoveDetailsFromEquipment < ActiveRecord::Migration[5.2]
  def change
    remove_column :equipment, :is_available_for_borrow, :bool
    remove_column :equipment, :is_inspected, :bool
    remove_column :equipment, :has_display, :bool
  end
end
