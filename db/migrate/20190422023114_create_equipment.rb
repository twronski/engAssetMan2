class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.references :eqpt_type, foreign_key: true
      t.references :eqpt_model, foreign_key: true
      t.references :eqpt_function, foreign_key: true
      t.string :order_code, limit: 50
      t.string :serial_number, limit: 50
      t.string :lab_location, limit: 50
      t.string :manuf_password, limit: 50
      t.string :photo
      t.boolean :is_available_for_borrow 
      t.boolean :has_display
      t.text :comments

      t.timestamps
    end
  end
end
