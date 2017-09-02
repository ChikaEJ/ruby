# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
room = Room.create([{number: 1, title: "Hall"}, {number: 2, title: "Couter"}])
equipment = Equipment.create([{equipment_type: "Furniture", title: "Table", description: "just a table", room_id: 1}, {equipment_type: "Network hardware", title: "switch", description: "Tp-link", room_id: 2}])
