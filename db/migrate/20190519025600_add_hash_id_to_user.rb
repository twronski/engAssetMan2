class AddHashIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hash_id, :string, index: true
    User.all.each{|m| m.set_hash_id; m.save}
  end
end
