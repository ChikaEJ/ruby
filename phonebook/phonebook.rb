class Contact
  attr_accessor :name, :phone

  def initialize(name, phone)
    @name = name
    @phone = phone
  end

  def to_s
    "Name: #{@name}, phone: #{@phone}"
  end
end

class PhoneBook
  attr_reader :contacts

  def initialize(contacts)
    @contacts = contacts
  end

  def add(contact)
    @contacts.push(contact)
  end

  def find_by_name(name)
    @contacts.each do |contact|
      return contact if contact.name == name
    end

    nil
  end

  def delete_by_name(name)
    contact = find_by_name(name)
    @contacts.delete(contact) unless contact.nil?
  end
end

class Application
  def initialize
    @phonebook = PhoneBook.new(get_initial_contacts)
  end

  def run
    loop do
      puts "What do you want to do?"
      action = gets.chomp
      case action
        when "add"
          add()
        when "find"
          find()
        when "list"
          list()
        when "delete"
          delete()
        when "exit"
          break
      end
    end

  end

  private

  def get_initial_contacts
    [
        Contact.new("John Doe", "0555 55 55 55"),
        Contact.new("Jane Doe", "0777 77 77 77")
    ]
  end

  def add
    puts "Enter name"
    name = gets.chomp
    puts "Enter phone"
    phone = gets.chomp
    contact = Contact.new(name, phone)
    @phonebook.add(contact)
  end

  def find
    puts "Enter name"
    name = gets.chomp
    contact = @phonebook.find_by_name(name)
    puts (contact.nil?) ? "Not found" : contact
  end

  def list
    puts @phonebook.contacts
  end

  def delete
    puts "Enter name"
    name = gets.chomp
    @phonebook.delete_by_name(name)
  end
end

app = Application.new
app.run