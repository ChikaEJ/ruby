require "./lib/contact.rb"
require "./lib/phonebook.rb"
require "./lib/contactfilestorage.rb"

class Application
  def initialize
    @contactsfile = ContactFileStorage.new("contacts.txt")
    @phonebook = PhoneBook.new(@contactsfile.read)
  end
  def run
    loop do
      puts "What do you want to do?(add, find, list, delete, exit)"
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
        when "write"
          write()
        when "read"
          read()
        when "exit"
          break
      end
    end
  end
  def add
    puts "Enter name"
    name = gets.chomp
    puts "Enter phone"
    phone = gets.chomp
    contact = Contact.new(name, phone)
    @phonebook.add(contact)
    write()
  end
  def write
    @contactsfile.write(@phonebook.contacts)
  end
  def read
      p @contactsfile.read
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
    write()
  end
end
app = Application.new
app.run
