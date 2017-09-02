class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :desc
      t.string :status, :default => "new"
      t.string :cancel_reason

      t.timestamps
    end
  end
end
