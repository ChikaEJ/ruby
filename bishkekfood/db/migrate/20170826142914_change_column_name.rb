class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :shops, :tatle, :title
    rename_column :shops, :description, :describtion
    rename_column :foods, :description, :describtion
  end
end
