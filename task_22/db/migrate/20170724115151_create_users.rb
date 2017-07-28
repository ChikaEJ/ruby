class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :pasword
      t.text :description
      t.string :gender
      t.string :city
      t.string :status

      t.timestamps
    end
  end
end
