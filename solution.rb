require 'pry'

  class InputFile
    attr_accessor :test_cases, :total_lines, :file, :array
    def initialize(filename)
      @filename = filename
      @string = File.open("#{filename}.txt").read
      @test_cases = @string.lines.first.to_i
      @total_lines = self.total_of_lines
    end

    def action
      file = File.new("#{@filename}.txt",'r')
      file.each_line do |line|
        string = line.dump.to_s
        @array =  string.split(" ")
      end
      file.close
      puts "------------------------------"
      cont = -1
      File.open("#{@filename}.txt") do |file|
        while line = file.gets do
          cont+=1;
            @array[cont] = line.split(" ") if line.to_i != 0
        end
      end
    end

    def total_of_lines
      @total = 0
      @file2 = File.new("#{@filename}.txt",'r')
      @file2.each do |line|
        @total = @total + 1
      end
      @file2.close
      @total
    end

  end

    


  test = InputFile.new('sample-input')

  #for i in 3..test.total_lines
    #puts i
  #end


binding.pry
file.close
