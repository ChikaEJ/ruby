class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name_of_product
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
