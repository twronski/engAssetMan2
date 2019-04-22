class AddIndexToEqptType < ActiveRecord::Migration[5.2]
  def change
    execute <<-SQL
      CREATE UNIQUE INDEX type_lower_name_idx ON eqpt_types (LOWER(name));
    SQL
  end
end
