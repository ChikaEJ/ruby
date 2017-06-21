class Computer
	attr_accessor :name

	@@counter = 0

	def more_count
		puts @@counter += 1
	end

	def initialize(name)
		@name = name
	end
end

my_mac = Computer.new("My_Mac")
my_mac.more_count

my_mac2 = Computer.new("One more mac")
my_mac2.more_count
