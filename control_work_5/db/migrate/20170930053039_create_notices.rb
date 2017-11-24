class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.text :content
      t.string :contects

      t.timestamps
    end
  end
end
