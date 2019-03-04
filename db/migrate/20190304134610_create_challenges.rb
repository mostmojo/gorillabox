class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :title
      t.boolean :completed, default: false
      t.text :details
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
