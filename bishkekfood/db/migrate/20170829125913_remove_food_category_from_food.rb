class RemoveFoodCategoryFromFood < ActiveRecord::Migration[5.1]
  def change
    remove_column :foods, :food_category_id
  end
end
