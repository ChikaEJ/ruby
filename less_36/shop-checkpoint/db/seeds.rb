# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def copy_image_fixture(file_name, id)
  dir = Rails.root.join('public', 'uploads')
  Dir.mkdir(dir) unless File.directory?(dir)
  FileUtils.cp(file_name, dir.join(id.to_s))
end

cpus_category = Category.create(name: 'CPUs')
motherboards_category = Category.create(name: 'Motherboards')
ram_category = Category.create(name: 'RAM')
hdd_category = Category.create(name: 'HDDs')

fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')

cpu = Product.create(title: 'Intel Core i7', price: 300, category: cpus_category)
copy_image_fixture(fixtures_path.join('cpu.jpg'), cpu.id)

ram = Product.create(title: '4GB DDR3 RAM', price: 40, category: ram_category)
copy_image_fixture(fixtures_path.join('ram.jpg'), ram.id)

hdd = Product.create(title: '1TB Seagate HDD', price: 60, category: hdd_category)
copy_image_fixture(fixtures_path.join('hdd.jpg'), hdd.id)

mb = Product.create(title: 'Asus P5Q3', price: 120, category: motherboards_category)
copy_image_fixture(fixtures_path.join('mb.jpg'), mb.id)