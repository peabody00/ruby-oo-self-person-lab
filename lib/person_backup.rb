require 'pry'
class Person
    attr_accessor :bank_account, :happiness, :hygiene

    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness
        @happiness.clamp(0, 10)       
    end
    
    def hygiene
        @hygiene.clamp(0, 10)
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness = @happiness + 2 
        @hygiene = @hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        new_friend = Person.new(friend)
        @happiness = @happiness + 3
        #still need to figure out how to run happiness method to make sure number is less than 0 or greater than 10
        new_friend.happiness = self.happiness + 3
        return "Hi #{new_friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            #both people get sadder
            @happiness = @happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness = @happiness + 1
            #both people get happier
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end
# binding.pry