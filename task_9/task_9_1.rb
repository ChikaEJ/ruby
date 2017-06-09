def read_contacts(contacts_file)
  contact_data = []
  count = 0
  contacts_file.each_line do |line|
    contact_name, contact_phone = line.split
    contact_data[count] = {name: contact_name, phone: contact_phone.to_i}
    count = count + 1
  end
  contacts_file.close
  return contact_data
end
def write_contact(contact_data)
  contacts_file = File.open("contacts.txt", "w")
  contact_data.each do |line|
    contacts_file.write("#{line[:name]} #{line[:phone]}\n")
  end
  contacts_file.close
  return contact_data

end

def find_by_name(contacts, name)
  contacts.each do |contact|
    if contact[:name].downcase == name.downcase
      return contact
    end
  end
  return nil
end


def add_contacts(contacts_file)
  p "Please enter name and phone number for new contact (name phone)"
  contact = gets.chomp.capitalize
  if contact.include?(",")
    return "Incorect input!"
  else
    contacts_file.write(contact)
    contacts_file.write("\n")
    contacts_file.close
    return "Contact was successful added!"
  end
end

def delete_contact(delete_name)
    contacts_file = File.open("contacts.txt")
    contact_data = read_contacts(contacts_file)
    delete_contact = find_by_name(contact_data, delete_name)

    if delete_contact.nil?
      p "Contsct not found!"
    else
      contact_data.delete(delete_contact)
      p "Contact is deleted"
    end

    write_contact(contact_data)
end

def edit_contact(edit_name)
  contacts_file = File.open("contacts.txt")
  contact_data = read_contacts(contacts_file)
  edit_contact = find_by_name(contact_data, edit_name)

  if edit_contact.nil?
    p "Contact not found!"
  else
    p "Name: #{edit_contact[:name]}"
    p "Name: #{edit_contact[:phone]}"
    p "_____________________________"
    p "Please enter new number for #{edit_name}"
    edit_contact[:phone] = gets.chomp.to_i
    p "Contact is edited successful!"
  end

  write_contact(contact_data)
end


def input_text
  print ">>"
  input = gets.chomp
  return input
end

def find_list_by_name(contacts, name)
	list_of_contacts = []
	contacts.each do |contact|
		if contact[:name].downcase == name.downcase
			list_of_contacts << contact
		end
	end
	if list_of_contacts.nil?
		return nil
	else
		return list_of_contacts
	end
end



loop do
  p "What do you want?  (list, find, exit, add, delete, edit)"
  command = input_text
  contacts_file = File.open("contacts.txt")
  contacts = read_contacts(contacts_file)
  case command
  when "list"
    contacts.each do |contact|
      p "Name: #{contact[:name]}"
      p "Phone: #{contact[:phone]}"
      p "__________________________"
  end
  when "find"
    p "What do you want to find? "
    contact_name = input_text
    find_conatct = find_by_name(contacts, contact_name)
    if find_conatct.nil?
      p "Contsct not found!"
    else
      p "Name: #{find_conatct[:name]}"
      p "Name: #{find_conatct[:phone]}"
      p "_____________________________"
    end
  when "add"
    contacts_file = File.open("contacts.txt", "a")
    p add_contacts(contacts_file)
  when "delete"
    p "Who do you want to delete? "
    delete_name = input_text
    delete_contact(delete_name)
  when "edit"
    p "Who do you want to find and edit? "
    contact_name = input_text

    edit_contact(contact_name)

  when "exit"
    p "Bye!!!"
    break
  else
    p "Wrong command!!!!!!"
  end
end
