require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

products = []

products << Movie.new(title: "Леон", year: "1994", director: "Люк Бессон", price: 990, amount: 5)
products << Movie.new(title: "Дурак", year: "2014", director: "Юрий Бык", price: 390, amount: 1)
products << Book.new(title: "Идиот", genre: "роман", author: "Фёдор Достоевский", price: 1500, amount: 10)

puts "Вот какие товары у на есть:"
puts
products.each { |product| puts product }
