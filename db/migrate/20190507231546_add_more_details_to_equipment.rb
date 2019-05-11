class AddMoreDetailsToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :is_available_for_borrow, :integer
    add_column :equipment, :is_inspected, :integer
    add_column :equipment, :has_display, :integer
  end
end
