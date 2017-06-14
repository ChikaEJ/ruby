class Item
  attr_accessor :name, :price, :quantity
  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end
  def item_info
    puts sprintf("%-30s %-3ix $%-7.2f = $%7.2f", @name, @quantity, @price, (@quantity * @price))
  end
end
stick = Item.new("Stick", 3.46, 20)
tv = Item.new("TV", 63.46, 23)
keys = Item.new("Keys for the guitar", 1233.46, 2)
socs = Item.new("Socs", 5, 210)

stick.item_info
tv.item_info
keys.item_info
socs.item_info
