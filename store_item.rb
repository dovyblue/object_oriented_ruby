# # 3 types of hashes
# bike = {"color" => "blue", "size" => "big", "price" => 500}
# scooter = {:color => "white", :size => "small", :price => 80}
# helmet = {color: "red", size: "small", price: 80}

# p " #{bike['color']} "
# p " #{scooter[:color]} "
# p " #{helmet[:color]} "

# class
class Store 
  attr_reader :item, :color, :size, :price
  attr_writer :item, :price
  
  def 
    initialize(item, color, size, price)
    @item = item
    @color = color
    @size = size
    @price = price 
  end

  def sentence
    "the #{size} #{color} #{item} costs $#{price} "
  end
end

item1 = Store.new("bike", "red", "small", 500)
item2 = Store.new("scooter", "white", "big", 80)
item3 = Store.new("helmet", "black", "small", 30)

# p item1.sentence
# p item2.sentence
# p item3.sentence

item1.price = 550
p item1.sentence
p item2.color