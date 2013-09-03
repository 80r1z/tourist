require 'pry'

  class InputFile
    attr_accessor :test_cases, :total_lines, :file
    def initialize(filename)
      @filename = filename
      @string = File.open("#{filename}.txt").read
      @test_cases = @file.lines.first.to_i
      @total_lines = self.total_of_lines
    end

    def action
      file = File.new('#{@filename}.txt','r')
      file.each_line do |line|
        binding.pry
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

  for i in 3..test.total_lines
    puts i
  end


binding.pry
file.close
