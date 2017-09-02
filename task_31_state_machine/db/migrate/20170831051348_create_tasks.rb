class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :status, default: "new"
      t.string :cancel_reason

      t.timestamps
    end
  end
end
