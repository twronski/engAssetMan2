class AddIndexToEqptModel < ActiveRecord::Migration[5.2]
  def change
    execute <<-SQL
      CREATE UNIQUE INDEX model_lower_name_idx ON eqpt_models (LOWER(name));
    SQL
  end
end
