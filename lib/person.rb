
class Person

  attr_writer :happiness, :hygiene
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      happiness = 10
    elsif @happiness < 0
      happiness = 0
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene > 10
      hygiene = 10
    elsif @hygiene < 0
      hygiene = 0
    else
      @hygiene
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when 'politics'
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    when 'weather'
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
