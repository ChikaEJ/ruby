class AddAdressToStaff < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :adress, :text
  end
end
