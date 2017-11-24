def copy_image_fixture(file_name, id)
  dir = Rails.root.join('public', 'uploads')
  Dir.mkdir(dir) unless File.directory?(dir)
  FileUtils.cp(file_name, dir.join(id.to_s))
end
User.create(name: "admin", email: 'admin@admin.com', password: 'admin', password_confirmation: 'admin')
johndoe = Photographer.create(name: 'John', lastname: 'Doe', email: 'johndoe@gmail.com', phone: 566655)
jackblack = Photographer.create(name: 'Jack', lastname: 'Black', email: 'jackblack@gmail.com', phone: 225685)


fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')

sea = Photo.create(title: 'Sea', description: 'Lorem ipsum ', photographer: johndoe)
copy_image_fixture(fixtures_path.join('sea.jpg'), sea.id)

ocean = Photo.create(title: 'Ocean', description: 'Lorem ipsum ', photographer: jackblack)
copy_image_fixture(fixtures_path.join('ocean.jpg'), ocean.id)
