class AddRuToProducts < ActiveRecord::Migration
  def change
    add_column :products, :title_ru, :string
    add_column :products, :description_ru, :text
  end
end
