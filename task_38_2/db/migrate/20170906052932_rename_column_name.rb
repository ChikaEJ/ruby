class RenameColumnName < ActiveRecord::Migration
  def change
    rename_column(:users, :pass_hash, :password_digest)
  end
end
