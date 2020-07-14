class Project
    attr_accessor :name, :goal, :funds
    def initialize(name, goal, funds = 0)
        @name = name.capitalize
        @goal = goal
        @funds = funds
    end
    
    def to_s
        "Project #{@name} has #{@funds} dollars in funding towards its goal of #{@goal} dollars."
    end

    def addFunds(number)
        puts "#{number} dollars were added to project #{@name}"
        @funds += number 
    end

end
