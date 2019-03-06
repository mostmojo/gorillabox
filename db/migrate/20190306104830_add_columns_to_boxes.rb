class AddColumnsToBoxes < ActiveRecord::Migration[5.2]
  def change
    add_column :boxes, :contents, :text
    add_column :boxes, :main_image, :string
    add_column :boxes, :image1, :string
    add_column :boxes, :image2, :string
    add_column :boxes, :image3, :string
    add_column :boxes, :image4, :string
  end
end
