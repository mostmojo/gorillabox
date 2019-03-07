class AddSetGoalsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :set_goals, :string
  end
end
