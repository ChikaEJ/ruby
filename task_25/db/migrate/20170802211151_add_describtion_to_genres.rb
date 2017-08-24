class AddDescribtionToGenres < ActiveRecord::Migration[5.1]
  def change
    add_column :genres, :describtion, :text
  end
end
