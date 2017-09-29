# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{name: 'vasya', lastname: 'petrov', email: 'petrov@gamil.com', adress: 'Bidshkek city, Manas str 234', phone: 0555555555, password: '111', password_confirmation: '111'}, {name: 'petya', lastname: 'ivanov', email: 'ivanov@gamil.com', adress: 'Bidshkek city, Chuy ave 222', phone: 0777777777, password: '111', password_confirmation: '111'}, {name: 'shurik', lastname: 'sidorov', email: 'Sidorov@gamil.com', adress: 'Bidshkek city, Turusbekova str 23', phone: 0700000000, password: '111', password_confirmation: '111'}])