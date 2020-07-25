require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

products = []

movie = Movie.new(title: "Леон", director: "Люк Бессон", price: 990)
movie.year = 1994
movie.update(amount: 5)

products << Movie.new(title: "Дурак", year: "2014", director: "Юрий Бык", price: 390, amount: 1)

book = Book.new(title: "Идиот", genre: "роман", amount: 10)
book.author = "Федька Достоевский"
book.update(author: "Фёдор Достоевский", price: 1500)
puts "Вот какие товары у на есть:"
puts
puts movie
puts book
