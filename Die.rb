require_relative 'auditable'
class Die
  include Auditable 
    attr_reader :number
    attr_accessor :sides
    def initialize(sides=6)
      @sides = sides
    end
  
    def roll
      @number = rand (1..@sides)
      audit
      @number
    end
end



