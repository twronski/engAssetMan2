class AddIndexToEqptFunction < ActiveRecord::Migration[5.2]
  def change
    execute <<-SQL
      CREATE UNIQUE INDEX function_lower_name_idx ON eqpt_functions (LOWER(name));
    SQL
  end
end
