class AddQtyColsToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :qty_total, :integer
    add_column :equipment, :qty_available_for_borrow, :integer
    add_column :equipment, :qty_borrowed, :integer
    add_column :equipment, :qty_balance, :integer
  end
end
