class RenameColumnInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :title, :title_en
    rename_column :products, :description, :description_en
    rename_column :products, :price, :price_en
  end

end
