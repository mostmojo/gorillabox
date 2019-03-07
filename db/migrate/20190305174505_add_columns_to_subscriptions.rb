class AddColumnsToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :state, :string
    add_column :subscriptions, :box_sku, :string
    add_column :subscriptions, :payment, :jsonb
    add_column :subscriptions, :delivery_address, :string
  end
end
