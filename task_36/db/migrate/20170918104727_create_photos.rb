class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.references :photographer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
