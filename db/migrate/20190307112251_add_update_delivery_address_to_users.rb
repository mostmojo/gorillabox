class AddUpdateDeliveryAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :delivery_address, :string
  end
end
