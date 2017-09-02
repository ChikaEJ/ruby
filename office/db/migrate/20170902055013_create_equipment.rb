class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :type
      t.string :title
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
