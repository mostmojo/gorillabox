class AddHasSubscription < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :has_subscription, :boolean, default: false
  end
end
