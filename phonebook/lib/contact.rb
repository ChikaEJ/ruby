  class Contact
    attr_accessor :name, :phone

    def initialize(name, phone)
      @name = name
      @phone = phone
    end

    def to_s
      "Name: #{@name}, phone: #{@phone}"
    end
    # def to_json
    #   {"Name" => @name, "phone" => @phone}
    # end
  end
