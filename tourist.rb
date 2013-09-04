require 'pry'
require_relative 'input_file'
require_relative 'flights'
require_relative 'way'


a = InputFile.new('sample-input')

flag = 0
flights = []

for i in 0..(a.array.length-1)
  if a.array[i].length == 5
    a.array[i].each_slice(5) {|from, to, departure, arrival, price| flights << Flight.new(from, to, departure, arrival, price)}
  end
end

start_range = 0
end_range = 0

for i in 0..(a.array.length-1)
  if (a.array[i].length == 5) && (a.array[i-1].length == 1)
    flights_num =  a.array[i-1][0].to_i 
    end_range = end_range + (flights_num - 1)
    Ways.find_ways(flights[start_range..end_range])
    start_range = end_range + 1
  end
end

pp a.array.length
binding.pry
