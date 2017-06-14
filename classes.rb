class Person
  def initialize(name)
    @name = name
  end
def get_name
  @name
end
def set_name(new_name)
  @name = new_name
end
  def print_greetong(name)
    puts "#{@name} greets #{name}"
  end
end


dmitriy = Person.new
p dmitriy.print_greetong("Dima")
p dmitriy.set_name("Gilani")
p dmitriy.get_name
