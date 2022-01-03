require './question'

class Player

  attr_accessor :lives
  attr_accessor :name

  def initialize(name)
    @name = name
    @lives= 3
  end

  def lives_lose
    @lives -= 1
  end  

  def is_dead
    @lives == 0
  end
  
  # Checks if the answer given by the player is correct and deducts his live count if answer is wrong
  def question
    question=Question.new
    correct = question.generate(name)
    user = gets.chomp.to_i
    if (user == correct)
      puts "#{name}: Yes! You are Correct"
    else
      puts "#{name}: Seriously? No!"
      lives_lose
    end 
  end
end