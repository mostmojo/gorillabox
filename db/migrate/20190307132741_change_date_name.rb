class ChangeDateName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :date, :date_of_birth
  end
end
