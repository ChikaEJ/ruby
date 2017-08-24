class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.float :rating
      t.text :text
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
