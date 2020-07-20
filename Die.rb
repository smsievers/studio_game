class Die
    attr_reader :number
    attr_accessor :sides
    def initialize
      roll
      
    end
  
    def roll
      @number = rand 1..6
      puts "#{@number}"
    end
end


