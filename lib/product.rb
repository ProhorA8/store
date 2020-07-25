class Product
  attr_reader :price, :amount

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end

  def to_s
    "#{@price} руб. (осталось #{@amount})"
  end

  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]
  end

  def self.form_file(file_path)
    raise NotImplementedError
  end
end
