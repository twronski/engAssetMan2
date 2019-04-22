class CreateBorrows < ActiveRecord::Migration[5.2]
  def change
    create_table :borrows do |t|
      t.references :equipment, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :request_start_date
      t.datetime :request_return_date
      t.datetime :start_date
      t.datetime :return_date
      t.integer :status
      t.string :location

      t.timestamps
    end
  end
end
