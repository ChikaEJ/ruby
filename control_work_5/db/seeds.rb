# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create( name: 'Admin', email: 'admin@gmail.com', password: 'admin123', password_confirmation: 'admin123', admin: true)
user1 = User.create(name: 'user1', email: 'user1@gmail.com', password: 'user123', password_confirmation: 'user123', admin: false)
user2 = User.create(name: 'user2', email: 'user2@gmail.com', password: 'user123', password_confirmation: 'user123', admin: false)

category1 = Category.create(title: 'Cars', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do')
category2 = Category.create(title: 'House', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do')
category3 = Category.create(title: 'Some', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do')

notice1 = Notice.create(title: 'sale Honda', category_id: 1, user_id: 2, contacts: '0555767676', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do')
notice2 = Notice.create(title: 'sale house', category_id: 2, user_id: 3, contacts: '0777654323', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do')
notice3 = Notice.create(title: 'sale Some', category_id: 3, user_id: 2, contacts: '0700988987', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do')
