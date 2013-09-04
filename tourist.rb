require 'pry'

    START = 2

    File.open("sample-input.txt") do |file|
      @array = []
      count = 0
      while line = file.gets do
        @array[count] = line.split(" ")
        count = count + 1
      end
    end

    @test_cases = @array[1][0].to_i
  cont = 0

  for i in START..(@array.length-1)
    if @array[i].length > 1
      cont = @array[i][0]
      for j in 0..(@array[i].length - 1)
        print @array[i][j] + " "
      end
      print "\n"
    end
  end


