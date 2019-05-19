class AddHashIdToEquipment2 < ActiveRecord::Migration[5.2]
  
  def up
    add_column :equipment, :hash_id, :string, index: true
    Equipment.all.each{|m| m.set_hash_id; m.save}
  end

  def down
    remove_column :equipment, :hash_id, :string
  end

end
