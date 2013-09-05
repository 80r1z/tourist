class Ways
  attr_accessor :ways_collection , :aux_arr, :flights_collection
  GOAL = 'Z'
  def initialize (collection)
    @flights_collection = collection
    @first = 'A'
    @ways_collection = []
    @aux_arr = []
    bubble_sort
    find_the_way
  end

  def bubble_sort
    for i in 0..(@flights_collection.length - 1)
      for j in 0..(@flights_collection.length - 1)
        if @flights_collection[i].departure < @flights_collection[j].departure
          aux = @flights_collection[i]
          @flights_collection[i] = @flights_collection[j]
          @flights_collection[j] = aux
        end
      end
    end

  end

  def find_the_way
    @flights_collection.each do |flight|
      if (flight.to == GOAL) && (flight.from == 'A')
        @aux_arr << flight
        push_ways_collection
      else
        if (flight.from == @first) && (flight.from != GOAL)
          @aux_arr << flight
          @first = flight.to
        end
      end
    end

  end

  def push_ways_collection
    @ways_collection << @aux_arr
    @first = 'A'
    @aux_arr = []
  end


end
