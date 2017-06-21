class Car
  attr_accessor :title, :price
  def initialize(title, price)
    @title = title
    @price = price
  end
  @@cars = []

  @@cars.push(Car.new(@title, @price))


end

class UsedCar < Car
  attr_accessor :mileage
  def initialize(title, price, mileage)
    @mileage = mileage
    @price = price * (1 - mileage / 100000.0)
    @title = title
  end
  @@cars.push(UsedCar.new(@title, @price, @mileage))
  puts @@cars
end

class CarPriceCalculator < UsedCar
  def initialize
    @cars = @@cars
  end
  def total_sum
    @cars.each do |car|
      p car
      sprintf("15% -7%", @title, @price)
    end
  end
end
audio = UsedCar.new("Auidio", 6000, 45000)
audio_new = Car.new("Auidio", 6000)
bmw = UsedCar.new("BMW", 8000, 32000)
mersedess = Car.new("Mersedess Benz", 15000)
p audio.title, audio.price, audio.mileage
calc = CarPriceCalculator.new
p calc.total_sum
