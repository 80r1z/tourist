require 'time'
require 'pry'

require_relative 'flight'
require_relative 'input_file'
require_relative 'ways'

collection = InputFile.new('sample-input')

collection2 = Ways.new(collection.flights)

binding.pry
