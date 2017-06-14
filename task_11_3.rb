class Worker
  attr_accessor :name, :salary
  def initialize(salary = nil, name = "Worker")
    @name = name
    @salary = salary
  end
  def do_work
    p "#{@name} did his job"
  end
  def get_salary
    p "#{@name} salary is #{@salary} points"
  end
end
class Programmer < Worker
  def do_work
    p "#{@name} hes made a website"
  end
end
class TaxiDriver < Worker
  def do_work
    p "#{@name} hes finished his fare"
  end
end
nick = Programmer.new(300, "Nick")
vova = TaxiDriver.new(450, "Vova")

nick.do_work
nick.get_salary
vova.do_work
vova.get_salary
