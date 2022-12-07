class ChangeDataTypeForEntranceFee < ActiveRecord::Migration[7.0]
  def up
    change_column :events, :entrance_fee, :bigint
  end

  def down
    change_column :events, :entrance_fee, :float
  end
end
