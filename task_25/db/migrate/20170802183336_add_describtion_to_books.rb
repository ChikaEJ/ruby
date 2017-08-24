class AddDescribtionToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :describtion, :text
  end
end
