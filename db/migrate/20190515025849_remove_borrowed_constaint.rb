class RemoveBorrowedConstaint < ActiveRecord::Migration[5.2]
  def change
    execute <<-SQL
    ALTER TABLE equipment DROP CONSTRAINT qty_borrowed_greater_than_zero;    
    SQL
  end
end
