require 'pry'
class Person
    attr_accessor :bank_account

    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness
        @happiness.clamp(0, 10)
    end    

    
    def happiness=(happiness)
        @happiness = happiness
    end

    def hygiene
        @hygiene
        @hygiene.clamp(0, 10)
    end
    
    def hygiene=(hygiene)
        @hygiene = hygiene
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
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness = @happiness + 2 
        @hygiene = @hygiene - 3
        self.happiness=(@happiness)
        self.hygiene=(@hygiene)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        new_friend = Person.new(friend)
        @happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        self.happiness=(@happiness)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            @happiness = @happiness - 2
            self.happiness=(@happiness)
            person.happiness = person.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness = @happiness + 1
            self.happiness=(@happiness)
            person.happiness = person.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end
# binding.pry