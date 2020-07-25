require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

current_path = File.dirname(__FILE__ )
movie = Movie.form_file(current_path + "/data/movie/01.txt")
book = Book.form_file(current_path + "/data/book/01.txt")

puts movie
puts book

begin
  Product.form_file(current_path + "/data/movie/01.txt")
rescue NotImplementedError
  puts "Метод класса Product.form_file не реализован"
end
