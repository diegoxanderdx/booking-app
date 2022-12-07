class CreateCustumers < ActiveRecord::Migration[7.0]
  def change
    create_table :custumers do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.integer :contact_number, null: false
      t.string :stripe_custumer_id, null: false

      t.timestamps
    end
  end
end
