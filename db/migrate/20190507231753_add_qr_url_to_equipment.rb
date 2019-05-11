class AddQrUrlToEquipment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :qr_url, :string
  end
end
