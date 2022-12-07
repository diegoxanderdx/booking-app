class ChangeStripeCustomerId < ActiveRecord::Migration[7.0]
  def change
    rename_column :customers, :stripe_custumer_id, :stripe_customer_id
  end
end
