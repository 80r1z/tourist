class Ways

  @@ways

  def self.find_next(to)
    @to = to
    end

  end


  def self.find_ways(flights)
    @@ways = []
    @flights = flights
    @flights.each do |flight|
      if flight.from == 'A'
        @@ways << flight if flight.to == 'Z'
        #_next = find_next(flight.to)
      end
    end
    binding.pry
  end


end
