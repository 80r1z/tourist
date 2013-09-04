class InputFile
  attr_accessor :file_name, :array, :flights

  def initialize(file_name)
    @file_name = file_name
    getArray
  end
  
  def getArray
    @array        = []
    @flights      = []
    count_array   = 0

    File.open("#{@file_name}.txt") do |file|
      while line = file.gets do
        @array[count_array] = line.split(' ')
          if @array[count_array].length == 5
            @array[count_array].each_slice(5) {|from, to, departure, arrival, price| @flights << Flight.new(from, to, departure, arrival, price)}
          end
        count_array += 1
      end
    end
  end



end
