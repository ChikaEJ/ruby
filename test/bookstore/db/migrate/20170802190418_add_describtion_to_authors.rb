class AddDescribtionToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :describtion, :text
  end
end
