class Die
    attr_reader :number
    attr_accessor :sides
    def initialize(sides)
      @sides = sides
    end
  
    def roll
      @number = rand (1..@sides)
    end
end



