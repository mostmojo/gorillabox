class AddskuToBoxes < ActiveRecord::Migration[5.2]
  def change
    add_column :boxes, :sku, :string
  end
end
