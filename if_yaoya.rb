products = [
  { name: "トマト", price: 100},
  { name: "にんじん", price: 200},
  { name: "かぼちゃ", price: 300},
  { name: "スイカ", price: 1000}
]

puts "商品を選択してください"
products.each.with_index(1) do |product, i| 
  puts "#{i}.#{product[:name]}" "(¥#{product[:price]})"
end

puts "商品を選択 >"
products_selected_num = 0

loop do
  products_selected_num = gets.to_i
  break if (1..4).include?(products_selected_num)
  puts "1から4の数字を入力してください"
  puts "商品の選択 >"
end

products_vegetable = products[products_selected_num -1 ]
puts "#{products_vegetable[:name]}ですね、何個買いますか？"

puts "個数を入力 >"
quantity_of_products = 0

loop do
  quantity_of_products = gets.to_i
  break if 1 <= quantity_of_products
  puts "1以上の数字を入力してください"
  puts "個数を入力 >"
end

total_price = quantity_of_products * products_vegetable[:price]
discount_price = (total_price * 0.8).floor
if quantity_of_products >= 5
  puts "5個以上なので20%割引になります。"
  puts "合計金額は#{discount_price}円です。"
else
  puts "合計金額は#{total_price}円です。"
  puts "お買い上げありがとうございます"
end