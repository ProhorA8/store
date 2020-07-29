class Cart
  attr_reader :products

  def initialize(products = [])
    @products = products
  end

  def add_item(product)
    @products << product
  end

  def total
    @products.sum(&:price)
  end

  def size
    @products.size
  end

  def to_s
    products.tally.map.with_index(1) do |(product, quantity), id|
      "#{id}. #{product.class}. #{product.title}. #{product.price} руб. x #{quantity} = #{product.price * quantity} руб."
    end.join("\n")
  end
end
