class RenameCustumerToCustomer < ActiveRecord::Migration[7.0]
  def change
    rename_table :custumers, :customers
  end
end
