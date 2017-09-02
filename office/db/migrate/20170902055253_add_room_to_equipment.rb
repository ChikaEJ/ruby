class AddRoomToEquipment < ActiveRecord::Migration
  def change
    add_reference :equipment, :room, index: true, foreign_key: true
  end
end
