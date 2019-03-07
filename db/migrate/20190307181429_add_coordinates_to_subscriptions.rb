class AddCoordinatesToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :latitude, :float
    add_column :subscriptions, :longitude, :float
  end
end
