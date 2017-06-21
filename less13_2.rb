class Computer
  attr_accessor :files, :name

  @@files = ["a.txt", "b.txt"]

  def initialize(name)
    @name = name
  end
  def self.get_files
    p @@files
  end
end
my_lenovo = Computer.new("My_lenovo")
Computer.get_files
