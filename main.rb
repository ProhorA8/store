require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

leon = Movie.new(price: 990, amount: 5)

puts "Фильм Леон стоит #{leon.price} руб."
