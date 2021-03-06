class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :title
      t.decimal :price
      t.integer :quantity
      t.string :image

      t.timestamps
    end
  end
end
