require 'believe/version'
require 'engtagger'
require 'dogeify'

# This is amazing gem's beautiful class
module Believe
  # Your code goes here...
  def self.process(str)
    dogeify = Dogeify.new
    dogeify.process(str)
  end
end
