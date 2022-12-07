class ChangeDataTypeForContacNumber < ActiveRecord::Migration[7.0]
  def up
    change_column :customers, :contact_number, :string
  end

  def down
    change_column :customers, :contact_number, :integer
  end
end
