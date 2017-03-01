#3 types of hashes
bike = {"color" => "blue", "size" => "big", "price" => 500}
scooter = {:color => "white", :size => "small", :price => 80}
helmet = {color: "red", size: "small", price: 80}

p " #{bike['color']} "
p " #{scooter[:color]} "
p " #{helmet[:color]} "

# class
class Store 
  attr_reader :item, :color, :size, :price
  attr_writer :item, :price
  
  def initialize(input_hash)
    @item = input_hash[:item]
    @color = input_hash[:color]
    @size = input_hash[:size]
    @price = input_hash[:price] 
  end

  def sentence
    "the #{size} #{color} #{item} costs $#{price} "
  end
end

item1 = Store.new(item: "bike", color: "red", size: "small", price: 500)
item2 = Store.new(item: "scooter", color: "white", size: "big", price: 80)
item3 = Store.new(item: "helmet", color: "black", size: "small", price: 30)

p item1.sentence
p item2.sentence
p item3.sentence

item1.price = 550
p item1.sentence
p item2.color


