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

  def question
    question=Question.new
    correct = question.generate(name)
    user = gets.chomp.to_i
    question.verify(user, correct, name)
  end
end