class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :number, :mobile_number
  end
end
