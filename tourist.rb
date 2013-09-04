require 'pry'
require_relative 'input_file'
require_relative 'flights'


a = InputFile.new('sample-input')

flag = 0
flights = []

for i in 0..(a.array.length-1)
  if a.array[i].length == 5
    flights_nums = a.array[i-1][0].to_i if flag == 0
    flag = 1
    for j in 1..flights_nums
      a.array[i].each_slice(5) {|from, to, departure, arrival, price| flights << Flight.new(from, to, departure, arrival, price)}
    end
  end
end


pp a.array.length
binding.pry
