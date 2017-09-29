class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :lastname
      t.string :position
      t.string :marriage
      t.text :responsibility
      t.references :department, foreign_key: true
      t.string :status
      t.integer :hours_of_duty
      t.string :image

      t.timestamps
    end
  end
end
