# your code goes here

class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, amount = 25,  level = 8 , hygiene = 8)
        @name = name
        @bank_account = amount
        @happiness = level
        @hygiene = hygiene
    end

    def happiness=(happiness)
    if happiness <= 10 && happiness >= 0
        @happiness = happiness
    elsif happiness > 10
        @happiness = 10
    else @happiness = 0
    end
    end
    
    def hygiene=(hygiene)
    if hygiene <= 10 && hygiene >= 0
        @hygiene = hygiene
    elsif hygiene > 10
        @hygiene = 10
    else @hygiene = 0
    end
end

    def happy? 
        if @happiness > 7
            return true
        else return false
        end
    end

    def clean? 
        if @hygiene > 7
            return true
        else return false
        end
    end

    def get_paid(amount)
        @bank_account = @bank_account + amount
        return "all about the benjamins"
    end

    def take_bath
        # if @hygiene+4 > 10
        #     @hygiene = 10
        # else
        # @hygiene = @hygiene +4
        # end
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
    return "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end
end

new_person = Person.new("Bob")

john = Person.new("John")

# p new_person.happiness

p new_person.start_conversation(john, "sports")

# p new_person.happiness

