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

    def add_funds(number)
        puts "#{number} dollars were added to project #{@name}"
        @funds += number 
    end

    def withdraw_funds(number)
        puts "#{number} dollars were removed from project #{@name}"
        @funds -= number
    end
end

class Category
    def initialize(title)
        @title = title
        projects = []
    end

    def add_project(project)
        projects.push(project)
    end
    
    def display
        puts "There are #{@projects.size} in the #{@title} category."
    end
end
