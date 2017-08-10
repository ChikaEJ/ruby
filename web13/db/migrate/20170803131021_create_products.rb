class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.date :released_at
      t.datetime :published_at
      t.references :category, foreign_key: true
      t.integer :rating
      t.boolean :active

      t.timestamps
    end
  end
end
