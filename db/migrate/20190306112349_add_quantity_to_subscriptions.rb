class AddQuantityToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :quantity, :integer
  end
end
