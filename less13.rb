def do_somthing
  p "Global Method"

end
class Thing
  attr_accessor :name, :last_name, :age
  def initialize(name, last_name, age)
    @name = serialize_veriable(name)
    @last_name = serialize_veriable(last_name)
    @age = serialize_veriable(age)
  end
  def serialize_veriable(veriable)
    veriable.upcase
  end
  def full_name
    @name + " " + @last_name
  end
  def do_somthing
    p "Thing class method"
  end
end
veriable = Thing.new("Ivan", "Pterov", "28")
p veriable.full_name
