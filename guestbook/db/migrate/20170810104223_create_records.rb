class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :name
      t.string :email
      t.text :text

      t.timestamps
    end
  end
end
