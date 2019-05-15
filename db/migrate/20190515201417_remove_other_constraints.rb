class RemoveOtherConstraints < ActiveRecord::Migration[5.2]
  def change
    execute <<-SQL  
      ALTER TABLE equipment DROP CONSTRAINT qty_balance_greater_than_zero;    
    SQL
  end
end
