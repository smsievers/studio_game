module Playable
    def wOOt
        self.health += 15
        puts "#{name} got wOOted!"
    end

    def blam
        self.health -= 10
        puts "#{name} got blammed!"
    end

    def strong?
        health > 100
    end
end