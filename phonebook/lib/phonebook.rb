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
