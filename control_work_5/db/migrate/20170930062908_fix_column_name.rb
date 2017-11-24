class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :notices, :contects, :contacts
  end
end
