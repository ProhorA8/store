class Cart
  attr_reader :products

  def initialize(products = [])
    @products = products
  end

  def add_item(product)
    @products << product
  end

  def show_amount
    @products.sum { |product| product.price }
  end

  def buy_amount
    @products.size
  end

  def current_cart
    products.tally.map.with_index(1) do |(product, quantity), id|
      "#{id}. #{product.class}. #{product.title}. #{product.price} руб. x #{quantity} = #{product.price * quantity} руб."
    end
  end
end
