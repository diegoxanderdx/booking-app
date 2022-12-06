class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :start_time, null: false
      t.string :end_time, null: false
      t.integer :total_sits, null: false
      t.integer :remaining_sits, null: false
      t.float :entrance_fee, null: false

      t.timestamps
    end
  end
end
