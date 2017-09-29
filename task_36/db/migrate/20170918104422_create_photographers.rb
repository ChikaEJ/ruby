class CreatePhotographers < ActiveRecord::Migration
  def change
    create_table :photographers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end
