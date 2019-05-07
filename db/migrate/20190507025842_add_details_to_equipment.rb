class AddDetailsToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :asset_number, :string
    add_column :equipment, :is_inspected, :bool
    add_column :equipment, :calibration_expiration, :date
  end
end
