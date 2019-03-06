class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :delivery_date
      t.string :duration
      t.monetize :amount, currency: { present: false }
      t.references :user, foreign_key: true
      t.references :box, foreign_key: true

      t.timestamps
    end
  end
end
