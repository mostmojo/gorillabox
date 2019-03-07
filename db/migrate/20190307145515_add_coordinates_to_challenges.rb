class AddCoordinatesToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :latitude, :float
    add_column :challenges, :longitude, :float
    add_column :challenges, :address, :string
  end
end
