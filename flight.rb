class Flight
  attr_accessor :from, :to, :departure, :arrival, :price

  def initialize(from, to, departure,arrival, price)
    @from, @to, @departure, @arrival, @price = from, to, Time.parse(departure) , Time.parse(arrival), price.to_f
  end

end
