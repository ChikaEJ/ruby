class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :equipment, :type, :equipment_type
  end
end
