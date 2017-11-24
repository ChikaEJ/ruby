
cpus_category = Category.create(name_en: 'CPUs', name_ru: 'ЦП')
motherboards_category = Category.create(name_en: 'Motherboards', name_ru: 'Материнские платы')
ram_category = Category.create(name_en: 'RAM', name_ru: 'Оперативная память')
hdd_category = Category.create(name_en: 'HDDs', name_ru: 'Жесткие диски')

fixtures_category = Category.create(name_en: 'Fixtures', name_ru: 'Фикстуры')

fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')

cpu = Product.create!(title_en: 'Intel Core i7', title_ru: 'Intel Core i7', price_en: 300, description_en: Faker::Lorem.paragraph, description_ru: 'описание на русском языке', category: cpus_category)
cpu.image = (fixtures_path.join('cpu.jpg')).open
cpu.save!

ram = Product.create!(title_en: '4GB DDR3 RAM', title_ru: '4Гб DDR3 RAM', price_en: 40, description_en: Faker::Lorem.paragraph, description_ru: 'описание на русском языке', category: ram_category)
ram.image = (fixtures_path.join('ram.jpg')).open
ram.save!

hdd = Product.create!(title_en: '1TB Seagate HDD', title_ru: '1Гб Seagate Жесткий диск', price_en: 60, description_en: Faker::Lorem.paragraph, description_ru: 'описание на русском языке', category: hdd_category)
hdd.image = (fixtures_path.join('hdd.jpg')).open
hdd.save!

mb = Product.create!(title_en: 'Asus P5Q3', title_ru: 'Asus P5Q3', price_en: 120, description_en: Faker::Lorem.paragraph, description_ru: 'описание на русском языке', category: motherboards_category)
mb.image = (fixtures_path.join('mb.jpg')).open
mb.save!

50.times do
  Product.create(title_en: Faker::Commerce.product_name,
                 title_ru: 'название на русском',
                 price_en: Faker::Commerce.price,
                 description_en: Faker::Lorem.paragraph,
                 description_ru: 'Какое то описание на русском языке',
                 category: fixtures_category)
end

user = User.create(name: 'John Doe', email: 'johndoe@example.com', password: '12345678', password_confirmation: '12345678')
admin_user = User.create!(name: 'James Bond', email: 'admin@example.com', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)
admin_user.avatar = (fixtures_path.join('Jbond.jpg')).open
admin_user.save!