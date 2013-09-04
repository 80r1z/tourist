class Flight
  attr_accessor :from, :to, :departure, :arrival, :price
  def initialize(from, to, departure, arrival, price)
    @from, @to, @departure, @arrival, @price = from, to, departure, arrival, price
  end

end
