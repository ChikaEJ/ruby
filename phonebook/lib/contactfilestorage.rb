class ContactFileStorage
  require "json"
  def initialize(file_name)
    @file_name = file_name
  end
  def read
    array_of_contacts = []
    file_name = File.read("contacts.txt")
    parsed_file = JSON.parse(file_name)
    parsed_file.each do |contact|
      array_of_contacts << Contact.new(contact['name'], contact['phone'])
    end
    # file_name.close
    return array_of_contacts
  end
  def write(array_of_contacts)
    file_name = File.open("contacts.txt", "w")
    h = []
    array_of_contacts.each do |contact|
      h << {name: contact.name,
      phone: contact.phone}
    end
    file_name.write(h.to_json)
    file_name.close
  end
end
