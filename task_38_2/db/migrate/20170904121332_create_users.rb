class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :pass_hash
      t.text :adress
      t.integer :phone

      t.timestamps null: false
    end
  end
end
