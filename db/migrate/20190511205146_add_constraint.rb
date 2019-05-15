class AddConstraint < ActiveRecord::Migration[5.2]
  
  def up
    execute <<-SQL
      ALTER TABLE equipment ADD CONSTRAINT qty_total_greater_than_zero CHECK (qty_total > 0);
    SQL
    execute <<-SQL
      ALTER TABLE equipment ADD CONSTRAINT qty_available_for_borrow_greater_than_zero CHECK (qty_available_for_borrow > 0);
    SQL
    execute <<-SQL
      ALTER TABLE equipment ADD CONSTRAINT qty_borrowed_greater_than_zero CHECK (qty_borrowed > 0);
    SQL
    execute <<-SQL  
    ALTER TABLE equipment ADD CONSTRAINT qty_balance_greater_than_zero CHECK (qty_balance > 0);
    SQL
    execute <<-SQL  
    ALTER TABLE equipment ADD CONSTRAINT equipment_qty_available_lower_than_total CHECK (qty_available_for_borrow <= qty_total);
    SQL
    execute <<-SQL
    ALTER TABLE equipment ADD CONSTRAINT equipment_qty_borrowed_lower_than_available CHECK (qty_borrowed <= qty_available_for_borrow);
    SQL

  end

  def down
    execute <<-SQL
      ALTER TABLE equipment DROP CONSTRAINT qty_total_greater_than_zero;    
    SQL
    execute <<-SQL
      ALTER TABLE equipment DROP CONSTRAINT qty_available_for_borrow_greater_than_zero;    
    SQL
    execute <<-SQL
      ALTER TABLE equipment DROP CONSTRAINT qty_borrowed_greater_than_zero;    
    SQL
    execute <<-SQL  
      ALTER TABLE equipment DROP CONSTRAINT qty_balance_greater_than_zero;    
    SQL
    execute <<-SQL
      ALTER TABLE equipment DROP CONSTRAINT equipment_qty_available_lower_than_total;    
    SQL
    execute <<-SQL
      ALTER TABLE equipment DROP CONSTRAINT equipment_qty_borrowed_lower_than_available;    
    SQL

  end

end