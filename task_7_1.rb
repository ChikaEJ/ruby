contacts = [
  {name: "Dima", phone: "996555584738"},
  {name: "Sasha", phone: "996552345338"},
  {name: "Kolya", phone: "996779958474"},
  {name: "Bill", phone: "996555345432"}
]

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

def find_by_name(contacts, name)
  contacts.each do |contact|
    if contact[:name].downcase == name.downcase
      return contact
    end
  end
  return nil
end
loop do
  p "What do you want?  (list, find, exit, add, delete)"
  command = input_text

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
    new_contact = {}
    p "What name you want to add?"
    new_contact[:name] = input_text
    p "Enter phone number for #{new_contact[:name]}"
    new_contact[:phone] = input_text
    contacts << new_contact
  when "delete"
    p "Who do you want to find? "
    delete_name = input_text
    delete_conatct = find_by_name(contacts, delete_name)
    if delete_conatct.nil?
      p "Contsct not found!"
    else
      contacts.delete(delete_conatct)
      p "Contact if deleted"
    end
  when "edit"
    p "Who do you want to find and edit? "
    contact_name = input_text
    find_conatct = find_by_name(contacts, contact_name)
    if find_conatct.nil?
      p "Contact not found!"
    else
      p "Name: #{find_conatct[:name]}"
      p "Name: #{find_conatct[:phone]}"
      p "_____________________________"
      p "Please enter new phone number for #{find_conatct[:name]}"
      find_conatct[:phone] = input_text
      p "Contact is successful edited!"

    end

  when "exit"
    p "Bye!!!"
    break
  else
    p "Wrong command!!!!!!"
  end
end
