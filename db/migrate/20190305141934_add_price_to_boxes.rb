class AddPriceToBoxes < ActiveRecord::Migration[5.2]
  def change
    add_monetize :boxes, :price, currency: { present: false }
  end
end
