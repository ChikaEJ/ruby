class AddEmailToStaff < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :email, :string
  end
end
