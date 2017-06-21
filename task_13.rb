class Car
  attr_accessor :title, :price
  def initialize(title, price)
    @title = title
    @price = price
  end
  def price_of_car
    @price
  end
end

class UsedCar < Car
  def initialize(title, price, mileage)
    if mileage > 50000
      @mileage = 50000
    else
      @mileage = mileage
    end
    @price = price * (1 - mileage / 100000.0)
    @title = title
  end
  def price_of_car
    @price
  end
end

class CarPriceCalculator
  def initialize(cars)
    @cars = cars
  end
  def list_of_cars
    total = 0
    p sprintf("%-15s %15s", "Title", "Price")
    @cars.each do |car|
      p sprintf("%-15s %15.2f", car.title, car.price)
      total += car.price
    end
    p sprintf("%-15s %15.2f", "Total sum:", total)
  end
end
cars = []
loop do
  p "Do you want to add car to the list? Yes/No"
  answer = gets.chomp.downcase
  if answer != "yes" && answer != "no"
    p "Please enter correct answer!"
  else
    case answer
    when "yes"
      p "Please enter car model"
      car_model = gets.chomp.capitalize
      p "Please enter price for this car"
      price_of_car = gets.chomp.to_f
      p "Please enter mileage for this car if it is used car"
      mileage = gets.chomp.to_f
      p mileage
      if mileage == nil || mileage == 0.0
        cars.push(Car.new(car_model, price_of_car))
      else
        cars.push(UsedCar.new(car_model, price_of_car, mileage))
      end
    when "no"
      calc = CarPriceCalculator.new(cars)
      calc.list_of_cars
      break
    end
  end
end
# audi = UsedCar.new("Audi", 6000)
# audi_new = Car.new("Audi", 6000)
# bmw = UsedCar.new("BMW", 8000, 32000)
# mersedess = Car.new("Mersedess Benz", 15000)
# cars = [audi, audi_new, bmw, mersedess]
