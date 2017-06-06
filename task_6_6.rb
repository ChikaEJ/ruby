items = ["cheese", "vine", "brad", "solt", "vodka"]
prices = [55.5, 800.5, 15, 57.4, 489.5]
p sprintf("%-20s %s", "Items", "Prices")

(items.size).times do |i|
  p sprintf("%-20s %6.2f", items[i], prices[i])
end
