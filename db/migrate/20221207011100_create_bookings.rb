class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :number_of_tickets, null: false
      t.float :amount_paid, null: false
      t.string :stripe_transaction_id, null: false
      t.references :customer, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
