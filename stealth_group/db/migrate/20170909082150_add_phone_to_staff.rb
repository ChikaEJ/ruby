class AddPhoneToStaff < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :phone, :integer
  end
end
