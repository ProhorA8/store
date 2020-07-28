require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/music'
require_relative 'lib/product_collection'
require_relative 'lib/cart'

collection = ProductCollection.from_dir("#{__dir__}/data")
collection.sort!(by: :title, order: :asc)
items = collection.to_a
cart = Cart.new
user_input = nil

until user_input&.zero? || items.empty?
  puts "Что хотите купить:"
  puts
  items.reject! { |item| item.amount.zero? }
  items.each.with_index(1) { |item, index| puts "#{index}. #{item}" }
  puts "0. Выход"
  puts

  user_input = STDIN.gets.to_i
  puts
  item = items[user_input - 1]

  if (1..items.size).include?(user_input)
    cart.add_item(item)
    item.amount -= 1
    puts "Товары в вашей корзине: #{cart.buy_amount}"
    puts cart.current_cart
    puts
    puts "Сумма заказа: #{cart.show_amount} руб."
    puts
  end
end

puts "Количество купленных товаров: #{cart.buy_amount}"
puts cart.current_cart
puts
puts "С вас - #{cart.show_amount} руб.\nСпасибо за покупки!"
