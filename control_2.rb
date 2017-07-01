class Product
  attr_accessor :name, :price, :amount
  @@basket = {}
  def initialize(name, price, amount)
    @name = name
    @price = price
    @amount = amount
    @basket = @@basket
  end
  def self.get_receipt(new_receipt)
    file_name = File.new("#{new_receipt}.txt", "w")
    receipt = File.open(file_name, 'a')
    total_price = 0
    @@basket.each do |product_name, price_amount|
      price_for_products = price_amount[0]*price_amount[1]
      p price_amount
      receipt.write(sprintf("%-30sx%5i =%7.2f", product_name, price_amount[1], price_for_products))
      receipt.write("\n")
      total_price += price_for_products
    end
    receipt.write("=========================================================\n")
    receipt.write(sprintf("%-42s=%.2f", "Total", total_price))
    receipt.close
  end
  def self.read_receipt(name_of_file)
    receipt = File.open("#{name_of_file}.txt", "r")
    receipt.each_line do |line|
      p line.chomp
    end
    receipt.close
  end
  def self.in_the_basket
    total_price = 0
    @@basket.each do |product, price_amount|
      p "#{product}  x  #{price_amount[1]}  =  #{price_amount[0] * price_amount[1]}"
      total_price += price_amount[0] * price_amount[1]
    end
    p "================================================"
    p "Total = #{total_price}"
  end
  def add_to_basket
    @@basket.store(@name,[@price, @amount])
  end
  def self.end_of_trade
    @@basket = {}
  end
  def self.remove_from_basket(product)
    if @@basket.include?(product)
      @@basket.delete(product)
      p "You remove #{product} from basket"
    else
      p "There is no such prodact!"
    end
  end
  def self.change_prodact(product)
    if @@basket.include?(product)
      @@basket.delete(product)
      p "Please enter new product"
      new_product = gets.chomp
      p "Please enter price of product"
      price_of_product = gets.chomp.to_f
      p "Please enter amount"
      amount_of_product = gets.chomp.to_i
      @@basket.store(new_product,[price_of_product, amount_of_product])
      p "You successfuly changed product"
    else
      p "There is no such prodact!"
    end
  end
end
loop do
  p "Do you want to bay something? (yes, no)"
  answer = gets.chomp
  case answer
  when "yes"
    loop do
      p "What do you want to do? (add, view, receipt, old receipt, remove, change, end)"
      command = gets.chomp
      case command
      when "add"
        p "Please enter product"
        product = gets.chomp
        p "Please enter price of product"
        price_of_product = gets.chomp.to_f
        p "Please enter amount"
        amount_of_product = gets.chomp.to_i
        new_product = Product.new(product, price_of_product,    amount_of_product)
        new_product.add_to_basket
        p "You successfuly added new product"
      when "view"
        Product.in_the_basket
      when "change"
        p "What prodact do you want to change?"
        prodact_to_change = gets.chomp
        Product.change_prodact(prodact_to_change)
      when "remove"
        p "What prodact do you want to change?"
        prodact_to_remove = gets.chomp
        Product.remove_from_basket(prodact_to_remove)
      when "old receipt"
        p "Enter name of the receipt"
        name_of_receipt = gets.chomp
        Product.read_receipt(name_of_receipt)
      when "receipt"
        p "Please enter name of file"
        name_of_file = gets.chomp
        Product.get_receipt(name_of_file)
        p "Thank you for your purchase!"
        Product.end_of_trade
        Product.read_receipt(name_of_file)
        break
      when "end"
        break
      else
        p "Wrong command!"
      end
    end
  when "no"
    p "Thank you! Please come again!"
    break
  end
end
