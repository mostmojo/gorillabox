class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :billing_address, :string
  end
end
