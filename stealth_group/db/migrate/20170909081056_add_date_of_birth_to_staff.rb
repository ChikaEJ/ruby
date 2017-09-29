class AddDateOfBirthToStaff < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :date_of_birth, :date
  end
end
