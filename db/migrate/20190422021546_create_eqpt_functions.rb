class CreateEqptFunctions < ActiveRecord::Migration[5.2]
  def change
    create_table :eqpt_functions do |t|
      t.string :name

      t.timestamps
    end
  end
end
