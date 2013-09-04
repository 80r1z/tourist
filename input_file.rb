class InputFile
  attr_accessor :array
  START_LINE = 2

  def initialize(file_name)
    @file_name = file_name
    self.getArray
  end

  def getArray
    File.open("#{@file_name}.txt") do |file|
      @array = []
      count = 0
      while line = file.gets do
        @array[count] = line.split(" ")
        count = count + 1
        print @array[count]
      end
    end
  end

end
