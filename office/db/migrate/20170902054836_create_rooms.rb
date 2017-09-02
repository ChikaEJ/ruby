class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :number
      t.string :title

      t.timestamps null: false
    end
  end
end
